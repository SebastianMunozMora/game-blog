import sys

args = sys.argv

if len(args) > 1:
    inputs = args[1:]
else:
    inputs = (
    '... . -... .- ... - .. .- -.  -- ..- -. --- --..  .---- ----. ----. ...--', # Sebastian Munoz 1993
    '-.-. --- -.. .  .. -.  .--. -.-- - .... --- -.' # code in python
    )



morseDictionary = (
    ('E', 'T'),
    (
        ('I', 'A'),
        (
            ('S', 'U'),
            (
                ('H', 'V'),
                (('5', '4'), (), ()),
                (('', '3'), (), ())
            ),
            (
                ('F', 'uu'),
                (('', ''), (), ()),
                (('', '2'), (), ())
            )
        ),
        (
            ('R', 'W'),
            (('L')),
            (
                ('P', 'J'),
                (('', ''), (), ()),
                (('', '1'), (), ())
            )
        )
    ),
    (
        ('N', 'M'),
        (
            ('D', 'K'),
            (
                ('B', 'X'),
                (('6', ''), (), ()),
                (('', ''), (), ())
            ),
            (('C', 'Y'),
                (('', ''), (), ()),
                (('', ''), (), ())
            )
        ),
        (
            ('G', 'O'),
            (
                ('Z', 'Q'),
                (('7', ''), (), ()),
                ((), (), ())
            ),
            (
                ('', ''),
                (('8', ''), (), ()),
                (('9', '0'), (), ())
            )
        )
    )
)

tree = list(morseDictionary)

def interpretSignal(signal):

    output = {
        'outChar': '',
        'tree': tree
    }

    if(signal == ''):
        output['outChar'] = ' '

    for sign in signal:

        if(sign == ''):
            output['outChar'] = ' '
            output['tree'] = tree

        if (sign == '.' and len(output['tree']) > 1):

            output['outChar'] = output['tree'][0][0] if len(output['tree'][0]) > 0 else '' 
            output['tree'] = output['tree'][1] if len(output['tree']) > 0 else '' ## Error?

        if (sign == '-' and len(output['tree']) > 1):

            output['outChar'] = output['tree'][0][1] if len(output['tree'][0]) > 0 else '' 
            output['tree'] = output['tree'][2] if len(output['tree']) > 2 else '' ## Error

    return output['outChar']

def interpretMessage(message):
    chars = message.split(' ')
    outChar = ''

    for char in chars:
        outChar += interpretSignal(char)
    
    return outChar

for input in inputs:
    print(input.split(' '))
    try:
        print(interpretMessage(input))
    except:
        print('Invalid Input')
