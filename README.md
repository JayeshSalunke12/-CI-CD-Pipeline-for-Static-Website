# CI/CD Pipeline for Static Website 🚀

This project demonstrates the **automated deployment** of a static website using a **Jenkins CI/CD pipeline**, containerized with **Docker**, and deployed on a **Kubernetes cluster** on **AWS EKS**. It showcases end-to-end automation for development, testing, and deployment, leveraging **GitHub**, **Docker Hub**, and **AWS**.

## Project Overview 🛠️

The aim of this project is to automate the entire deployment process of a static website using Jenkins, Docker, and Kubernetes, ensuring a robust and efficient workflow.

### Key Features:
- **CI/CD Pipeline with Jenkins**: Automated build, test, and deployment process.
- **Dockerized Application**: Containerized the static website to ensure consistency across environments.
- **Kubernetes on AWS EKS**: Scalable and resilient deployment of containers using a managed Kubernetes service.
- **Integrated with Docker Hub**: For easy management and storage of Docker images.
- **Version Control with GitHub**: Automated trigger of CI/CD pipeline with every push to the repository.

## Tech Stack 💻

- **Jenkins**: Continuous Integration and Continuous Deployment (CI/CD).
- **Docker**: Application containerization.
- **Kubernetes (EKS)**: Orchestration and deployment of Docker containers.
- **AWS**: Cloud infrastructure.
  - **EKS**: Managed Kubernetes service for container orchestration.
  - **Amplify Hosting**: Hosting for seamless deployment.
- **GitHub**: Source code management and version control.
- **Docker Hub**: Image repository for managing Docker images.

## Architecture 🏗️

1. **Source Code Management**:
    - The code is hosted on GitHub. Every push to the repository triggers the Jenkins pipeline.

2. **CI/CD Pipeline**:
    - Jenkins fetches the latest code from GitHub.
    - Jenkins builds the Docker image for the static website.
    - The Docker image is pushed to Docker Hub.
    - Jenkins deploys the application to the Kubernetes cluster on AWS EKS.

3. **Containerization**:
    - Docker is used to package the application into a container, ensuring consistency between development, testing, and production environments.

4. **Kubernetes Deployment**:
    - The Docker container is deployed to a Kubernetes cluster on AWS EKS for scalability and fault tolerance.

## Setup and Installation ⚙️

To run this project locally or in your environment, follow these steps:

### Prerequisites:

- [Jenkins](https://www.jenkins.io/) installed and configured.
- [Docker](https://www.docker.com/) installed.
- [AWS CLI](https://aws.amazon.com/cli/) configured.
- Access to an AWS account for EKS and Docker Hub account for image management.
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) installed.

### Steps:

1. **Clone the repository**:
    ```bash
    git clone https://github.com/yourusername/your-repo-name.git
    cd your-repo-name
    ```

2. **Build and Push Docker Image**:
    - In Jenkins, the pipeline builds the Docker image and pushes it to Docker Hub.
    
3. **Deploy to Kubernetes**:
    - Jenkins deploys the Docker container to AWS EKS using `kubectl`.

## Pipeline Stages 🌀

The Jenkins pipeline is structured into the following stages:

1. **Checkout**: Clones the latest code from GitHub.
2. **Build**: Creates the Docker image for the static website.
3. **Test**: Optionally runs tests (you can expand this stage for unit testing, etc.).
4. **Push**: Pushes the Docker image to Docker Hub.
5. **Deploy**: Deploys the Docker container to the Kubernetes cluster on AWS EKS.

## Demo 🎥

![CI/CD Pipeline Workflow](https://your-image-link.com)  
*(You can add a relevant architecture diagram or demo gif/video here)*

## Lessons Learned 📚

- **Automating deployment pipelines** speeds up the development lifecycle.
- Using **Kubernetes** with **AWS EKS** ensures scalable and reliable infrastructure for containers.
- **Docker** simplifies the process of containerizing applications and managing dependencies.
- Jenkins' **pipeline as code** approach provides flexibility and control over CI/CD workflows.

## Future Enhancements 🔮

- Integrate with **Prometheus** and **Grafana** for monitoring and alerting.
- Add **unit tests** and **integration tests** to the CI pipeline.
- Implement **canary deployments** for smoother updates to the production environment.


