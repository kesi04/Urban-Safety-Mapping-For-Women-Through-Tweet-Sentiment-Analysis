"""
Populate the database with dummy data for demo purposes.
Run with: python populate_demo.py
"""
import os
import sys

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'Analysis_of_Women_Safety.settings')

import django
django.setup()

from Client.models import Userregister_Model, TweetModel, Feedback_Model

def populate():
    # Clear existing data
    TweetModel.objects.all().delete()
    Feedback_Model.objects.all().delete()
    Userregister_Model.objects.all().delete()

    print("Creating demo users...")
    users_data = [
        {"name": "Priya", "email": "priya@example.com", "password": "priya123",
         "phoneno": "9876543210", "address": "MG Road, Bangalore",
         "dob": "1998-05-15", "country": "India", "state": "Karnataka", "city": "Bangalore"},
        {"name": "Ananya", "email": "ananya@example.com", "password": "ananya123",
         "phoneno": "9123456789", "address": "Anna Nagar, Chennai",
         "dob": "1999-08-22", "country": "India", "state": "Tamil Nadu", "city": "Chennai"},
        {"name": "Sneha", "email": "sneha@example.com", "password": "sneha123",
         "phoneno": "9988776655", "address": "Banjara Hills, Hyderabad",
         "dob": "1997-12-10", "country": "India", "state": "Telangana", "city": "Hyderabad"},
        {"name": "Divya", "email": "divya@example.com", "password": "divya123",
         "phoneno": "9112233445", "address": "Connaught Place, Delhi",
         "dob": "2000-03-01", "country": "India", "state": "Delhi", "city": "New Delhi"},
        {"name": "Meera", "email": "meera@example.com", "password": "meera123",
         "phoneno": "9556677889", "address": "Marine Drive, Mumbai",
         "dob": "1996-07-18", "country": "India", "state": "Maharashtra", "city": "Mumbai"},
    ]

    users = []
    for data in users_data:
        user = Userregister_Model.objects.create(**data)
        users.append(user)
        print(f"  Created user: {user.name}")

    print("\nCreating demo tweets...")
    tweets_data = [
        # Positive tweets
        {"user": users[0], "tweet": "Women feel safe walking in well-lit areas with CCTV #WomenSafety",
         "topics": "WomenSafety", "sentiment": "positive"},
        {"user": users[1], "tweet": "Great initiative by police to provide safe escort services for women #SafeCity",
         "topics": "SafeCity", "sentiment": "positive"},
        {"user": users[2], "tweet": "Happy to see more women helplines being set up across cities #WomenEmpowerment",
         "topics": "WomenEmpowerment", "sentiment": "positive"},
        {"user": users[3], "tweet": "Excellent self-defense workshops organized at colleges #WomenSafety",
         "topics": "WomenSafety", "sentiment": "positive"},
        {"user": users[4], "tweet": "Love the new safety app that sends live location to family #SafetyFirst",
         "topics": "SafetyFirst", "sentiment": "positive"},
        {"user": users[0], "tweet": "Nice to see women-only buses during late night hours #PublicTransport",
         "topics": "PublicTransport", "sentiment": "positive"},

        # Negative tweets
        {"user": users[1], "tweet": "Unsafe streets with no lights in residential areas #WomenSafety",
         "topics": "WomenSafety", "sentiment": "negative"},
        {"user": users[2], "tweet": "Harassment cases not being reported due to fear of victim blaming #StopHarassment",
         "topics": "StopHarassment", "sentiment": "negative"},
        {"user": users[3], "tweet": "Worst thing is that many areas still have no CCTV coverage #SafeCity",
         "topics": "SafeCity", "sentiment": "negative"},
        {"user": users[4], "tweet": "Sad to see lack of police patrolling in isolated areas at night #WomenSafety",
         "topics": "WomenSafety", "sentiment": "negative"},
        {"user": users[0], "tweet": "Nothing has changed in terms of safety for women who work late #NightSafety",
         "topics": "NightSafety", "sentiment": "negative"},
        {"user": users[1], "tweet": "Bad infrastructure and poor lighting makes it unsafe for women #PublicTransport",
         "topics": "PublicTransport", "sentiment": "negative"},

        # Neutral tweets
        {"user": users[2], "tweet": "Survey conducted on women safety in metro cities #WomenSafety",
         "topics": "WomenSafety", "sentiment": "neutral"},
        {"user": users[3], "tweet": "Government announces new guidelines for public transport safety #PublicTransport",
         "topics": "PublicTransport", "sentiment": "neutral"},
        {"user": users[4], "tweet": "Discussion on women safety trends in India 2024 #WomenEmpowerment",
         "topics": "WomenEmpowerment", "sentiment": "neutral"},
    ]

    for data in tweets_data:
        TweetModel.objects.create(
            userId=data["user"],
            tweet=data["tweet"],
            topics=data["topics"],
            sentiment=data["sentiment"],
            images=""
        )
    print(f"  Created {len(tweets_data)} tweets")

    print("\nCreating demo feedback...")
    feedback_data = [
        {"name": "Priya", "mobilenumber": "9876543210",
         "feedback": "The analysis tool is very helpful in understanding safety trends."},
        {"name": "Ananya", "mobilenumber": "9123456789",
         "feedback": "Please add more cities for safety analysis."},
        {"name": "Sneha", "mobilenumber": "9988776655",
         "feedback": "Great platform for raising awareness about women safety issues."},
        {"name": "Divya", "mobilenumber": "9112233445",
         "feedback": "Would be nice to have real-time alerts and notifications."},
        {"name": "Meera", "mobilenumber": "9556677889",
         "feedback": "The sentiment analysis feature gives good insights on public opinion."},
    ]

    for data in feedback_data:
        Feedback_Model.objects.create(**data)
    print(f"  Created {len(feedback_data)} feedback entries")

    print("\n--- Demo Data Summary ---")
    print(f"Users: {Userregister_Model.objects.count()}")
    print(f"Tweets: {TweetModel.objects.count()}")
    print(f"Feedback: {Feedback_Model.objects.count()}")
    print("\nDemo credentials:")
    print("  User login: Priya / priya123")
    print("  Admin login: admin / admin")
    print("\nDone!")

if __name__ == "__main__":
    populate()
