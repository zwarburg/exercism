def hey(phrase):
    phrase = phrase.strip()
    if not phrase:
        return 'Fine. Be that way!'
    if phrase == phrase.upper() and phrase != phrase.lower():
        print('TRUE')
        if phrase[len(phrase)-1] == '?':
            return "Calm down, I know what I'm doing!"
        else:
            return 'Whoa, chill out!'
    if phrase[len(phrase)-1] == '?':
        return 'Sure.'
    return 'Whatever.'
