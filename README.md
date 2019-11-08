# Docker 실전 연습 
### Installation
<pre>
cd /home
git clone https://github.com/gzone2000/docker-practice.git
cd docker-practice
</pre> 
### Run
<pre>
# Login For Private Docker Repository
docker login
docker pull docker push gzone2000/docker-practice
docker run -p 80:80 -v /home/docker-practice/project:/var/www/html gzone2000/docker-practice
</pre>
