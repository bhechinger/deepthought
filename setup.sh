# run before doit
sudo apt update
sudo apt full-upgrade -y
sudo apt install -y ansible git python3-pip
mkdir projects
cd projects
git clone https://github.com/bhechinger/deepthought.git
cd deepthought

if ! test -f "${HOME}/projects/deepthought/secrets.yaml"; then
  echo "Please place secrets.yaml into ~/projects/deepthought then press ENTER to continue"
  read
fi

./doit

sudo apt autoremove -y