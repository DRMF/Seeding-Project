bob = "memes\nbanana"
i = 0
while i < len(bob) - 1:
    if bob[i:i + 1] == '\n':
        bob = bob[:i] + bob[i+1:]
    else:
        i += 1
print bob