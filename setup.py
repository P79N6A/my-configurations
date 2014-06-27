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

def setup_bash(config_file, content):
    f = open(home_dir+'/'+config_file,'r+')
    contents = f.read()
    print(contents)
    contents = contents +  content
    f.write(contents)
    f.close()

#Setup bash configuration
setup_bash('.profile', '#Add for shared bash configuration\nif [ -f ~/.bash_profile_share ]; then\n    source ~/.bash_profile_share\nfi\n')
#Setup vim configuration
setup_bash('.vimrc', '\n\n"Add for shared vimrc configuration\nsource .vimrc_share\n')
