if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Shubhamdev89/URL-Shortener-V2.git /URL-Shortener-V2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /URL-Shortener-V2
fi
cd /URL-Shortener-V2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
