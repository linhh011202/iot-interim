# Detailed Review: Blockchain for Secure IoT: A Review of Identity Management, Access Control, and Trust Mechanisms

## Paper Information

| Field | Details |
|---|---|
| **Title** | Blockchain for Secure IoT: A Review of Identity Management, Access Control, and Trust Mechanisms |
| **Authors** | Behnam Khayer, Siamak Mirzaei, Hooman Alavizadeh, Ahmad Salehi Shahraki |
| **Affiliations** | UniSA Online, University of South Australia, Adelaide & School of Computing, Engineering & Mathematical Sciences (SCEM), La Trobe University, Melbourne |
| **Journal** | IoT 2025, 6, 65 |
| **DOI** | https://doi.org/10.3390/iot6040065 |
| **Received** | 2 September 2025 |
| **Revised** | 6 October 2025 |
| **Accepted** | 22 October 2025 |
| **Published** | 28 October 2025 |
| **Paper Type** | Narrative Review |
| **Pages** | 28 |
| **References** | 77 |
| **License** | Creative Commons Attribution (CC BY) |

## Keywords

Blockchain technology, IoT, trust provisioning, decentralized security, smart contract-based identity

---

## 1. Introduction — Section 1

### 1.1. Background and Research Problem

The paper opens by presenting the context of the Internet of Things (IoT) ecosystem, where billions of devices (smart home appliances, industrial sensors, healthcare monitors, autonomous vehicles, etc.) are interconnected. The IoT ecosystem offers significant benefits in automation, efficiency, and real-time decision-making. However, with the rapid increase in heterogeneous, resource-constrained, and physically exposed devices, IoT faces substantial challenges related to:

- **Trust**: Maintaining consistent trust relationships across diverse devices distributed in multiple environments is highly complex.
- **Security**: Issues such as privacy leakage, lack of transparency, and the inability to verify data provenance continue to undermine trust in IoT services.
- **Identity Management**: Traditional Public Key Infrastructure (PKI) and certificate-based models cannot scale effectively within the expansive and diverse IoT environment.
- **Data Integrity**: Particularly critical in domains like healthcare, industrial automation, and smart cities, where trust breaches can result in significant safety, security, and financial repercussions.

### 1.2. Centralized Trust Management Issues

The paper provides a detailed analysis of four commonly employed centralized trust management techniques and their respective limitations:

**a) Trusted Third Parties (TTPs):**
- Rely on central authorities such as Certificate Authorities and cloud providers.
- Single point of failure: if the authority is compromised, the entire IoT ecosystem is affected.
- Highly vulnerable to insider threats where privileged individuals could compromise system integrity.
- Scalability is limited, especially with the enormous number of IoT devices deployed across varied and distributed environments.

**b) Centralized Reputation Systems:**
- Reputation assessments managed by a single central server, lacking transparency.
- Highly susceptible to Sybil attacks, where malicious entities create multiple fake identities to skew reputation assessments.
- Limited adaptability in dynamically responding to rapid changes in complex IoT networks.

**c) Cloud-Based Access Control:**
- Utilize centralized cloud services to enforce authentication policies via Access Control Lists (ACLs).
- Data privacy risks from dependency on external cloud providers for trust.
- Inherent latency issues making real-time decision-making difficult and often impractical.
- The centralized enforcement approach can become a performance bottleneck.

**d) Trust Brokers/Mediators:**
- Dedicated entities that intermediate and validate trust relationships among IoT devices.
- Become critical communication bottlenecks, potentially slowing interactions and decision-making.
- Significantly expand the attack surface, introducing additional security vulnerabilities.
- Restrict the autonomy and self-governance of edge devices.

### 1.3. Blockchain-Based Trust Management

The paper argues that blockchain provides intrinsic properties well-suited for IoT:
- **Decentralization**: Eliminates reliance on centralized authorities.
- **Immutability**: Ensures data integrity.
- **Transparency**: Enables auditing and verification.
- **Cryptographic Security**: Supports peer-to-peer trust through consensus mechanisms and cryptographic proofs.

Recent advances include Self-Sovereign Identities (SSIs), Decentralized Identifiers (DIDs), Verifiable Credentials (VCs), and smart contracts for real-time trust level or access rights assessment.

**However**, the paper also acknowledges challenges in integrating blockchain into IoT:
- High resource demands of consensus algorithms such as Proof-of-Work (PoW) present significant obstacles for resource-constrained IoT devices, motivating exploration of alternatives like lightweight Proof-of-Trust (PoT) and hierarchical blockchain models.
- The immutable nature of blockchain often conflicts with regulations such as GDPR, particularly regarding data erasure and localization.
- Challenges related to robustness against attacks, energy efficiency in consensus, and scalability metrics like throughput.

### 1.4. Key Contributions

The paper claims five main contributions:

1. **Architectural model analysis and classification**: Leveraging blockchain to establish trust within IoT ecosystems, highlighting common patterns and design considerations.
2. **Exploration of decentralized identity solutions**: Including SSI and DIDs, and their role in reinforcing trust in IoT.
3. **Survey of approaches, techniques, and methodologies**: For utilizing blockchain-related solutions in IoT environments.
4. **Broad spectrum of applications**: Across healthcare, smart cities, supply chains, and energy systems, underscoring both practical advancements and persistent challenges.
5. **Identification of research gaps**: Unresolved challenges and potential future directions.

### 1.5. Methodology

#### 1.5.1. Scope, Search Strategy, and Eligibility Criteria

- **Databases searched**: IEEE Xplore, ACM Digital Library, SpringerLink, MDPI, Google Scholar.
- **Time period**: January 2020 to October 2025 (influential pre-2020 papers cited as foundational context).
- **Language**: English.
- **Search strings**: ("blockchain" AND "IoT" AND (trust OR identity OR "access control" OR "authorization" OR "decentralized identifier" OR "verifiable credential" OR "self sovereign identity" OR "PUF" OR "consensus")).
- Supplemented by backward/forward snowballing from seed surveys and standards.

**Inclusion criteria**: Peer-reviewed journals or full conference papers with IoT focus (device/edge/system), utilizing blockchain/DLT for identity, access control, trust, or policy, reporting a method (prototype, formal model, analysis, testbed, or simulation) with evaluation details. Prioritized from high-quality venues (Q1 journals such as IEEE IoT Journal, A*-ranked conferences such as USENIX Security).

**Exclusion criteria**: Tutorials/positions without methods, non-IoT scope, purely cryptographic works without IoT linkage, non-peer-reviewed papers, workshop/short abstracts, and duplicates/overlaps.

**PRISMA-style screening flow:**

| Stage | Description | Count |
|---|---|---|
| Records identified | IEEE, ACM, Springer, MDPI, Google Scholar | 3262 |
| Removed before screening | Duplicates | 542 |
| Records screened | Title/abstract | 2720 |
| Records excluded | Not meeting criteria | 2562 |
| Full texts assessed | Eligibility | 158 |
| Full texts excluded | Reasons listed above | 81 |
| **Studies included** | **Final synthesis** | **77** |

#### 1.5.2. Data Extraction, Synthesis, and Quality Assessment

For each of the 77 included studies, the following were recorded: author; venue/year, IoT domain, blockchain/DLT and consensus, identity model (DIDs/VCs/SSI/PUF), access control logic (ABAC/CapBAC), privacy mechanism (ZKP, proxy re-encryption, Merkle anchoring), evaluation method, and performance metrics (latency, throughput, energy/CPU, scalability, finality time), plus real-world adoption notes where present.

**Research quality assessment:**
- 59 journal papers (Q1: 40; Q2: 12; Q3-Q4: 7) and 16 conference papers (CORE A*: 2; A: 3; B: 6; other: 5).
- Internal evidence quality scored on a 0–8 rubric covering: method clarity; dataset/testbed; reproducibility; evaluation depth; threat analysis; policy/identity rigor; performance coverage; availability of code/data. **Median score: 5/8 (IQR 4–6)**.

**Domain distribution**: Industrial: 15, Smart city: 14, Vehicular/IoV: 12, Healthcare: 13, Cross-domain frameworks: 23.

#### 1.5.3. Benchmarks, Limitations, and Risk Mitigation

Benchmark metrics normalized and reported: latency (end-to-end for auth/tx), throughput (tps or events/s), energy/CPU (device/node level), storage footprint (on/off-chain), scalability (# devices, # tx/block, # domains), finality time, robustness (tolerance to churn/attacks), and compliance hooks (revocation, localization, consent traces).

**Acknowledged limitations**: Publication bias (few negative results), variable energy metric reporting, and inconsistent latency definitions.

### 1.6. Related Work

Prior surveys examine blockchain-enabled trust in IoT from several angles, but each leaves gaps:

- **Sicari et al. [28]** outlined open research challenges but offered only high-level observations without concrete frameworks.
- **Behrouz et al. [29]** provided a taxonomy of trust management into four categories (reputation-based, policy-based, prediction-based, recommendation-based) but remained anchored in traditional models without sufficiently engaging with blockchain-based and decentralized mechanisms, and offered little assessment of scalability.
- **Studies [30, 31, 32]** addressed heterogeneity, integrity, scalability but largely presented conceptual perspectives rather than actionable strategies.
- **Liu et al. [2]** reviewed blockchain-based trust management and outlined open problems.
- **Ghaffari et al. [34], Bouras et al. [35]** focused on high-level identity and access management.

**Three distinguishing contributions of this survey compared to prior work:**

1. Synthesizes decentralized identity (DIDs, VCs, SSI) specifically for IoT onboarding and lifecycle management, connecting identity design to policy enforcement via smart contracts (ABAC/CapBAC).
2. Analyzes IoT-aware consensus including trust-weighted and hierarchical designs that shift work to edges to capture performance/energy realities of constrained devices.
3. Maps privacy-preserving mechanisms (ZKPs, off-chain/IPFS anchoring) to regulatory needs (consent, revocation) in operational scenarios.

---

## 2. Trust Management Frameworks — Section 2

### 2.1. Overview

Trust management serves as a cornerstone of secure IoT ecosystems. The paper highlights that traditional centralized trust models prove inadequate for addressing the dynamic topology and scale of IoT systems. Blockchain, through distributed consensus and immutability, has facilitated the emergence of decentralized frameworks that evaluate trust through device behavior, interaction histories, and context-aware mechanisms.

Key studies analyzed:

| Approach | Feature | Reference |
|---|---|---|
| Reputation-based Evaluation | Behavioral scoring via smart contracts | [15] |
| Smart Contract-based Trust Updates | Trust metrics embedded in contracts | [42] |
| Social IoT Trust Scaling | Role-aware and social-contextual trust | [50] |
| Sybil Resistance via Voting | Distributed trust validation | [51] |
| Context-aware Trust Modeling | Behavior- and context-based weighting | [41] |
| Usage-Controlled Trust | Multi-dimensional policy enforcement | [52] |
| Trust-anchored Data Streaming | Blockchain-secured streaming logs | [18] |
| Multi-Agent Trust Coordination | Consensus via federated agents | [20] |
| Trust Weight Adjustment | Dynamic adjustment based on behavior logs | [19] |
| PUF-integrated Reputation | Identity-bound trust scoring | [15] |

Notable studies:
- **Bhatt et al. [8]**: Attribute-Based Access Control (ABAC) model for cloud-enabled IoT, enabling fine-grained control incorporating user roles, device characteristics, environmental conditions, and resource sensitivity. Demonstrated through smart home automation and smart parking use cases.
- **Uzair et al. [15]**: Blockchain-enabled protocol evaluating dynamic trust values using historical vehicular data, effectively mitigating Sybil attacks and false data injection.
- **P. et al. [42]**: Adaptive model employing smart contracts to penalize malicious nodes and incentivize compliant behavior in vehicular networks.
- **Rouzbahani & Taghiyareh [50]**: SCoTMan, a scalable smart contract-based trust framework for Social IoT integrating context-aware constraints and behavior tracking in real time. Enables dynamic weighting of social interactions and role hierarchies.
- **Asiri & Miri [51]**: Sybil-resistant trust model leveraging blockchain-based voting to validate device reputation in densely populated IoT networks.
- **Ma et al. [52]**: Secure usage control framework evaluating trust through service credibility, user behavior, and temporal metrics, all managed via blockchain.
- **Hassan et al. [18]**: IPFS and smart contracts for secure trust data streaming, enabling consensus formation while maintaining low latency and scalability.

### 2.2. Decentralized Identity Management

#### 2.2.1. Decentralized Identifiers (DIDs)

DIDs provide globally unique identifiers directly controlled by the entity without requiring a central registry.

Key studies:
- **Ansey et al. [54] — Gnomon**: A DID framework replacing conventional PKI with self-sovereign DIDs for 5G IoT device onboarding and secure software maintenance. Uses Microsoft ION method (Sidetree-based), anchored to Bitcoin blockchain, with DID documents stored in IPFS for tamper-resistant, large-scale storage. Devices acquire verifiable credentials from an identity hub, enabling cryptographic verification of firmware images before installation.
- **Zhang et al. [55] — TrID**: A DID-centric framework securing the full lifecycle of IoT data (authentication, authorization, transmission, storage) while avoiding blockchain overhead. Embeds immutable DIDs directly into device hardware during manufacturing. Issues VCs and Verifiable Presentations (VPs) to establish end-to-end trust chains. Achieves mutual-authentication latency roughly 10% of comparable on-chain methods, decrypting 10 MB ciphertext in under 100 ms.
- **Waleed et al. [56]**: DID framework built on IOTA Chrysalis, replacing energy-intensive blockchains with the Tangle's feeless DAG for scalable, cost-efficient identity. Proof-of-concept demonstrated broadcasting DID payloads up to 30 kB from both desktop and Raspberry Pi devices.
- **Polychronaki et al. [24]**: Integrates VCs with smart contracts for both role-based and attribute-based access control, ensuring privacy, scalability, and GDPR alignment.
- **Samir et al. [23] — DT-SSIM**: Self-sovereign identity model employing secret sharing and cryptographic proofs for secure multi-domain authentication and credential portability.
- **Akkaoui [4]**: DID-based model for healthcare, securing patient device identities and regulating data access.
- **Ramezan & Meamari [40] — zk-IoT**: Zero-knowledge proof-based system enabling identity verification while preserving anonymity and unlinkability.
- **Rouzbahani & Taghiyareh [41]**: Integration of dynamic DIDs in social IoT environments for peer-to-peer trust negotiation without third-party validation.

#### 2.2.2. Verifiable Credentials (VCs)

VCs enable entities to present digitally signed credentials from trusted authorities that can be selectively disclosed and verified without exposing unnecessary personal data.

- **Mazzocca et al. [57] — EVOKE**: An IoT-oriented revocation scheme augmenting W3C VCs with an elliptic curve-based cryptographic accumulator. Approximately 1.5 KB overhead per node for accumulator value and witness. Issuers generate witnesses efficiently (~80 ms per million VCs). Provides scalable, efficient credential lifecycle management.
- **Fotiou et al. [58]**: A capabilities-based access control (CapBAC) framework encoding fine-grained rights within W3C VCs. Removes the need for device-side access control lists and continuous presence of a trusted intermediary. Aligned with standard OAuth 2.0 flows. Prototype evaluations on Raspberry Pi and ESP32 showed VC generation under 0.1 ms and on-device verification in approximately 10–160 ms.
- **Lagutin et al. [37]**: Demonstrated that W3C-standardized VCs can be used by highly constrained IoT devices when intensive cryptographic operations are delegated to an OAuth-compliant authorization server. In a printing service case study, a university-issued VC is converted into a zero-knowledge proof submitted to the AS, which issues a proof-of-possession access token.

#### 2.2.3. Blockchain/Distributed Ledgers

- **Ghaffari et al. [34]**: Comprehensive survey of how blockchain and DLTs serve as foundation for modern IAM infrastructures. Proposes a three-dimensional taxonomy classifying over sixty approaches by: IAM function (registration, authentication, authorization, monitoring), access-control model (RBAC, ABAC, capability-based), and application domain. Identifies challenges in ledger scalability, interoperability, and privacy-preserving data minimization.
- **[59] — DLedger**: A lightweight private distributed-ledger architecture for IoT using a DAG of records instead of blockchain, substituting PoW with resource-efficient Proof-of-Authentication (PoA). Built on Named Data Networking (NDN) employing in-network caching, multicast, and stateful forwarding to handle intermittent connectivity. Simulation shows unconfirmed-record set remains bounded and confirmation latency stable as IoT nodes increase.
- **Bouras et al. [35]**: Survey of DLT applications in eHealth identity management, highlighting how permissioned ledgers and SSI frameworks enable patients to maintain cryptographic ownership of identifiers while selectively disclosing verifiable claims.

#### 2.2.4. Self-Sovereign Identity (SSI)

SSI is a decentralized identity paradigm granting individuals and devices full ownership and control of their digital identities.

- **Kulabukhova et al. [62]**: Evaluates multiple ledger-based SSI frameworks (Hyperledger Indy/Sovrin, uPort, Civic, Jolocom, Veres One), highlighting trade-offs in transaction costs, consensus overhead, and DID-method compliance. Proposes an authentication protocol using IoT wallets to resolve DIDs to on-chain public keys. Demonstrated for logistics "smart boxes".
- **Efat et al. [23] — DT-SSIM**: Decentralized self-sovereign identity management framework on a consortium blockchain, allowing users to generate DIDs and manage identity credentials independently. Leverages smart contracts for policy enforcement and cryptographic proofs for identity validation and access regulation.
- **Weingaertner & Camenzind [63]**: Blockchain-based identity management applying SSI principles. Each device provisioned with a unique identifier at manufacturing, recorded on Ethereum blockchain. Supports asynchronous registration via JSON Web Tokens (JWTs).

#### 2.2.5. Smart Contract Design and Automation

Smart contracts are autonomous programs executing predefined conditions, enabling automated access control, auditing, and resource coordination within IoT systems.

| Application | Feature | Reference |
|---|---|---|
| Behavioral Access Control | Device-specific dynamic permissions | [19] |
| PUF-integrated Authentication | Tamper-proof ID validation | [15] |
| ABAC Enforcement Logic | Fine-grained attribute-based access | [27] |
| Credential Revocation | Automated lifecycle management | [23] |
| IoT Onboarding Automation | Self-registration via smart contracts | [17] |
| Immutable Device Logs | Verifiable device action records | [18] |
| IoT Billing and Payment | Resource metering and micro-transactions | [64] |
| Cross-Chain Contract Calls | Interoperable control enforcement | [26] |
| Behavior-based Policy Updates | Reactive permission changes | [19] |
| Security Policy Anchoring | Policy auditing via contracts | [52] |

Key studies:
- **Loukil et al. [19]**: Behavior-aware smart contract model where device access rights adapt dynamically to behavioral inputs, strengthening privacy and security in both home and industrial IoT settings.
- **Fotiou et al. [17]**: Smart contracts for secure, large-scale IoT access with immutable logs and fine-grained permission controls.
- **Zaidi et al. [27]**: Automated identity revocation and attribute validation in large-scale IoT. Developed attribute-based contract enforcement integrating ABAC with smart contracts for decentralized yet policy-compliant identity management.
- **Abubakar et al. [53]**: Scalable blockchain framework integrated with MQTT for lightweight identity management tailored for resource-constrained IoT.
- **Javaid et al. [15]**: Combined Physical Unclonable Functions (PUFs) with smart contracts for secure vehicular identity verification, mitigating spoofing and impersonation risks.
- **Haya et al. [18]**: Smart contracts for secure logging and real-time data validation with IPFS for bulk data storage offloading.

#### 2.2.6. Consensus Mechanisms and Performance

Traditional consensus protocols like PoW are impractical for IoT due to high computational and energy requirements.

| Mechanism | Key Feature | Reference |
|---|---|---|
| Proof-of-Trust (PoT) | Trust-aware consensus leader selection | [25] |
| Hierarchical Blockchain | Layered ledger with fast edge-chain finality | [26] |
| Hybrid PoT-BFT | Dynamic consensus shifting based on device roles | [50] |
| Credibility-Weighted Voting | Behavior-based reputation scoring in consensus | [15] |
| Adaptive PBFT | Quorum thresholds adjusted by topology density | [38] |
| Energy-Aware Voting | Device-level power profiling to reduce cost | [39] |
| Federated Ledger Synchronisation | Distributed node-level agreement model | [20] |
| Stake-Based Lightweight PoS | Delegation optimized for IoT trust anchors | [19] |
| Cross-Domain Consensus | Domain-specific chains with central root validation | [26] |
| Role-Based Consensus Tiers | Hierarchical participation by role designation | [41] |

Notable contributions:
- **Ye et al. [25] — Proof-of-Trust (PoT)**: Incorporates device reputation into decision-making, reducing computational redundancy by prioritizing high-trust nodes.
- **Liu et al. [26]**: Cross-domain authentication management on hierarchical blockchain architecture, distributing consensus tasks between edge-layer and core-layer chains, achieving significant improvements in latency and throughput.
- **Rouzbahani & Taghiyareh [50]**: Hybrid consensus in SCoTMan, dynamically alternating between BFT and PoT based on node behavior and energy availability.
- **Mizna et al. [38]**: Adaptive PBFT adjusting quorum thresholds according to IoT network density, improving scalability and efficiency.
- **Alkadi et al. [39]**: Energy-aware consensus integrated into federated IoT intrusion detection, enabling sustained operation across low-power nodes.

These emerging protocols illustrate a clear shift in consensus design toward greater flexibility and adaptability, aligning with the dynamic requirements and resource constraints of IoT environments.

### 2.3. Security and Privacy Mechanisms

#### Security

Security is reinforced through:
- **Public key cryptography, hash functions, digital signatures**: Secure device identities, preserve message integrity, prevent tampering.
- **Smart contracts**: Automate access control and enforce trust relationships without centralized oversight, mitigating insider threats and eliminating single points of failure.
- **Lightweight consensus**: PoA, DPoS, PBFT as IoT-suitable alternatives to PoW.
- **ABE and IBE**: Enable fine-grained access control governed by attributes rather than fixed identities.

#### Privacy

**Security and Privacy Challenges with Blockchain-Based Mitigation:**

| Security Challenge | Blockchain-Based Solution | Privacy | Reference |
|---|---|---|---|
| Single Point of Failure | Decentralized identity management | ✓ | [5] |
| Unauthorized Device Access | Lightweight cryptographic authentication | ✓ | [53] |
| Data Integrity | Immutable ledger, hash verification | | [16] |
| Sybil Attacks | Physical Unclonable Functions (PUFs) | | [15] |
| Privacy Violations | Zero-knowledge proofs, Proxy Re-encryption | ✓ | [40] |
| Device Spoofing | Smart contract-based verification | | [17] |
| Intrusion Detection | Federated intrusion detection with deep learning | ✓ | [20,66] |
| Data Provenance | Blockchain-based logging and lineage traceability | | [16] |
| Centralized Trust Models | Distributed reputation frameworks | | [50] |
| Identity Management Scalability | Attribute-based access control and decentralized credentials | | [27] |
| Resource Constraints | Lightweight consensus algorithms like PoT | ✓ | [25] |
| GDPR Compliance | Off-chain data handling, smart contracts with revocation logic | | [24] |

**Detailed techniques:**

- **Zero-Knowledge Proofs (ZKPs)**: zk-IoT [40] enables anonymous device authentication while maintaining encrypted access logs on-chain.
- **Secret-sharing schemes [23]**: Distribute key shards among multiple peers, preventing any single entity from compromising identity while supporting deterministic restoration following loss or key rotation.
- **Merkle tree anchoring + IPFS [18]**: Only root hashes stored on-chain while streaming sensor data maintained in IPFS, producing tamper-evident but lightweight audit trails.
- **Encrypted anchoring [5]**: Personal data encrypted off-chain with only cryptographic anchors on-chain. Smart contract logic revokes or re-keys anchors when users withdraw consent.
- **ABAC via smart contracts [27]**: Dynamic, metadata-driven permissions reducing over-provisioning in large-scale IoT deployments.
- **Behavior-aware extensions [19]**: Adapt access levels in response to real-time usage patterns, strengthening intrusion resilience without manual oversight.
- **Social-trust privacy filters [41]**: Incorporate peer reputation into access decisions, mitigating collusion and insider threats in collaborative IoT environments.
- **PUF fingerprints [15]**: Bind blockchain identities directly to device hardware, mitigating Sybil and cloning attacks. Coupling PUF challenges with smart contract logic effectively blocks rogue-node injection in vehicular IoT.
- **Trust-weighted signatures + PoT [25]**: Achieve lower authentication latency and reduced energy consumption compared with traditional PKI-based handshakes.
- **Deep learning + consortium blockchains [39]**: Federated IDS identifying coordinated attacks at the edge while immutably logging forensic evidence, preserving data locality with high accuracy.

### 2.4. AI and Machine Learning Integration with IoT Trust Management

Traditional rule-based or static trust models often fail to accommodate the dynamic, heterogeneous, and evolving nature of IoT networks. AI/ML-based approaches enable data-driven, context-aware, and adaptive trust evaluation mechanisms.

**Application dimensions of AI/ML in IoT trust management:**
- **Behavioral analysis**: Examines communication patterns, resource consumption, and service interactions to identify anomalous or malicious activity.
- **Trust prediction**: Decision trees, neural networks, Bayesian networks to estimate future trustworthiness.
- **Reputation systems**: AI-driven aggregation and interpretation of trust feedback from diverse sources.
- **Anomaly and intrusion detection**: Enables resource-constrained IoT networks to detect and mitigate trust violations autonomously.

| Application | AI/ML Technique | Reference |
|---|---|---|
| Intrusion Detection Systems (IDS) | Deep learning with blockchain traceability | [20] |
| Federated Anomaly Detection | Distributed edge-based models | [39] |
| Dynamic Smart Contract Triggers | Reinforcement learning-based policy updates | [69] |
| Adaptive Access Control | Behavior-predicted ABAC thresholds | [27] |
| ML-Enhanced Trust Management | Historical device behavior modeling | [42] |
| Blockchain-Audited AI Decisions | Transparent log of AI outcomes | [24] |
| Edge AI for Privacy Preservation | Minimal model sharing across IoT edges | [20] |
| AI-Driven Consensus Tuning | Feedback loops for consensus parameterization | [69] |
| AI-Powered Reputation Engines | Multi-factor scoring via supervised learning | [15] |
| Threat Signature Generation | Generative adversarial modelling with blockchain logs | [39] |

**Notable studies:**
- **Al-Turjman et al. [20]**: Federated intrusion detection integrating deep learning with blockchain in Industrial IoT (IIoT). Decentralized architecture supports cross-node intelligence sharing while preserving data privacy.
- **Chandan et al. [69]**: Adaptive blockchain-IoT framework fusing smart contract logic with reinforcement learning for proactive resource management in smart cities and industrial automation.
- **Zaidi et al. [27]**: Applied ML algorithms to dynamically adjust access thresholds according to device behavior, embedding results into ABAC-driven smart contracts.
- **Alkadi et al. [39]**: Collaborative ML-based intrusion detection leveraging blockchain for logging, verification, and autonomous threat response.
- **Singh et al. [42]**: Supervised learning for adaptive trust models integrating historical interaction data with blockchain logs.
- **AR & Katiravan [74]**: Hybrid deep learning framework combining Bi-GRU and Bi-LSTM architectures for dynamic trust assessment using device interaction histories, outperforming conventional static trust models.
- **Chithanuru & Ramaiah [75]**: AI-driven anomaly detection for blockchain-based IoT combining ANN with adaptive linear regression on Hyperledger Fabric, achieving real-time detection with minimal computational overhead.
- **AlGhamdi et al. [72]**: Framework integrating AI and blockchain for trusted IoT healthcare, including deep learning for COVID-19 detection and a blockchain-based pharmaceutical system.
- **Fortino et al. [73]**: Multi-agent architecture where each IoT device is represented by a software agent cooperating based on quantifiable reputation capital (RC), continuously updated through blockchain-certified interactions. When malicious agents remained below 25%, nearly all adversaries were successfully identified.

**Advantages of AI-blockchain integration:**
- Dynamic and adaptive trust evaluation.
- Early anomaly detection, identification of malicious activity, and recognition of compromised devices.
- Reduced reliance on manual oversight, enabling scalable, self-managing IoT ecosystems.
- Federated learning complements blockchain's decentralized architecture for privacy-preserving model training.

**Limitations:**
- Many AI algorithms require substantial computational, storage, and energy resources, posing difficulties for resource-constrained IoT devices.
- Effectiveness contingent on high-quality, diverse datasets, which are often scarce or fragmented in practice.
- Behavioral data collected for training may still reveal sensitive information if not properly protected.
- AI models, especially deep learning, lack transparency and interpretability, complicating auditability and regulatory compliance.
- AI itself introduces vulnerabilities such as susceptibility to adversarial manipulation, undermining reliability of trust evaluations.

---

## 3. Blockchain-Based Trust Management Challenges — Section 3

### 3.1. Regulatory and Compliance Challenges

Blockchain's permanence and decentralization, while advantageous for transparency and audit trails, often clash with privacy regulations such as GDPR:
- **"Right to be forgotten"**: Blockchain's immutability directly contradicts data erasure rights.
- **Data localisation**: Difficult to comply with data localization requirements in distributed networks.
- **Consent-driven data**: Requires smart contract mechanisms to enforce privacy obligations in real-time.

| Challenge | Blockchain-Based Solution | Reference |
|---|---|---|
| Data Localisation | Regional retention with global hash anchoring | [5] |
| Consent Management | Revocable access via smart contracts | [24] |
| Access Revocation | ABAC with expiry logic in contracts | [27] |
| Data Portability | Use of DIDs and verifiable credentials | [24] |
| Automated Legal Logic | Embedded privacy rules in contracts | [50] |
| Cross-Border Limits | Domain-specific blockchain silos | [26] |
| Audit Requirements | Immutable logs for compliance checks | [18] |
| Right to Access | Decentralized credential validation | [23] |

- **Polychronaki et al. [24]**: DIDs and VCs granting greater data autonomy. Smart contracts dynamically grant/withdraw access rights, partially satisfying GDPR consent and minimization requirements. Trade-off noted: DIDs offer high privacy but sacrifice scalability; VCs prioritize verification speed but increase latency in resource-constrained IoT.
- **Zaidi et al. [27]**: ABAC with revocation functions ensuring expired credentials cannot be used in immutable environments. However, smart contracts introduce adoption barriers in legacy IoT due to gas costs and interoperability.
- **Alkhamisi & Alboraei [5]**: Decentralized protocol separating user credentials from blockchain records, enabling localized enforcement of regional data rules.

### 3.2. Implementation Considerations and Challenges

| Challenge | Blockchain-Based Approach | Reference |
|---|---|---|
| Scalability | Hierarchical blockchain with edge aggregation | [26] |
| Energy Constraints | PoT for trust-weighted consensus | [25] |
| Interoperability | DIDs and VCs for standardized onboarding | [24] |
| Latency Sensitivity | Edge-led consensus layers | [26] |
| Smart Contract Complexity | Modular templates per device class | [41] |
| Regulatory Alignment | Node placement with compliance checks | [4] |
| Topology Management | SDN integration for policy enforcement | [38] |
| Deployment Cost | Gas-optimized and upgradable contracts | [19] |
| Node Failure Recovery | Backup triggers for failover | [39] |
| Firmware Integrity | Blockchain-verifiable update cycles | [76] |

Detailed solutions:
- **Ye et al. [25]**: PoT consensus model where only reliable nodes (judged by behavior and reputation) shoulder heavy validation work, reducing overall computational overhead. Trade-off: PoW offers strong security but poor energy efficiency versus PoT's lightweight approach.
- **Liu et al. [26]**: Hierarchical ledger model where local edge blockchains perform fast, lightweight validation, periodically syncing with a global chain for overall consistency.
- **Polychronaki et al. [24]**: DIDs and VCs as a unifying identity layer for device onboarding across diverse manufacturers.
- **Akkaoui [4]**: Fault-tolerant blockchain nodes to ensure compliance and high availability in safety-critical medical IoT applications.
- **Mizna et al. [38]**: Integration of Software-Defined Networking (SDN) as a flexible control plane paired with blockchain for dynamic access rules enforcement.
- **Rouzbahani & Taghiyareh [41]**: Modular smart contracts tailored to device classes, streamlining deployments in mixed environments.
- **Vinay et al. [76]**: Blockchain-powered solution using smart contracts in Remix IDE for IoT device registration and network monitoring, with algorithms for registration, monitoring, validation, and verification to identify and prevent cyber-attacks.

---

## 4. Emerging Applications and Use Cases — Section 4

The paper surveys sector-specific blockchain-IoT deployments:

| Sector | Application | Reference |
|---|---|---|
| Healthcare | Patient Device Identity Management | [4] |
| Vehicular IoT | Vehicle Authentication via PUFs | [15] |
| Smart Cities | Decentralized Registration and Authentication | [24] |
| Industrial IoT | AI-enhanced Intrusion Detection | [20] |
| Smart Homes | Secure Ethereum-based Communication | [77] |
| Energy Management | Blockchain-driven Smart Grids | [39] |
| Supply Chain | Provenance and Logistics Tracking | [64] |
| Agriculture | Immutable Agricultural Data Sharing | [64] |
| Environmental Monitoring | Sensor Data Integrity Logging | [16] |
| Public Safety | Dynamic Access Control During Incidents | [19] |

**Sector details:**

- **Healthcare**: Akkaoui [4] presented a blockchain-based framework for managing medical IoT devices, supporting secure patient identities, traceability, and alignment with privacy regulations. Pilots like [65] validated key management for WBANs, reducing latency by 20%.
- **Vehicular IoT**: Javaid et al. [15] integrated PUFs with blockchain protocols to authenticate vehicles, mitigating spoofing risks and improving trust in connected transportation systems.
- **Smart Cities**: Polychronaki et al. [24] proposed a decentralized model for IoT device registration and authorization, strengthening transparency and trust in urban infrastructure. [48] showed DID-based data collection improving integrity in real-time monitoring.
- **Industrial IoT (IIoT)**: Motamarri et al. [20] developed blockchain-ML hybrids for intrusion detection, enabling predictive threat detection in real-time. IIoT testbeds [49] demonstrated blockchain-based federated learning for device failure detection.
- **Smart Homes**: [77] proposed SSHCEth, a secure smart home communications system based on Ethereum blockchain and smart contract, optimizing resource consumption while maintaining security and privacy.
- **Energy Systems**: Alkadi et al. [39] designed blockchain-supported intrusion detection for smart grids, ensuring reliable energy distribution while minimizing cyber risks.
- **Supply Chain**: Ali et al. [64] demonstrated blockchain improving logistics through immutable product journey recording. Same principles extend to agriculture for securing IoT data sharing.
- **Environmental Monitoring**: Cui et al. [16] used blockchain to secure sensor streams, ensuring tamper-proof environmental records.
- **Public Safety**: Loukil et al. [19] presented a blockchain-driven access control model adapting permissions dynamically during emergencies.

Future research should validate these applications in real-world conditions, refine compliance with evolving regulations, and develop cost-effective deployment strategies at scale. Gaps include AI-driven trust explainability and economic incentives for blockchain participation in IoT.

---

## 5. Discussion and Future Directions — Section 5

### 5.1. Open Issues and Research Challenges

1. **Scalability**: Remains the leading challenge, especially in public blockchain networks like Ethereum where gas fees and network latency limit viability of high-frequency IoT operations. Various studies responded with hierarchical blockchain models, lightweight consensus mechanisms, and stratified node roles, but these only mitigate rather than fully resolve the bottlenecks.

2. **Regulatory Compliance**: Decentralization enhances data sovereignty and auditability but simultaneously complicates adherence to privacy laws such as GDPR. Solutions such as off-chain storage, smart contract revocation logic, and policy-embedded blockchain applications are crucial for balancing transparency and privacy.

3. **Interoperability**: Particularly concerning in cross-domain IoT networks with heterogeneous device types and identity schemes. Integration of standards for decentralized identity and secure firmware update processes is essential for achieving functional convergence across verticals (healthcare, transportation, industrial systems).

4. **AI/ML and Blockchain Synergy**: Remains underexplored but promising. Projects like federated learning-based intrusion detection and predictive maintenance demonstrate how decentralized intelligence can extend the autonomy and security of blockchain-powered IoT. Smart contracts serve as policy enforcement agents for AI-driven decisions, ensuring transparency and auditability.

Addressing these open issues requires interdisciplinary collaboration integrating insights from cybersecurity, networking, cryptography, machine learning, and distributed systems research.

### 5.2. Future Research Directions

1. **Scalability**: Lightweight Proof-of-Trust algorithms and edge-ledger architectures for massive IoT deployments. Focus on reducing computational overhead while maintaining security.

2. **Privacy Enhancement**: Advanced cryptographic techniques such as ZKPs and proxy re-encryption enabling data sharing without compromising confidentiality. Research needed to adapt these schemes for resource-constrained IoT devices.

3. **Compliance Integration**: GDPR-aware smart contract templates for automatic regulatory compliance enforcement. Frameworks balancing legal requirements with decentralized execution.

4. **AI and Blockchain Fusion**: Federated learning combined with on-chain triggers for privacy-preserving model training. Investigate integration of federated learning and blockchain in IoT context.

5. **Smart Contract Governance**: Modular and upgradeable contract systems for evolving requirements in IoT ecosystems. Secure upgrade mechanisms without disrupting existing services.

6. **IoT Interoperability**: Standardized DID schemas and onboarding protocols for seamless device integration. Cross-vendor interoperability and trust establishment.

7. **Real-Time Trust Evaluation**: Efficient mechanisms to process dynamic IoT interactions with low latency for real-time trust evaluation.

8. **Energy Efficiency**: Green consensus algorithms designed for constrained IoT devices. Minimizing energy consumption while preserving decentralization and security.

9. **Security Forensics**: Immutable IoT forensics and auditability logs enhancing accountability in decentralized environments. Scalable evidence collection and tamper-proof forensic analysis.

---

## 6. Conclusions — Section 6

The paper concludes that the combination of blockchain and decentralized identity provides a strong foundation for trust management and user-focused authentication in IoT environments. This integration benefits various sectors including healthcare, transportation, smart cities, and industrial automation.

**Key concluding points:**

- Blockchain technologies enable resilient architectures for secure and scalable IoT ecosystems through decentralization, immutable computation, and autonomous enforcement through smart contracts.
- Cryptographic algorithms (ZKPs, Merkle trees, proxy re-encryption) further strengthen confidentiality and integrity of communications among constrained devices.
- Research should focus on establishing common standards, embedding compliance requirements directly into system design, and leveraging AI-based automation.
- Current implementations suffer from scalability limitations, regulatory misalignment, and resource limitations.
- Novel architectural strategies (hierarchical blockchains, lightweight consensus models, federated intrusion detection) show viable pathways but need further investigation.
- Cross-disciplinary collaboration between legal experts, system architects, cryptographers, and machine learning specialists is needed to translate innovations into resilient, real-world deployments.

---

## Overall Assessment

### Strengths

1. **Broad comprehensive coverage**: The paper covers multiple aspects from trust management, identity management, access control, consensus, security/privacy, to AI/ML integration and applications, forming a comprehensive panorama of the blockchain-IoT trust landscape.

2. **Systematic methodology**: Employs a PRISMA-style screening process from an initial 3,262 records down to 77 included studies, with clear eligibility criteria and quality assessment using a 0-8 rubric. Two independent reviewers screened papers with disagreement resolution documented.

3. **Systematic comparative tables**: 11 summary tables compare techniques, frameworks, consensus mechanisms, security/privacy solutions, AI/ML applications, compliance strategies, and domain use cases, enabling readers to easily reference and compare approaches.

4. **Clear distinguishing contributions**: The paper clearly identifies three differentiating contributions compared to prior surveys — (i) decentralized identity for IoT lifecycle, (ii) IoT-aware consensus, (iii) mapping privacy mechanisms to regulatory needs — giving it a clear position in the literature.

5. **Research quality assessment**: Provides venue tiers (Q1-Q4 journals, CORE-ranked conferences) and quality scoring (median 5/8), helping readers calibrate evidence strength by venue tier.

6. **Specific future directions**: Nine concrete and actionable future research directions are proposed.

7. **Timeliness**: Covers literature up to October 2025, making it highly current and relevant.

### Weaknesses

1. **Lack of quantitative comparative analysis**: Despite mentioning numerous metrics (latency, throughput, energy), the paper does not provide direct quantitative comparison tables between solutions. For example, there is no table comparing latency of PoT vs. Adaptive PBFT vs. Hierarchical BFT on the same testbed or under comparable conditions.

2. **Narrative review vs. Systematic review ambiguity**: The paper self-identifies as a "narrative review" yet applies PRISMA-style procedures. This creates ambiguity about the level of methodological rigor and reproducibility. A true systematic review would require protocol pre-registration, more detailed risk of bias assessment, and potentially meta-analytic synthesis.

3. **Lack of unified threat model**: The paper discusses many attacks (Sybil, spoofing, insider threats, man-in-the-middle) but does not provide a unified threat model for systematically evaluating and comparing the solutions against a common adversarial framework.

4. **Content repetition**: Some passages are repeated nearly verbatim. For example, in Section 3.1, the sentence "Together, these strategies reveal a trend towards balancing blockchain's technical strengths with the evolving legal requirements of global IoT ecosystems" appears twice consecutively. There is also repeated discussion of off-chain storage in Section 2.3 with near-identical paragraphs.

5. **Missing cost analysis**: While gas costs and deployment costs are mentioned, the paper does not provide detailed economic analysis for blockchain deployment in IoT, including TCO (Total Cost of Ownership) and ROI considerations.

6. **Limited real-world deployments**: Most surveyed studies rely on prototypes or simulations, with very few large-scale real-world deployments. The paper acknowledges this but does not deeply analyze the gap between research and practical deployment.

7. **Absence of formal publication bias assessment**: The paper acknowledges publication bias (few negative results) but does not perform any formal analysis (e.g., funnel plots) to assess the degree of its impact.

8. **Uneven reference distribution**: Certain references are cited very frequently (e.g., [15], [24], [27] appear in nearly every section) while many others are mentioned only once, potentially creating bias in the synthesis.

9. **Section imbalance**: Section 2 is very long and complex (approximately 16 of 28 pages), while Sections 3, 4, and 5 are comparatively thin. The applications section (Section 4) in particular feels relatively shallow given the breadth of domains covered.

10. **Limited critical analysis of individual works**: The paper tends toward descriptive summaries of each cited work rather than providing critical evaluation of their methodological quality, reproducibility, or the validity of their claimed results.

### Structural Comments

The paper follows a logical structure: Introduction → Trust Management Frameworks (with detailed subsections) → Challenges → Applications → Discussion → Conclusions. However, Section 2's length and complexity (spanning multiple subsections covering identity, smart contracts, consensus, security/privacy, and AI/ML) may overwhelm readers tracking the main argumentation thread. Some subsections could be elevated to their own top-level sections for better navigation.

### Significance and Relevance

The paper makes a valuable contribution to the IoT-blockchain research community by providing a comprehensive, up-to-date (through October 2025) panorama of blockchain-based trust management approaches for IoT. It is particularly useful for:
- Graduate students and researchers new to the field seeking a structured entry point.
- Systems engineers and architects evaluating blockchain integration for IoT deployments.
- Those interested in the intersection of blockchain, IoT, AI/ML, and regulatory compliance.
- Researchers seeking to identify gaps and future directions in this rapidly evolving area.

---

## Summary of Key Tables

| Table | Content |
|---|---|
| Table 1 | PRISMA-style flow for study selection (2020–2025) |
| Table 2 | Centralized Trust Management Techniques and Their Limitations in IoT Systems |
| Table 3 | Blockchain-Based Identity Management Approaches |
| Table 4 | Blockchain-Based Trust Management Frameworks for IoT |
| Table 5 | Smart Contract Applications in Blockchain-IoT Systems |
| Table 6 | Consensus Mechanisms for Blockchain-IoT Networks |
| Table 7 | Security and Privacy Challenges and Blockchain-Based Mitigation Strategies |
| Table 8 | AI and ML Integration into Blockchain-IoT |
| Table 9 | Compliance Strategies in Blockchain-Based IoT Systems |
| Table 10 | Blockchain-IoT Implementation Challenges and Solutions |
| Table 11 | Blockchain-IoT Applications Across Domains |
