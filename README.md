# devops-intern-final
Name - N B Ritesh Varshan
<br>
Date - 16/11/2025
<br>
Project Description - An assignment for DevOps Intern.
<br>
1. Command to build the Docker image:
docker build -t hello-python .
<br>
2. Command to run the Docker container:
docker run --rm hello-python
<br>
3. Status badge for CI/CD workflow:
![CI](https://github.com/nbriteshvarshan/devops-intern-final/actions/workflows/ci.yml/badge.svg)
<br>
4. Command to run your Nomad job:
nomad job run nomad/DevOps.nomad
<br>
5. Command to check job status:
nomad job status DevOps
<br>
6. Command to start Loki:
docker run -d --name=loki -p 3100:3100 grafana/loki:latest
<br>
7. Forwarding Logs:
a. Created promtail-config.yaml
b. Ran Promtail using the command:
   docker run -d --name=promtail \
     -v /var/lib/docker/containers:/var/lib/docker/containers:ro \
     -v /etc/promtail:/etc/promtail \
     grafana/promtail:latest \
     -config.file=/etc/promtail/promtail-config.yaml
<br>
8. Viewing Logs:
a. Opened Grafana at http://localhost:3000.
b. Added Loki as a Data Source (URL: http://localhost:3100).
c. In Explore, ran:
   {job="dockerlogs"}
   to query and display log entries from my containers.
