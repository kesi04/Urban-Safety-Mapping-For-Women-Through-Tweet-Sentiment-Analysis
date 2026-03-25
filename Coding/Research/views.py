from django.db.models import Count
from django.shortcuts import render, redirect


# Create your views here.
from Client.models import Userregister_Model, TweetModel, Feedback_Model


def admin_login(request):
    if request.method == "POST":
        admin = request.POST.get('admin')
        password = request.POST.get('password')
        if admin == "admin" and password == "admin":
            request.session['is_admin'] = True
            return redirect('admin_viewpage')

    return render(request, 'research/admin_login.html')


def admin_viewpage(request):
    obj = Userregister_Model.objects.all()
    return render(request, 'research/admin_viewpage.html', {'object': obj})


def admin_viewfeedback(request):
    obj = Feedback_Model.objects.all()
    return render(request, 'research/admin_viewfeedback.html', {'objects': obj})


def admin_viewtrending(request):
    topic = TweetModel.objects.values('topics').annotate(dcount=Count('topics')).order_by('-dcount')
    return render(request, 'research/admin_viewtrending.html', {'objects': topic})


def _get_sentiment_data():
    """Shared helper to build sentiment data dictionary for chart views."""
    dd = {}
    topic = TweetModel.objects.values('topics').annotate(dcount=Count('topics')).order_by('-dcount')
    for t in topic:
        topics = t['topics']
        pos, neg, neu = 0, 0, 0
        pos_count = TweetModel.objects.filter(topics=topics).values('sentiment').annotate(topiccount=Count('topics'))
        for pp in pos_count:
            senti = pp['sentiment']
            if senti == 'positive':
                pos = pp['topiccount']
            elif senti == 'negative':
                neg = pp['topiccount']
            elif senti == 'neutral':
                neu = pp['topiccount']
        dd[topics] = [pos, neg, neu]
    return topic, dd


def viewtreandingtopics(request, chart_type):
    topic, dd = _get_sentiment_data()
    return render(request, 'research/viewtreandingtopics.html', {'object': topic, 'dd': dd, 'chart_type': chart_type})


def negativefeedbacktivechart(request, chart_type):
    topic, dd = _get_sentiment_data()
    return render(request, 'research/negativefeedbacktivechart.html', {'object': topic, 'dd': dd, 'chart_type': chart_type})