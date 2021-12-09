from cx_Freeze import setup, Executable

base = None    

executables = [Executable("TextEditor.py", base=base)]

packages = ["idna"]
options = {
    'build_exe': {    
        'packages':packages,
    },    
}

setup(
    name = "Arvid's Text Editor",
    options = options,
    version = "4.20.69",
    description = '<any description>',
    executables = executables
)