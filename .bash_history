sudo apt update && sudo apt upgrade -y
sudo apt install -y docker.io
sudo systemctl enable docker
sudo usermod -aG docker ubuntu
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl && sudo mv kubectl /usr/local/bin/
sudo apt install -y openjdk-11-jdk
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update && sudo apt install -y jenkins
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo rm -f /usr/share/keyrings/jenkins-keyring.asc
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install -y jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
sudo journalctl -u jenkins --no-pager --lines=50
sudo apt update
java -version
sudo update-alternatives --config java
apt search openjdk
sudo apt update
java -version
sudo add-apt-repository ppa:openjdk-r/ppa -y
java -version
sudo add-apt-repository --remove ppa:openjdk-r/ppa
wget http://ftp.debian.org/debian/pool/main/o/openjdk-17/openjdk-17-jdk_17.0.10+7-1_amd64.deb
sudo dpkg -i openjdk-17-jdk_17.0.10+7-1_amd64.deb
echo "deb http://security.ubuntu.com/ubuntu jammy-security main" | sudo tee /etc/apt/sources.list.d/jdk-17.list
sudo apt update
sudo apt install -y openjdk-17-jdk
java -version
sudo update-alternatives --config java
sudo systemctl restart jenkins
sudo systemctl status jenkins
sudo netstat -tulnp | grep :80
sudo apt update
sudo ufw status
sudo ufw allow 80
sudo netstat -tulnp | grep :80
sudo systemctl status apache2
sudo apt update
sudo apt install -y apache2
sudo reboot
uptime
uname -r
sudo systemctl enable apache2
sudo systemctl start apache2
sudo systemctl status apache2
sudo netstat -tulnp | grep :80
sudo ufw allow 80
sudo ufw reload
sudo ufw status
sudo systemctl status apache2
sudo netstat -tulnp | grep :80
curl -4 ifconfig.co
curl http://169.254.169.254/latest/meta-data/public-ipv4
dig +short myip.opendns.com @resolver1.opendns.com
sudo systemctl status apache2
sudo reboot
sudo journalctl -u apache2 --no-pager --lines=50
sudo systemctl restart apache2
sudo reboot
curl -I http://localhost
ip a
curl -I http://google.com
curl -I http://your-ec2-public-ip
curl -I http://34.229.193.128
sudo cat /etc/apache2/sites-enabled/000-default.conf
curl http://169.254.169.254/latest/meta-data/public-ipv4
sudo tcpdump -n port 80
curl http://169.254.169.254/latest/meta-data/public-ipv4
sudo tcpdump -n port 80
sudo systemctl restart apache2
curl -I http://https://44.218.91.192/
sudo systemctl status jenkins
sudo netstat -tulnp | grep :8080
sudo nano /etc/default/jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
mkdir -p ~/express-app-0001/{controllers,models,routes,services}
cd ~/express-app-0001
touch server.js package.json
touch routes/exampleRoute.js controllers/exampleController.js services/exampleService.js models/exampleModel.js
touch server.js package.json Dockerfile .dockerignore
nano server.js
nano routes/exampleRoute.js
ls
mkdir -p ~/express-app-0001/{controllers,models,routes,services}
ls
mkdir routes
ls
mkdir controllers
mkdir models
mkdir services
nano routes/exampleRoute.js
nano controllers/exampleController.js
nano routes/exampleRoute.js
nano controllers/exampleController.js
nano services/exampleService.js
nano models/exampleModel.js
nano package.json
nano Dockerfile
nano .dockerignore
docker build -t express-app-0001:v1.0 .
docker run -d -p 3000:3000 --name express-app-0001-container express-app-0001
docker run -d -p 3000:3000 --name express-app-0001-container express-app-0001:v1.0
docker ps
docker ps -a
docker logs express-app-0001-container
nano server.js
docker build -t express-app-0001:v1.0 .
docker run -d -p 3000:3000 --name express-app-0001-container express-app-0001:v1.0
docker rm express-app-0001-container
docker run -d -p 3000:3000 --name express-app-0001-container express-app-0001:v1.0
docker ps -a
curl http://localhost:3000
