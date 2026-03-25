import csv
import random
import os
from datetime import datetime, timedelta

# Create the folder if it doesn't exist
output_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'csv_dataset')
os.makedirs(output_dir, exist_ok=True)

# --- Generate Users ---
print("Generating users...")
first_names = ["Aarti", "Bhavna", "Chitra", "Deepa", "Esha", "Falguni", "Gauri", "Hina", "Isha", "Jyoti", "Kavya", "Lata", "Megha", "Neha", "Pooja", "Riya", "Sneha", "Tanvi", "Urvi", "Vidya", "Zara", "Aditi", "Anjali", "Diya", "Kriti"]
last_names = ["Sharma", "Verma", "Gupta", "Malhotra", "Singh", "Patel", "Reddy", "Rao", "Kumar", "Das", "Bose", "Jain", "Mehta", "Desai", "Joshi", "Iyer"]
states_cities = {
    "Maharashtra": ["Mumbai", "Pune", "Nagpur"],
    "Karnataka": ["Bangalore", "Mysore", "Mangalore"],
    "Delhi": ["New Delhi", "Dwarka"],
    "Tamil Nadu": ["Chennai", "Coimbatore"],
    "Telangana": ["Hyderabad", "Warangal"],
    "Gujarat": ["Ahmedabad", "Surat"]
}

users = []
for i in range(50):
    first_name = random.choice(first_names)
    last_name = random.choice(last_names)
    name = f"{first_name} {last_name}"
    email = f"{first_name.lower()}.{last_name.lower()}{random.randint(1,99)}@example.com"
    password = f"pass{random.randint(1000,9999)}"
    phoneno = f"9{random.randint(100000000, 999999999)}"
    state = random.choice(list(states_cities.keys()))
    city = random.choice(states_cities[state])
    address = f"{random.randint(1,100)}, Main Road, {city}"
    
    start_date = datetime.strptime('1980-01-01', '%Y-%m-%d')
    end_date = datetime.strptime('2005-12-31', '%Y-%m-%d')
    random_date = start_date + timedelta(days=random.randint(0, (end_date - start_date).days))
    dob = random_date.strftime('%Y-%m-%d')
    
    users.append({
        "name": name,
        "email": email,
        "password": password,
        "phoneno": phoneno,
        "address": address,
        "dob": dob,
        "country": "India",
        "state": state,
        "city": city
    })

with open(os.path.join(output_dir, 'users.csv'), 'w', newline='', encoding='utf-8') as f:
    writer = csv.DictWriter(f, fieldnames=users[0].keys())
    writer.writeheader()
    writer.writerows(users)

# --- Generate Tweets ---
print("Generating tweets...")
topics = ["WomenSafety", "SafeCity", "PublicTransport", "NightSafety", "StopHarassment", "WomenEmpowerment", "SafetyFirst"]

positive_templates = [
    "I feel much more comfortable taking the metro now due to increased security. #{topic}",
    "The new helpline for women is very responsive and helpful! #{topic}",
    "Great initiative by the local police to patrol streets at night. #{topic}",
    "Saw many CCTV cameras installed around my neighborhood today. Good job! #{topic}",
    "Self defense workshops are making a real difference. #{topic}",
    "Love the new app feature that lets me share my live location instantly. #{topic}",
    "Finally, safe transport options for late night workers are available! #{topic}",
    "Feeling positive about the recent changes in street lighting #women #{topic}",
    "The recent campaigns are really raising awareness. Excellent work. #{topic}"
]

negative_templates = [
    "It is still very unsafe to walk alone on these dimly lit streets. #{topic}",
    "Harassment in public buses needs to stop. This is the worst. #{topic}",
    "Nothing has improved. Police presence is almost non-existent at night. #{topic}",
    "I can't believe how bad the situation is in some neighborhoods after 8 PM. #{topic}",
    "CCTV cameras are installed but most of them don't even work! Sad. #{topic}",
    "Reporting harassment is still a painful process. We need better systems. #{topic}",
    "Why are the streets so poorly lit? It makes me worry every time I go out. #{topic}",
    "Waste of money if the emergency buttons don't function properly. #{topic}"
]

neutral_templates = [
    "A new survey on safety was published today. #{topic}",
    "Government announces new budget for city infrastructure and safety. #{topic}",
    "Attended a seminar regarding personal safety. #{topic}",
    "Reading an article about the new guidelines for transport safety. #{topic}",
    "There are discussions about increasing night patrols. #{topic}"
]

tweets = []
for i in range(100):
    user = random.choice(users)
    sentiment_choice = random.choices(["positive", "negative", "neutral"], weights=[40, 40, 20])[0]
    topic = random.choice(topics)
    
    if sentiment_choice == "positive":
        tweet_text = random.choice(positive_templates).format(topic=topic)
    elif sentiment_choice == "negative":
        tweet_text = random.choice(negative_templates).format(topic=topic)
    else:
        tweet_text = random.choice(neutral_templates).format(topic=topic)
        
    tweets.append({
        "username": user["name"],
        "tweet": tweet_text,
        "topics": topic,
        "sentiment": sentiment_choice
    })

with open(os.path.join(output_dir, 'tweets.csv'), 'w', newline='', encoding='utf-8') as f:
    writer = csv.DictWriter(f, fieldnames=tweets[0].keys())
    writer.writeheader()
    writer.writerows(tweets)

# --- Generate Feedback ---
print("Generating feedback...")
feedback_templates = [
    "The UI is easy to use and the analysis is very clear.",
    "Please add more topics to the trending section.",
    "I faced some issues while uploading a tweet.",
    "Very informative dashboard for tracking safety metrics.",
    "Could we have a mobile app version of this platform?",
    "The sentiment analysis seems quite accurate, keep it up!",
    "It would be great to see city-wise filtering in the analysis graph.",
    "Amazing project, raising important issues regarding women's safety.",
    "There's a slight delay when loading the charts, maybe optimize that.",
    "Good job on making safety a priority."
]

feedbacks = []
for i in range(25):
    user = random.choice(users)
    feedbacks.append({
        "name": user["name"],
        "mobilenumber": user["phoneno"],
        "feedback": random.choice(feedback_templates)
    })

with open(os.path.join(output_dir, 'feedback.csv'), 'w', newline='', encoding='utf-8') as f:
    writer = csv.DictWriter(f, fieldnames=feedbacks[0].keys())
    writer.writeheader()
    writer.writerows(feedbacks)

print(f"Synthetic datasets generated successfully in {output_dir}")
