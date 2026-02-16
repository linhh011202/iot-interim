# Detailed Review: IoT-Based Smart Parking Management: A Multiagent Simulation Framework for Sustainable Urban Mobility

## Paper Information

| Field | Details |
|---|---|
| **Title** | IoT-Based Smart Parking Management: A Multiagent Simulation Framework for Sustainable Urban Mobility |
| **Author** | Ibrahim Mutambik |
| **Affiliation** | Department of Information Systems, College of Computer and Information Sciences, King Saud University, Riyadh 11543, Saudi Arabia |
| **Journal** | Sustainability 2025, 17, 6382 |
| **DOI** | https://doi.org/10.3390/su17146382 |
| **Received** | 28 May 2025 |
| **Revised** | 4 July 2025 |
| **Accepted** | 8 July 2025 |
| **Published** | 11 July 2025 |
| **Paper Type** | Research Article |
| **Pages** | 24 |
| **References** | 79 |
| **License** | Creative Commons Attribution (CC BY) |

## Keywords

IoT, smart parking, multiagent simulation, urban mobility, sustainability, sensor-based occupancy, predictive analytics

---

## 1. Introduction — Section 1

### 1.1. Background and Research Problem

The paper opens by addressing the growing challenge of urban parking management in rapidly expanding cities. With rising motorization rates and limited urban space, parking inefficiency has become a significant contributor to:
- Traffic congestion
- Excessive fuel consumption
- Elevated CO2 emissions
- Reduced urban livability
- Driver frustration and lost productivity

Traditional parking systems operate as static, first-come-first-served models where drivers search aimlessly for available spots, resulting in unnecessary delays, increased roadway congestion, and elevated pollution levels.

### 1.2. IoT-Enabled Smart Parking Vision

The paper argues that smart parking systems powered by IoT can transform urban mobility through:

**Sensor Technologies:**
- Ultrasonic proximity sensors, infrared detectors, magnetometers, and camera-based detection systems embedded in parking spaces
- Real-time detection of vehicle presence, transmission of occupancy status to centralized platforms, and triggering of dynamic allocation decisions

**Communication Technologies:**
- Wi-Fi, cellular (4G/5G), and long-range IoT protocols (LoRaWAN, NB-IoT)
- Consistent connectivity and low-latency updates between users, infrastructure, and urban planners

**Machine Learning Integration:**
- Predictive insights for demand forecasting and sustainable pricing models
- Data-driven policy support

### 1.3. Research Objectives

The study constructs a simulation model to evaluate the performance of an intelligent parking ecosystem powered by:
- Real-time sensor data
- Predictive navigation
- Adaptive space management

The simulation compares an IoT-based dynamic parking system with a traditional static, first-come-first-served approach across four key performance indicators:
1. **Economic efficiency** (travel distance as proxy for cost)
2. **Environmental impact** (CO2 emissions)
3. **User satisfaction** (overutilized parking encounters)
4. **Time efficiency** (average search time)

### 1.4. Simulation Framework

The framework models a scenario where:
- Sensor-equipped parking spaces identify vehicle occupancy and relay information to a centralized management system
- The system analyzes data and generates navigation instructions for drivers
- Parking locations are dynamically assigned based on proximity, current availability, and projected usage trends
- A predictive guidance module computes optimal routes and forecasts spot availability using real-time inputs and historical data

The simulation is implemented using the **Janus multiagent framework**, supporting organization-based modeling and flexible urban mobility simulations.

---

## 2. Literature Review — Section 2

### 2.1. Agent-Based Simulation for Smart Parking Systems

The literature review identifies agent-based simulation as a robust method for representing complex urban mobility systems. Key prior works:

| Study | Contribution |
|---|---|
| **Santos [37]** | Agent-based real-time guidance platform routing vehicles to nearby vacant spots, achieving notable decreases in congestion and search time |
| **Abd Kadir et al. [38]** | Decentralized multiagent architecture for on-the-fly parking space booking with negotiating agents, showing enhanced performance and shorter search durations |
| **Musa et al. [9]** | Digital twin simulation with IoT sensor networks examining efficiency vs. operational cost trade-offs |
| **Farooque et al. [39]** | Intelligent parking framework with multiagent coordination using historical traffic data and sustainability indicators (emission minimization) |
| **Jusat et al. [40]** | Smart city simulation analyzing how parking availability levels affect driver behavior, route selection, and urban congestion; tested dynamic pricing, reservation incentives, and time-based restrictions |
| **Jung [41]** | Agent-based model using Janus for parking behavior under constrained supply, with real-time data feeds and behavioral rules |

**Gap identified**: Few studies have holistically simulated predictive routing, sensor-driven occupancy detection, and driver-system interactions simultaneously, which this study aims to do.

### 2.2. Smart Parking Mechanisms and Sustainable Optimization Strategies

The paper reviews IoT-based sensor technologies and communication protocols for smart parking:

| Category | Technologies/Approaches |
|---|---|
| **Sensor Technologies** | Ultrasonic proximity sensors, infrared detectors, magnetometers, camera-based detection; Raspberry Pi with ultrasonic sensors for smart campus |
| **Communication** | LoRaWAN, NB-IoT, Wi-Fi, 4G/5G |
| **Optimization** | Machine learning for availability prediction; dynamic pricing models; license plate recognition |
| **Privacy** | Differential privacy for IoT-enabled critical infrastructure |
| **Integration** | Cloud-based systems, edge computing, mobile applications for reservation and payment |

Key studies reviewed include Sadhukhan [44] on IoT-based e-parking, Jabbar et al. [46] on Raspberry Pi IoT parking for smart campuses, Pradhan et al. [49] on automated license plate recognition with payment management, and Raman et al. [53] on ML techniques for real-time space availability estimation.

---

## 3. Simulation Model — Section 3

### 3.1. System Overview and Operational Model

**Formal definition:**
- Centralized parking management unit at location l₁, monitoring parking availability and assigning drivers to parking locations l_i ∈ L (i = 2, 3, ..., n)
- Set of parking spots P = {p₁, p₂, ..., pₙ}, each monitored by an IoT-enabled sensor determining occupancy
- Group of vehicles v_m ∈ V representing drivers entering the system

**Data flow:**
1. Each sensor measures real-time occupancy status
2. Transmits data (location, occupancy state, timestamp) to cloud platform
3. System generates optimized parking guidance routes for each incoming driver
4. Parking manager agent at l₁ allocates vehicles using distance, historical usage patterns, and predicted availability
5. Drivers navigate to recommended slot, park, and exit

**Decision-making objective**: Minimize travel distance and parking search time while maximizing space utilization, with continuous updates and dynamic rerouting.

### 3.2. Smart Parking Process

#### 3.2.1. Vehicle Arrival and Parking Request

Vehicle arrival distribution:
- **50%** during peak evening hours [17:00–20:00]
- **25%** in morning [06:00–09:00]
- **25%** during off-peak periods
- **10% fewer** arrivals on weekends

Each parking spot reports occupancy status o_pᵢ ∈ {0, 1} (vacant/occupied). A request from vehicle v_j includes driver location, estimated arrival time, and preferred zone or proximity constraints.

#### 3.2.2. Occupancy Status and System Response

Each parking space has a maximum vehicle occupancy of 1. Current system occupancy rate:

> Occupancy_curr = Σᵢ₌₁ⁿ o_pᵢ

The predictive algorithm forecasts short-term occupancy trends using aggregated sensor data and historical patterns. For each time window t, the predicted availability A_t supports route and assignment optimization.

Total system efficiency is determined by minimizing cumulative search time and vehicle travel distance across all vehicles.

#### 3.2.3. Parking Assignment and Vehicle Routing

- Drivers guided from entry point l₁ to recommended parking space p_i based on current availability and proximity
- If all nearby spots are occupied or predicted demand exceeds capacity: alternative route or reassignment to a different zone
- In high-demand periods: scheduled delayed entry or guidance to peripheral parking hubs
- Traditional systems: manual search without system intervention → longer routes, higher fuel usage, elevated emissions

### 3.3. Agent Domain and System Design

Three major agent types implemented using **Finite State Machine (FSM)** transitions on the **Janus platform**:

#### 3.3.1. Driver Agent

Models vehicle and user behavior navigating the urban environment. Operates through three primary states:
1. **Idling**: Awaiting system-generated parking assignment
2. **Navigating**: Following route provided by system to designated parking slot
3. **Parking**: Successfully parked; IoT sensor updates central system

Each agent initialized with unique arrival time and geographic origin, with variability in arrival patterns, zone preferences, and adherence to routing instructions.

#### 3.3.2. Planner Agent

Primary controller managing:
- Vehicle movements tracking
- Space utilization monitoring
- Dynamic coordination during exceptional situations (space shortages, peak traffic)

#### 3.3.3. Parking Environment Agent

Represents the physical and digital infrastructure:
- Spatial configuration and logical relationships among sensor-equipped slots
- Urban road network layout, entry/exit points
- Cloud-based communication infrastructure
- Handles real-time updates of parking space status and sensor feedback
- Facilitates seamless interaction between drivers, planners, and environment

### 3.4. Experimental Design

| Parameter | Values |
|---|---|
| **Infrastructure scales** | 200, 300, 400, 500 parking units |
| **Occupancy thresholds** | 0.6, 0.75, 0.9 |
| **Periodic review intervals** | Daily, every 2 days, every 3 days, weekly |
| **Simulation repetitions** | 30 per scenario |
| **Simulation duration** | 1 year |
| **Driver agents** | ~900 |
| **IoT-enabled parking slots** | 300 (base case) |
| **Household size** | 5.7 individuals average |
| **Parking slot sharing ratio** | 3 households per slot |

---

## 4. Case Study and Performance Evaluation — Section 4

### 4.1. Case Study Setting

- Representative high-density urban district in a rapidly developing metropolitan area
- Approximately 3 km² mixed-use zoning (residential, commercial, institutional)
- 200-500 sensor-equipped parking units distributed across five parking zones
- IoT-based magnetic or ultrasonic occupancy sensors
- Trip distances and travel times computed using **OpenStreetMap (OSM)** and **GraphHopper routing engine**

### 4.2. Parking Demand Simulation Results

| Metric | Value |
|---|---|
| **Daily search events** | 6,500 – 7,100 per day |
| **Searches per parking slot per day** | ~21 |
| **Searches per household per day** | ~6.5 |
| **Searches per individual driver per day** | ~1.2 |
| **Annual total search events** | ~248,000 |

### 4.3. Performance Measures

Four equations define the evaluation metrics:

**1. Economic Cost:**
> Cost_overall = Σᵢ₌₁ⁿ dᵢ × u_cost

where dᵢ = travel distance of driver i, u_cost = unit cost per km

**2. Environmental Impact (CO2):**
> CE_overall = Σᵢ₌₁ⁿ (FC × dᵢ) × ER + (L × C)

where FC = fuel usage rate, ER = emission rate (kg CO2/liter), L = visited parking areas, C = emission per stop

**3. User Satisfaction:**
> B_full = Σᵢ₌₁ⁿ f(pᵢ), where f(pᵢ) = 1 if overutilized, 0 otherwise

**4. Time Efficiency:**
> T_trip = [Σᵢ₌₁ⁿ (d_{l_{i-1},l_i}/v + t_{wait,l_i})] + d_{l_n,l_0}/v

where v = average vehicle speed, t_{wait} = delay from congestion

### 4.4. Results Summary

#### Travel Distance

| Strategy | Average Daily Distance |
|---|---|
| **Periodic (weekly)** | ~384 km |
| **Periodic (daily)** | ~165 km |
| **Smart (threshold 0.9)** | ~71 km |
| **Smart (threshold 0.6)** | Higher than 0.9, but still much lower than periodic |

The smart system reduced travel distance by routing vehicles directly to vacant spots based on real-time data.

#### CO2 Emissions

| Strategy | Average Daily CO2 |
|---|---|
| **Periodic (weekly)** | ~309 kg/day |
| **Smart (high thresholds)** | < 75 kg/day |

The smart model reduced emissions considerably by minimizing unnecessary circulation.

#### User Satisfaction (Overutilized Zones)

| Strategy | Overutilized Zones/Day |
|---|---|
| **Periodic (weekly)** | 3.0 – 3.2 |
| **Smart (threshold 0.9)** | ~2.0 – 2.16 |

The smart system's threshold-based logic significantly reduced driver frustration.

#### Time Efficiency

| Strategy | Daily Search Time |
|---|---|
| **Periodic (peak)** | Up to 15.7 hours |
| **Smart (threshold 0.9)** | ~3.5 hours |

### 4.5. Overall Improvement Metrics (from Conclusions)

| Metric | Improvement |
|---|---|
| **Average parking search time** | Decreased by 42% |
| **Congestion within parking zones** | Dropped by 35% |
| **CO2 emissions from circling** | Reduced by 27% |

### 4.6. Sensitivity Analysis

The system was tested across four infrastructure scales (200, 300, 400, 500 parking units):

**Key findings:**
- **Periodic model**: Travel distances increased continuously with zone numbers due to static routing ignoring current occupancy data; demanded more operational capacity.
- **Smart model**: Maintained consistently shorter travel distances across all configurations; efficient resource use through dynamic response to real-time slot availability; greater efficiency at higher utilization thresholds (e.g., 0.9).
- **Scalability**: As infrastructure scaled up, periodic models required proportionally more resources. The IoT-based model scaled efficiently by targeting only high-priority areas.
- **Computational performance**: 1-2 seconds per simulated day for 200 parking units; execution time increased linearly with system size, indicating favorable scalability for real-time deployment.

---

## 5. Discussion — Section 4.4

### 5.1. Economic Dimension

The periodic approach resulted in significantly longer travel distances due to rigid schedule-based inspection of all parking spots regardless of occupancy. The sensor-driven model under higher occupancy thresholds (e.g., 0.9) demonstrated targeted navigation, reducing unnecessary trips and optimizing vehicular routing, consistent with principles of sustainable urban mobility.

### 5.2. Environmental Dimension

The periodic model generated higher CO2 emissions, particularly in daily and every-two-day inspection scenarios. The IoT-based strategy achieved notably lower emissions by limiting vehicle movement to only spaces identified as vacant through sensor feedback. Environmental benefits became more pronounced as occupancy thresholds increased.

### 5.3. User Satisfaction Dimension

The periodic strategy (weekly review) exhibited a higher average of 3.2 overutilized slots per day compared to the IoT-driven strategy's average of 2.16. The IoT model demonstrated superior adaptability to real-time demand fluctuations.

### 5.4. Time Efficiency Dimension

Longer periodic intervals increased inspection times and user delays, placing greater demand on human and logistical resources. The smart system significantly reduced search and inspection times, particularly with higher thresholds.

### 5.5. Acknowledged Limitations

1. **Simplified behavioral assumptions**: Agent behavior may not capture the full complexity of human decision-making in real-world conditions.
2. **No unpredictable disruptions**: The framework does not currently incorporate sensor failures, communication lags, or abnormal traffic surges.
3. **Aggregated calibration data**: Simulation parameters based on aggregated data may not fully reflect diverse operational contexts of different cities.
4. **No privacy/security mechanisms**: Data privacy and security were not explicitly integrated despite being essential for IoT-based public systems.
5. **Simulated data only**: The model relies on simulated data rather than empirical real-world records.

---

## 6. Conclusions — Section 5

The paper concludes that combining IoT technologies with agent-based modeling offers a scalable and practical solution to contemporary urban parking challenges. Key achievements:

- Average parking search time decreased by **42%**
- Congestion within parking zones dropped by **35%**
- CO2 emissions from circling vehicles reduced by **27%**
- User satisfaction improved through mobile-enabled reservation and payment options

**Future research directions:**
1. Integration of real-time traffic data, high-resolution spatial mapping, and empirical sensor records
2. Broader real-world testing across diverse urban environments differing in density, infrastructure, and user behavior
3. Incorporating advanced AI techniques for dynamic routing
4. Blockchain integration for secure data handling and transaction transparency
5. Privacy-by-design architectures and participatory modeling approaches
6. Embedding robust privacy-preserving mechanisms (data anonymization, encryption, GDPR compliance)

---

## Overall Assessment

### Strengths

1. **Clear problem formulation**: The paper well-articulates the real-world problem of urban parking inefficiency and its cascading effects on congestion, emissions, and livability. The motivation is strong and relatable.

2. **Structured simulation design**: The multiagent model with three agent types (driver, planner, environment) using FSM is well-defined. The roles, states, and interactions are clearly described, making the simulation reproducible.

3. **Comprehensive evaluation metrics**: The four-dimensional evaluation framework (economic, environmental, satisfaction, time) provides a holistic assessment rather than focusing on a single dimension.

4. **Formal mathematical formulations**: The performance measures are mathematically defined with clear equations for cost, CO2 emissions, satisfaction, and time efficiency.

5. **Sensitivity analysis**: Testing across four infrastructure scales (200-500 units) and multiple threshold/interval configurations demonstrates robustness and generalizability of the findings.

6. **Statistical reliability**: Each scenario simulated 30 times to minimize stochastic variability, with averaged results.

7. **Practical relevance**: The framework directly addresses real challenges faced by rapidly urbanizing cities, with concrete recommendations for policymakers and planners.

8. **Rich visualization**: Multiple figures (9+) comparing strategies across metrics provide clear visual evidence of the smart system's advantages.

9. **Sustainability focus**: The paper explicitly connects smart parking to broader SDGs and sustainability objectives, including reduced emissions and improved livability.

10. **Self-aware limitations**: The paper honestly acknowledges its limitations and proposes concrete future work directions.

### Weaknesses

1. **No real-world validation**: The entire study relies on simulation with assumed parameters. No real sensor data, real parking lots, or real driver behavior was used. The claim in the abstract of "empirical data collected from sensors" is somewhat misleading, as the actual implementation uses synthetic/generated data calibrated by publicly available statistics.

2. **Unnamed and non-specific study area**: The case study describes a "representative, high-density urban district located in a rapidly developing metropolitan area" without naming the actual city or district. Demographic parameters (household size of 5.7, high vehicle ownership) suggest a Gulf city, but this is never explicitly stated. This vagueness undermines reproducibility and contextual validity.

3. **Unrealistic comparison baseline**: The "periodic review" strategy as the baseline comparator is unusual for parking systems. Real traditional parking does not involve "periodic inspection of all zones" on daily/weekly schedules; drivers simply circle looking for spots. The paper appears to adapt terminology from waste collection research (where periodic collection is a standard baseline), which does not translate well to parking.

4. **Overloaded terminology**: The paper uses terms like "bins" (in one instance, Section 4.4 discussion: "fewer bins required service") suggesting potential adaptation from a waste management simulation to parking context without thorough terminology cleanup.

5. **Limited novelty in the simulation framework**: The Janus multiagent platform is not new, and the three-agent architecture (driver, planner, environment) is relatively standard in agent-based modeling literature. The paper does not clearly articulate what is novel about this particular implementation beyond applying existing tools to a parking context.

6. **Weak ML/predictive component**: Despite claiming predictive analytics as a key feature, the paper provides very little detail on the actual prediction algorithms used. How are historical patterns weighted? What machine learning model is employed? What is its accuracy? These are left unexplained.

7. **Missing statistical tests**: While scenarios are simulated 30 times, no confidence intervals, standard deviations, or statistical significance tests are reported. The comparisons rely entirely on average values without any measure of uncertainty or variability.

8. **Oversimplified cost model**: The economic cost is proxied solely by travel distance. A more realistic model would include fuel cost, time cost, labor cost, infrastructure deployment and maintenance cost, sensor replacement cost, cloud computing cost, etc.

9. **No comparison with state-of-the-art**: The paper does not compare its approach with other published smart parking solutions (e.g., reinforcement learning-based parking, deep learning prediction models, dynamic pricing systems). The comparison is limited to the IoT model vs. a basic periodic approach.

10. **CO2 emission model limitations**: The emission formula is simplified (linear relationship with distance + stops). Real vehicular emissions depend on speed, acceleration/deceleration patterns, vehicle type, cold start effects, and idling, none of which are modeled.

11. **Single-author work with limited methodological depth**: As a single-author paper, it may have benefited from interdisciplinary collaboration (e.g., transportation engineering, environmental science, urban planning) to strengthen the methodology.

12. **Figures described but not deeply analyzed**: Several figures (1-12) are referenced and briefly described, but there is limited statistical or analytical depth in interpreting the results beyond qualitative comparison (e.g., "the smart model performed better").

13. **No discussion of deployment feasibility**: The paper does not address the practical costs, challenges, and timelines of deploying an IoT sensor network across hundreds of parking spots in a real urban setting. Infrastructure investment, maintenance, sensor accuracy degradation, and vandalism are not discussed.

14. **Threshold selection not justified**: The occupancy thresholds (0.6, 0.7, 0.8, 0.9) are tested but there is no optimization or recommendation for which threshold is optimal under which conditions. Why these specific values?

### Structural Comments

The paper follows a standard structure: Introduction → Literature Review → Model → Case Study/Results → Discussion → Conclusions. This is appropriate and easy to follow. However, the Discussion section (4.4) is placed within the Results section rather than as a standalone section, which slightly deviates from conventional academic structure. The literature review could benefit from a more systematic organization, perhaps using a comparison table of existing approaches.

### Significance and Relevance

The paper addresses a practical and growing urban challenge. Its primary value lies in:
- Demonstrating the potential of IoT-sensor-based parking management through simulation
- Providing a structured comparison framework with four evaluation dimensions
- Offering concrete percentage improvements as talking points for policymakers

However, its academic contribution is moderate due to the lack of real-world validation, limited novelty in the simulation approach, and absence of comparison with state-of-the-art methods. The paper is best positioned as a **proof-of-concept simulation study** suitable for practitioners interested in the potential benefits of IoT-enabled parking, rather than a methodological advancement in the agent-based simulation or IoT research communities.

---

## Summary of Key Figures

| Figure | Content |
|---|---|
| Figure 1 | Cumulative frequency distribution of daily parking events |
| Figure 2 | Daily parking demand patterns over the simulation period |
| Figure 3 | Average parking occupancy by zone, household, and driver |
| Figure 4 | Annual parking demand across traditional and smart allocation strategies |
| Figure 5 | Average distance traveled per trip under different parking strategies |
| Figure 6 | Estimated CO2 emissions per trip by parking strategy |
| Figure 7 | Average number of overutilized parking zones per day |
| Figure 8 | Daily parking search time per driver under varying scenarios |
| Figure 9 | Average distance traveled per day under varying zone counts |
| Figure 10 | Average number of vehicles used per day under different configurations |
| Figure 11 | Average number of parking zones visited daily across thresholds |
| Figure 12 | Average time spent searching for parking under varying conditions |
