# cs-training-devops
Repository to practice many technologies and ways to show knowledge about those technologies. The main idea is delivery a product (documentation) about all the process and show the steps to create a container serving a documentation of all processes. 

Technologies
------------

* **Git** — Using git to create a repository and version control for all code developed. I used Github and Bitbucket to create a version control and manage this repository. This Github repository have integration with Dockerhub for every push in the *master* branch create a new build in Dockerhub repository.

* **Docker Containers** — The idea was delivery a web application as a final product. So using Docker I create a new image on Dockerhub that configures all stuff needed to run this application.

* **Write code samples in multiple languages** — If your API has bindings in multiple programming languages, you can easily put in tabs to switch between them. In your document, you'll distinguish different languages by specifying the language name at the top of each code block, just like with Github Flavored Markdown.


Running the Container
------------------------------

```shell
git clone https://github.com/cs-pedro-azevedo/cs-training-devops.git
cd cs-training-devops
docker run cspedroazevedo/cs-training-devops -p 4567:4567 -v slate/source:/app/slate/source
```


Repositories used to 
---------------------------------

* [Slate](https://github.com/tripit/slate)
* [Docker Slate](https://github.com/tutumcloud/slate)
* [Docker RBENV](https://github.com/tcnksm/dockerfile-rbenv)
