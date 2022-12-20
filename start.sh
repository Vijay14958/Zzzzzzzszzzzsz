if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Vijay14958/Mdiskautofilter-V5.git /Mdiskautofilter-V5
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Mdiskautofilter-V5
fi
cd /Mdiskautofilter-V5
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
