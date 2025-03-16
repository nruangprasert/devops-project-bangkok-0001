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
sudo apt install awscli -y
aws configure
sudo apt update && sudo apt upgrade -y
sudo apt install awscli -y
sudo snap install aws-cli --classic
aws --version
aws configure
aws s3 ls
aws eks --region us-east-1 create-cluster --name devops-project-bangkok-0001-cluster --role-arn arn:aws:iam::devops-project-bangkok-0001:role/eksClusterRole --resources-vpc-config subnetIds=subnet-abc123,subnet-def456,securityGroupIds=sg-xyz789
aws sts get-caller-identity
aws eks --region us-east-1 create-cluster     --name devops-project-bangkok-0001-cluster     --role-arn arn:aws:iam::324037310749:role/eksClusterRole     --resources-vpc-config subnetIds=subnet-abc123,subnet-def456,securityGroupIds=sg-xyz789
aws ec2 describe-subnets --region us-east-1 --query "Subnets[*].{ID:SubnetId, VPC:VpcId, CIDR:CidrBlock}"
ws eks --region us-east-1 create-cluster --name devops-project-bangkok-0001-cluster --role-arn arn:aws:iam::324037310749:role/eksClusterRole --resources-vpc-config subnetIds=subnet-096c3136835cf0e9f,subnet-0e85d2ec34b1d28e0,subnet-0287ca712bcafa2e1,subnet-02071505fb9d0e882,subnet-06490013fea96c0d1,subnet-07e3f9a7f4737e453,securityGroupIds=sg-xyz789
aws eks --region us-east-1 create-cluster --name devops-project-bangkok-0001-cluster --role-arn arn:aws:iam::324037310749:role/eksClusterRole --resources-vpc-config subnetIds=subnet-096c3136835cf0e9f,subnet-0e85d2ec34b1d28e0,subnet-0287ca712bcafa2e1,subnet-02071505fb9d0e882,subnet-06490013fea96c0d1,subnet-07e3f9a7f4737e453,securityGroupIds=sg-xyz789aws eks --region us-east-1 create-cluster --name devops-project-bangkok-0001-cluster --role-arn arn:aws:iam::324037310749:role/eksClusterRole --resources-vpc-config subnetIds=subnet-096c3136835cf0e9f,subnet-0e85d2ec34b1d28e0,subnet-0287ca712bcafa2e1,subnet-02071505fb9d0e882,subnet-06490013fea96c0d1,subnet-07e3f9a7f4737e453,securityGroupIds=sg-xyz789
ws eks --region us-east-1 create-cluster --name devops-project-bangkok-0001-cluster --role-arn arn:aws:iam::324037310749:role/eksClusterRole --resources-vpc-config subnetIds=subnet-096c3136835cf0e9f,subnet-0e85d2ec34b1d28e0,subnet-0287ca712bcafa2e1,subnet-02071505fb9d0e882,subnet-06490013fea96c0d1,subnet-07e3f9a7f4737e453,securityGroupIds=sg-xyz789
aws eks --region us-east-1 create-cluster --name devops-project-bangkok-0001-cluster --role-arn arn:aws:iam::324037310749:role/eksClusterRole --resources-vpc-config subnetIds=subnet-096c3136835cf0e9f,subnet-0e85d2ec34b1d28e0,subnet-0287ca712bcafa2e1,subnet-02071505fb9d0e882,subnet-06490013fea96c0d1,subnet-07e3f9a7f4737e453,securityGroupIds=sg-xyz789aws eks --region us-east-1 create-cluster --name devops-project-bangkok-0001-cluster --role-arn arn:aws:iam::324037310749:role/eksClusterRole --resources-vpc-config subnetIds=subnet-096c3136835cf0e9f,subnet-0e85d2ec34b1d28e0,subnet-0287ca712bcafa2e1,subnet-02071505fb9d0e882,subnet-06490013fea96c0d1,subnet-07e3f9a7f4737e453,securityGroupIds=sg-xyz7892~aws eks --region us-east-1 create-cluster --name devops-project-bangkok-0001-cluster --role-arn arn:aws:iam::324037310749:role/eksClusterRole --resources-vpc-config subnetIds=subnet-096c3136835cf0e9f,subnet-0e85d2ec34b1d28e0,subnet-0287ca712bcafa2e1,subnet-02071505fb9d0e882,subnet-06490013fea96c0d1,subnet-07e3f9a7f4737e453,securityGroupIds=sg-xyz789aws eks --region us-east-1 create-cluster --name devops-project-bangkok-0001-cluster --role-arn arn:aws:iam::324037310749:role/eksClusterRole --resources-vpc-config subnetIds=subnet-096c3136835cf0e9f,subnet-0e85d2ec34b1d28e0,subnet-0287ca712bcafa2e1,subnet-02071505fb9d0e882,subnet-06490013fea96c0d1,subnet-07e3f9a7f4737e453,securityGroupIds=sg-xyz789sssasssa
aass
popox
aws eks --region us-east-1 create-cluster --name devops-project-bangkok-0001-cluster --role-arn arn:aws:iam::324037310749:role/eksClusterRole --resources-vpc-config subnetIds=subnet-096c3136835cf0e9f,subnet-0e85d2ec34b1d28e0,subnet-0287ca712bcafa2e1,subnet-02071505fb9d0e882,subnet-06490013fea96c0d1,subnet-07e3f9a7f4737e453,securityGroupIds=sg-xyz789
aws ec2 describe-subnets --region us-east-1 --query "Subnets[*].{ID:SubnetId, AZ:AvailabilityZone}"
aws eks --region us-east-1 create-cluster --name devops-project-bangkok-0001-cluster --role-arn arn:aws:iam::324037310749:role/eksClusterRole --resources-vpc-config subnetIds=subnet-096c3136835cf0e9f,subnet-0287ca712bcafa2e1,subnet-02071505fb9d0e882,subnet-06490013fea96c0d1,subnet-07e3f9a7f4737e453,securityGroupIds=sg-xyz789
aws eks --region us-east-1 create-cluster --name devops-project-bangkok-0001-cluster --role-arn arn:aws:iam::324037310749:role/eksClusterRole --resources-vpc-config subnetIds=subnet-096c3136835cf0e9f,subnet-0287ca712bcafa2e1,subnet-02071505fb9d0e882,subnet-06490013fea96c0d1,subnet-07e3f9a7f4737e453,securityGroupIds=sg-068dd6daad6c864bd
ws eks describe-cluster --region us-east-1 --name devops-project-bangkok-0001-cluster --query "cluster.status"
aws eks describe-cluster --region us-east-1 --name devops-project-bangkok-0001-cluster --query "cluster.status"
aws eks describe-cluster --region us-east-1 --name devops-project-bangkok-0001-cluster --query "cluster.status"
aws eks --region us-east-1 update-kubeconfig --name devops-project-bangkok-0001-cluster
mkdir k8s && cd k8s
nano deployment.yaml
docker image
dicker inspect
docker inspect
docker ls
docker --ls
docker images
nano deployment.yaml
kubectl apply -f deployment.yaml
git ls-remote https://github.com/nruangprasert/devops-project-bangkok-0001.git
sudo systemctl start jenkins
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo yum install git -y
sudo apt install git -y
git clone https://github.com/nruangprasert/devops-project-bangkok-0001.git
sudo su - jenkins -s /bin/bash
git commit -m "Test commit"git status
git init  # Initialize a new Git repository
git add .  # Stage all files
git commit -m "Initial commit"
git branch -M main  # Ensure we are using the main branch

git push -u origin main 
git remote remove origin
git push -u origin main
git fetch origin
git pull origin main --rebase
git push -u origin main
git grep -i "aws_access_key_id"
nano .aws/credentials
git rm --cached .aws/credentials
echo ".aws/credentials" >> .gitignore
git filter-branch --force --index-filter "git rm --cached --ignore-unmatch .aws/credentials" --prune-empty --tag-name-filter cat -- --all
git commit -am "Removed sensitive credentials"
git push --force origin main
git filter-branch --force --index-filter "git rm --cached --ignore-unmatch .aws/credentials" --prune-empty --tag-name-filter cat -- --all
git log -- .aws/credentials
git commit --amend --no-edit
git push --force origin main
echo ".aws/credentials" >> .gitignore
git add .gitignore
git commit -m "Added .aws/credentials to .gitignore to prevent future leaks"
git push origin main
sudo usermod -aG docker jenkins
sudo systemctl restart docker
sudo su - jenkins
sudo -i -u jenkins
sudo usermod -s /bin/bash jenkins
sudo su - jenkins
sudo chmod 666 /var/run/docker.sock
sudo chown root:docker /var/run/docker.sock
/run/docker.sock
sudo su -s /bin/bash jenkins
sudo reboot
