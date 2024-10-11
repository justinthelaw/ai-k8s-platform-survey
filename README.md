# AI/ML Kubernetes Platform Survey

This is a repository to exeriment with AI/ML Kubernetes Platforms (MLOps, model development, etc.).

## Evaluation Criteria and Weights

Incorporating your real-world research and experimentation, we've refined the evaluation criteria and adjusted their weights:

1. **Security Features**: 20%
2. **Air-Gap Compatibility**: 20%
3. **Kubernetes Integration**: 20%
4. **OpenAI API Compatibility**: 15%
5. **Ease of Deployment and Maintenance**: 10%
6. **Additional Features**: 10%
7. **Scalability and Performance**: 5%

**Licensing**: **Pass/Fail** (Requirement: Permissive licensing allowing redistribution, packaging, and selling)

_Total Weight: 100%_

---

## List of Competitors

1. **KServe**
2. **Ray Serve** (with KubeRay)
3. **Triton Inference Server**
4. **Seldon Core**
5. **BentoML (with OpenLLM)**
6. **TorchServe**
7. **MLServer**
8. **Neural Magic**
9. **SkyPilot**

---

## Comparison Table

### **Table 1: Comparison of AI/ML Serving Platforms**

| **Criteria**                     | **Weight** | **KServe**                                          | **Ray Serve**                                      | **Triton Inference Server**                          | **Seldon Core**                                     | **BentoML (with OpenLLM)**                           | **TorchServe**                                      | **MLServer**                                        | **Neural Magic**                                    | **SkyPilot**                                        |
|----------------------------------|------------|-----------------------------------------------------|----------------------------------------------------|------------------------------------------------------|-----------------------------------------------------|------------------------------------------------------|-----------------------------------------------------|-----------------------------------------------------|-----------------------------------------------------|-----------------------------------------------------|
| **Licensing**                    | Pass/Fail  | **Pass** (Apache 2.0)                               | **Pass** (Apache 2.0)                              | **Pass** (BSD 3-Clause)                              | **Pass** (Apache 2.0)                               | **Pass** (Apache 2.0)                                | **Pass** (Apache 2.0)                               | **Pass** (Apache 2.0)                               | **Pass** (Apache 2.0)**                             | **Pass** (Apache 2.0)                               |
| **1. Security Features**         | 20%        | Strong security via Istio/Knative; supports mTLS    | Limited built-in; requires custom implementation   | Moderate security; supports TLS encryption           | Strong security via service mesh integration        | Basic security; supports TLS; extensible            | Basic security; supports SSL                         | Moderate security; relies on Kubernetes features     | Basic security; model compression focus             | Basic security; details not extensively documented  |
| **2. Air-Gap Compatibility**     | 20%        | Good; dependencies manageable offline               | Good; manual management of dependencies            | Good; can operate offline with pre-loaded models     | Good; images and models manageable offline          | Good; models and dependencies manageable offline    | Good; can operate offline with pre-loaded models     | Good; dependencies manageable offline               | Good; works on the edge                             | Good; supports Kubernetes                           |
| **3. Kubernetes Integration**    | 20%        | Kubernetes-native; uses CRDs                        | Improved; KubeRay operator enhances integration    | Supports Kubernetes via Helm charts                  | Kubernetes-native; uses CRDs                        | Minimal K8s support; potential issues with concurrency | Kubernetes support via Helm charts                  | Kubernetes-native; designed for microservices        | Limited K8s support; primarily edge-focused         | Kubernetes support; uses CRDs                       |
| **4. OpenAI API Compatibility**  | 15%        | Now supports OpenAI endpoints and embeddings        | **Yes; supports OpenAI API**                       | Not designed for OpenAI API compatibility            | Non-compliant endpoints; custom implementation needed | **Yes; provides OpenAI-compatible API out of the box** | No native support; custom implementation needed     | No native support; custom implementation needed     | Unknown; likely requires custom integration         | Unknown; primarily focused on LLM training          |
| **5. Ease of Deployment**        | 10%        | Moderate complexity; requires Istio/Knative, Kubeflow | Moderate complexity; requires Ray cluster setup    | Straightforward; containerized deployment            | Complexity due to Kafka requirement                 | High; user-friendly with CLI tools                  | Moderate; requires Docker and configuration files    | High; simple deployment with minimal dependencies    | Moderate; installation docs available               | Moderate; documentation available                   |
| **6. Additional Features**       | 10%        | Supports multiple ML frameworks; inference graphs; VLLM | Flexible; supports Whisper, VLLM, embeddings       | Supports multiple frameworks; optimized backends     | Inference graphs; advanced routing                  | Supports Whisper; model registry; VLLM; function calling | Optimized for PyTorch; model versioning              | Supports multiple frameworks; plugin architecture    | Model compression; quantization; sparsity           | Focused on LLMs; VLLM; AI training                  |
| **7. Scalability & Performance** | 5%         | Excellent scalability; optimized for K8s            | Scales up/down; handles queueing                   | High performance; optimized for GPUs                 | Auto-scaling; supports GPUs                         | May have issues with K8s parallelization            | Scalable; optimized for PyTorch models              | Scalable; designed for high performance              | Autoscaling; concurrency features                   | Scalability details not extensively documented      |

---

## Scoring Calculation

Each platform is scored on a scale from 1 to 5 for each criterion (5 being the highest), multiplied by the criterion's weight, and then summed to get the total score.

### **Scoring Legend**

- **5 (Excellent)**
- **4 (Good)**
- **3 (Average)**
- **2 (Below Average)**
- **1 (Poor)**

### **Platform Scores**

#### **1. KServe**

| **Criteria**                     | **Weight** | **Score** | **Weighted Score** |
|----------------------------------|------------|-----------|--------------------|
| **Licensing**                    | Pass       |           |                    |
| **1. Security Features**         | 20%        | 5         | 1.00               |
| **2. Air-Gap Compatibility**     | 20%        | 4         | 0.80               |
| **3. Kubernetes Integration**    | 20%        | 5         | 1.00               |
| **4. OpenAI API Compatibility**  | 15%        | 4         | 0.60               |
| **5. Ease of Deployment**        | 10%        | 3         | 0.30               |
| **6. Additional Features**       | 10%        | 5         | 0.50               |
| **7. Scalability & Performance** | 5%         | 5         | 0.25               |
| **Total Score**                  | 100%       |           | **4.45**           |

#### **2. Ray Serve**

| **Criteria**                     | **Weight** | **Score** | **Weighted Score** |
|----------------------------------|------------|-----------|--------------------|
| **Licensing**                    | Pass       |           |                    |
| **1. Security Features**         | 20%        | 3         | 0.60               |
| **2. Air-Gap Compatibility**     | 20%        | 4         | 0.80               |
| **3. Kubernetes Integration**    | 20%        | 4         | 0.80               |
| **4. OpenAI API Compatibility**  | 15%        | 4         | 0.60               |
| **5. Ease of Deployment**        | 10%        | 3         | 0.30               |
| **6. Additional Features**       | 10%        | 5         | 0.50               |
| **7. Scalability & Performance** | 5%         | 5         | 0.25               |
| **Total Score**                  | 100%       |           | **3.85**           |

#### **3. Seldon Core**

| **Criteria**                     | **Weight** | **Score** | **Weighted Score** |
|----------------------------------|------------|-----------|--------------------|
| **Licensing**                    | Pass       |           |                    |
| **1. Security Features**         | 20%        | 5         | 1.00               |
| **2. Air-Gap Compatibility**     | 20%        | 4         | 0.80               |
| **3. Kubernetes Integration**    | 20%        | 5         | 1.00               |
| **4. OpenAI API Compatibility**  | 15%        | 2         | 0.30               |
| **5. Ease of Deployment**        | 10%        | 3         | 0.30               |
| **6. Additional Features**       | 10%        | 4         | 0.40               |
| **7. Scalability & Performance** | 5%         | 4         | 0.20               |
| **Total Score**                  | 100%       |           | **4.00**           |

#### **4. BentoML (with OpenLLM)**

| **Criteria**                     | **Weight** | **Score** | **Weighted Score** |
|----------------------------------|------------|-----------|--------------------|
| **Licensing**                    | Pass       |           |                    |
| **1. Security Features**         | 20%        | 3         | 0.60               |
| **2. Air-Gap Compatibility**     | 20%        | 4         | 0.80               |
| **3. Kubernetes Integration**    | 20%        | 3         | 0.60               |
| **4. OpenAI API Compatibility**  | 15%        | 5         | 0.75               |
| **5. Ease of Deployment**        | 10%        | 5         | 0.50               |
| **6. Additional Features**       | 10%        | 5         | 0.50               |
| **7. Scalability & Performance** | 5%         | 3         | 0.15               |
| **Total Score**                  | 100%       |           | **3.90**           |

#### **5. MLServer**

| **Criteria**                     | **Weight** | **Score** | **Weighted Score** |
|----------------------------------|------------|-----------|--------------------|
| **Licensing**                    | Pass       |           |                    |
| **1. Security Features**         | 20%        | 3         | 0.60               |
| **2. Air-Gap Compatibility**     | 20%        | 4         | 0.80               |
| **3. Kubernetes Integration**    | 20%        | 5         | 1.00               |
| **4. OpenAI API Compatibility**  | 15%        | 2         | 0.30               |
| **5. Ease of Deployment**        | 10%        | 5         | 0.50               |
| **6. Additional Features**       | 10%        | 4         | 0.40               |
| **7. Scalability & Performance** | 5%         | 4         | 0.20               |
| **Total Score**                  | 100%       |           | **3.80**           |

#### **6. Triton Inference Server**

| **Criteria**                     | **Weight** | **Score** | **Weighted Score** |
|----------------------------------|------------|-----------|--------------------|
| **Licensing**                    | Pass       |           |                    |
| **1. Security Features**         | 20%        | 3         | 0.60               |
| **2. Air-Gap Compatibility**     | 20%        | 4         | 0.80               |
| **3. Kubernetes Integration**    | 20%        | 4         | 0.80               |
| **4. OpenAI API Compatibility**  | 15%        | 1         | 0.15               |
| **5. Ease of Deployment**        | 10%        | 4         | 0.40               |
| **6. Additional Features**       | 10%        | 4         | 0.40               |
| **7. Scalability & Performance** | 5%         | 5         | 0.25               |
| **Total Score**                  | 100%       |           | **3.40**           |

#### **7. TorchServe**

| **Criteria**                     | **Weight** | **Score** | **Weighted Score** |
|----------------------------------|------------|-----------|--------------------|
| **Licensing**                    | Pass       |           |                    |
| **1. Security Features**         | 20%        | 3         | 0.60               |
| **2. Air-Gap Compatibility**     | 20%        | 4         | 0.80               |
| **3. Kubernetes Integration**    | 20%        | 4         | 0.80               |
| **4. OpenAI API Compatibility**  | 15%        | 2         | 0.30               |
| **5. Ease of Deployment**        | 10%        | 3         | 0.30               |
| **6. Additional Features**       | 10%        | 4         | 0.40               |
| **7. Scalability & Performance** | 5%         | 4         | 0.20               |
| **Total Score**                  | 100%       |           | **3.40**           |

#### **8. SkyPilot**

| **Criteria**                     | **Weight** | **Score** | **Weighted Score** |
|----------------------------------|------------|-----------|--------------------|
| **Licensing**                    | Pass       |           |                    |
| **1. Security Features**         | 20%        | 3         | 0.60               |
| **2. Air-Gap Compatibility**     | 20%        | 4         | 0.80               |
| **3. Kubernetes Integration**    | 20%        | 4         | 0.80               |
| **4. OpenAI API Compatibility**  | 15%        | 2         | 0.30               |
| **5. Ease of Deployment**        | 10%        | 3         | 0.30               |
| **6. Additional Features**       | 10%        | 4         | 0.40               |
| **7. Scalability & Performance** | 5%         | 3         | 0.15               |
| **Total Score**                  | 100%       |           | **3.35**           |

#### **9. Neural Magic**

| **Criteria**                     | **Weight** | **Score** | **Weighted Score** |
|----------------------------------|------------|-----------|--------------------|
| **Licensing**                    | Pass       |           |                    |
| **1. Security Features**         | 20%        | 3         | 0.60               |
| **2. Air-Gap Compatibility**     | 20%        | 4         | 0.80               |
| **3. Kubernetes Integration**    | 20%        | 2         | 0.40               |
| **4. OpenAI API Compatibility**  | 15%        | 2         | 0.30               |
| **5. Ease of Deployment**        | 10%        | 3         | 0.30               |
| **6. Additional Features**       | 10%        | 5         | 0.50               |
| **7. Scalability & Performance** | 5%         | 4         | 0.20               |
| **Total Score**                  | 100%       |           | **3.10**           |

---

## Final Ranking

1. **KServe**: **4.45**
2. **Seldon Core**: **4.00**
3. **BentoML (with OpenLLM)**: **3.90**
4. **Ray Serve**: **3.85**
5. **MLServer**: **3.80**
6. **Triton Inference Server**: **3.40**
7. **TorchServe**: **3.40**
8. **SkyPilot**: **3.35**
9. **Neural Magic**: **3.10**

---

## Analysis

### **1. KServe**

- **Strengths**: Maintains top position due to excellent security features, Kubernetes-native integration, and now improved OpenAI API compatibility with support for chat completion endpoints and embeddings. Supports VLLM and multiple models per GPU using Triton Server.
- **Weaknesses**: Moderate ease of deployment due to dependencies on Istio, Knative, and Kubeflow. Some deployment challenges in air-gapped environments.

### **2. Seldon Core**

- **Strengths**: Strong security features and Kubernetes integration. Good air-gap compatibility and support for inference graphs and advanced routing.
- **Weaknesses**: Non-compliant with OpenAI API; requires custom implementation. Kafka requirement adds complexity to deployment.

### **3. BentoML (with OpenLLM)**

- **Strengths**: Provides OpenAI API-compatible endpoints out of the box, supports Whisper, VLLM, and function calling. High ease of deployment with user-friendly CLI tools.
- **Weaknesses**: Minimal Kubernetes support may cause issues with parallelization and concurrency. Scalability could be impacted in Kubernetes environments.

### **4. Ray Serve**

- **Strengths**: Improved Kubernetes integration via KubeRay operator. Supports OpenAI API, handles queueing, and scales up/down efficiently. Strong community support and feature-rich, including integration with MLFlow and Weights & Biases.
- **Weaknesses**: Limited built-in security features; may require custom implementations to meet enterprise security standards.

### **5. MLServer**

- **Strengths**: Strong Kubernetes-native design, high ease of deployment, and good air-gap compatibility.
- **Weaknesses**: Lacks native OpenAI API compatibility and advanced security features.

### **6. Triton Inference Server**

- **Strengths**: High performance, optimized for GPU workloads, and supports multiple frameworks.
- **Weaknesses**: Not designed for OpenAI API compatibility; moderate security features.

### **7. TorchServe**

- **Strengths**: Good Kubernetes integration and air-gap compatibility; optimized for PyTorch models.
- **Weaknesses**: Limited security features and lacks native OpenAI API compatibility.

### **8. SkyPilot**

- **Strengths**: Kubernetes support with focus on LLMs and VLLM; Apache 2.0 license.
- **Weaknesses**: Limited documentation on security features and scalability; lacks clear information on OpenAI API compatibility.

### **9. Neural Magic**

- **Strengths**: Specializes in model compression techniques like quantization and sparsity; works on the edge, which is beneficial for air-gapped environments.
- **Weaknesses**: Limited Kubernetes integration; lacks information on OpenAI API compatibility and advanced security features.

---

## Recommendation

Based on your updated requirements and the latest findings:

### **Top Choice: KServe**

- **Why**: KServe remains the top choice due to its strong security features, excellent Kubernetes integration, and now improved OpenAI API compatibility. It supports advanced features like VLLM and can efficiently utilize GPUs.

- **Considerations**: Be prepared to manage deployment complexities associated with dependencies like Istio, Knative, and potentially Kubeflow. Air-gap deployment may require additional configuration.

### **Alternative Option: Ray Serve**

- **Why**: Ray Serve has significantly improved its Kubernetes integration and now supports the OpenAI API. It offers a robust feature set, including scalability, queue handling, and strong community support.

- **Considerations**: Security features are limited out-of-the-box. You'll need to implement additional security measures to meet enterprise standards.

### **For Immediate OpenAI API Compatibility with Ease of Deployment**

- **Choose BentoML (with OpenLLM)**: If OpenAI API compatibility and ease of deployment are your top priorities, BentoML provides a quick solution.

- **Considerations**: Its minimal Kubernetes support could impact scalability and performance in a Kubernetes environment. Additional work may be needed to optimize for Kubernetes deployment and concurrency.

---

## Next Steps

1. **Prioritize Requirements**: Decide whether the enhanced Kubernetes integration and security of KServe outweigh the ease of deployment and immediate OpenAI API compatibility of BentoML.

2. **Prototype Implementations**:

   - **KServe**: Set up a prototype to test OpenAI API endpoints, VLLM support, and scalability features in your air-gapped Kubernetes environment.
   - **Ray Serve**: Experiment with its OpenAI API support and assess the effort required to enhance security features.
   - **BentoML**: Evaluate how its Kubernetes limitations affect your deployment and whether workarounds are feasible.

3. **Assess Deployment Challenges**:

   - **KServe**: Plan for managing dependencies like Istio, Knative, and Kubeflow, especially in an air-gapped environment.
   - **Ray Serve**: Determine the security enhancements needed.
   - **BentoML**: Explore options to improve Kubernetes integration and concurrency handling.

4. **Community Engagement**: Engage with the communities of the shortlisted platforms to gather insights, best practices, and support.

5. **Long-Term Maintenance Considerations**: Consider the operational overhead, including updates, scaling, and support for each platform.

---

## Conclusion

Your choice depends on balancing the following factors:

- **KServe** offers the best combination of security, Kubernetes integration, and OpenAI API compatibility after recent improvements. It is well-suited for enterprise environments where these factors are critical.

- **Ray Serve** is a strong contender with improved features and a vibrant community. It's a good option if you're willing to invest in enhancing security features.

- **BentoML (with OpenLLM)** provides the quickest path to OpenAI API compatibility with minimal deployment effort but may require additional work to meet scalability and Kubernetes integration needs.

Given your emphasis on permissive licensing, air-gap compatibility, Kubernetes integration, and OpenAI API compatibility, **KServe** emerges as the most suitable platform, provided you can manage the deployment complexities.

---

**Note**: Ensure compliance with all licensing requirements and legal considerations when deploying and using these platforms. Review each platform's license to confirm that it meets your redistribution, packaging, and selling needs.
