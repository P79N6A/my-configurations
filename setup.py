import os

links = {
            "bash_profile_share": ".bash_profile_share", 
            "vimrc_share": ".vimrc_share",
            "gitconfig": ".gitconfig",
            "bin": ".bin"
        }

source_dir = os.getcwd()
home_dir = os.path.expanduser("~")
dst_dir = home_dir

for link in links:
    cmd = "ln -s "+source_dir+"/"+link+' ' + dst_dir+'/'+links[link]
    print(cmd)
    os.system(cmd)

def get_file_content(f):
    content = ''
    if os.path.exists(f):
        fi = open(f)
        content = fi.read()
        fi.close()
    return content

def setup_bash(config_file, content):
    contents = get_file_content(config_file)
    contents = contents+ content
    f = open(config_file, 'w')
    f.write(contents)
    f.close()

#Setup bash configuration
setup_bash(home_dir+'/.bash_profile', '\n\n#Add for shared bash configuration\nif [ -f ~/.bash_profile_share ]; then\n    source ~/.bash_profile_share\nfi\n')

#Setup vim configuration
setup_bash(home_dir+'/.vimrc', '\n\n"Add for shared vimrc configuration\nsource $HOME/.vimrc_share\n')
