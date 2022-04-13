# run before doit
sudo apt update
sudo apt install -y ansible git python3-pip
mkdir projects
cd projects
git clone https://github.com/bhechinger/deepthought.git
cd deepthought
./doit