cd
# Downloading the Massa cryptocurrency software version 2.1 release for Linux from GitHub.
echo "Downloading the Massa cryptocurrency software version 2.1 release for Linux from GitHub."
wget -O massa_MAIN.2.1 https://github.com/massalabs/massa/releases/download/MAIN.2.1/massa_MAIN.2.1_release_linux.tar.gz

# Waiting for the download to complete before proceeding.
echo "Waiting for the download to complete before proceeding."
wait

# Stopping the Massa daemon service to perform the update.
echo "Stopping the Massa daemon service to perform the update."
sudo systemctl stop massad

echo "Version before update: "
massa/massa-node/massa-node -V

# Extracting the contents of the downloaded Massa software archive.
echo "Extracting the contents of the downloaded Massa software archive."
tar xvzf massa_MAIN.2.1

# Waiting for the extraction process to finish.
echo "Waiting for the extraction process to finish."
wait

echo "Version after update: "
massa/massa-node/massa-node -V

# Starting the Massa daemon service after the update.
echo "Starting the Massa daemon service after the update."
sudo systemctl start massad

# Removing the downloaded Massa software archive to clean up.
echo "Removing the downloaded Massa software archive to clean up."
rm massa_MAIN.2.1
