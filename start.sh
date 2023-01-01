if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Vijay14958/Mdiskautofilter-V6.git /Mdiskautofilter-V6
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Mdiskautofilter-V6
fi
cd /Mdiskautofilter-V6
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
