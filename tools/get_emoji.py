import sys
emojis = []
with open('emojis_list', 'r') as f:
    emojis = f.readlines()

def get_emoji_from_str(s):
    for emoji in emojis:
        if (s in emoji) or (emoji in s):
            return emoji

if __name__ == "__main__":
    if len(sys.argv) <= 1:
        print("usage: python get_emoji.py 'smile'")
        sys.exit(1)
    emoji = get_emoji_from_str(str(sys.argv[1]))
    print (emoji)
