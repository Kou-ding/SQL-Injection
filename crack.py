import hashlib

# Known salt
salt = "h@ckMe!"

# List of hashed messages
encrypted_messages = [
    "93c222036aac1473c4f9240c1d0a5f07c0d1adf885364ad3a147c03ef942c136",
    "ed704a10f66853b3337eba68d4d47d7b",
    "Xw0wQ7sg9mVrMfLwLHlguiVWGXT+KtGv0scBJFLbsqsmJobXvyueozMQ8w9is/FXwsYDGbnsguTx8FZcyVnpg==",
    "mqbt7R3BbuSXPxqn/fTmFw==",
    "LxqggkMjtvHry8OOT5kIIUHA4BC6kd0dR9BNelpXT05mKNabb/ZsC8esGOo+JoQaCIYDu0sgsvV3RVxu1dknw==",
    "EQZY4wokK6/X9d2RrXPCo3tm2OaqFDPw7Tmhc2z4vZ9JINoE4pIVecfBD/PR76CZNbrXih0ljVvNBsLEWCkxA==",
    "bd85qWDuCwsQ6LB94mhRhFCrHIUDbxyX5hSYEoYgkcyZVFJsF7gEiwY48vHX+tuFj9rMgAb8KNNLczU/A2ZlA==",
    "9cbcefae5ee503e68fd9affa0d7178eee1f0bc9910b373ae9c10f1554c141776",
    "34fe56d277dbd4cd3173c01447fda57c",
    "0qY/rPYbsfDHlcp0xh+51LSnGakxINq73DN+2NRJbI="
]

# Load RockYou.txt file
plaintexts = []
with open('/home/kou/Downloads/rockyou.txt', 'r', encoding='latin-1') as file:
    # Read each line and strip any surrounding whitespace
    plaintexts = [line.strip() for line in file]

# Function to generate a salted hash
def hash_with_salt(salt, plaintext):
    combined = salt + plaintext
    return hashlib.sha256(combined.encode()).hexdigest()

# Brute-force to find matches
matches = []
for plaintext in plaintexts:
    hashed = hash_with_salt(salt, plaintext)
    if hashed in encrypted_messages:
        matches.append((plaintext, hashed))

# Output matches
print("Matches found:")
for match in matches:
    print(f"Plaintext: {match[0]} -> Hash: {match[1]}")
