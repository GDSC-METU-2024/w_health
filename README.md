# W-Health
![Alt text](README_assets/logo.jpeg)
## Project Overview

W-Health is a comprehensive healthcare app designed to empower women in navigating their healthcare journey. Our solution includes features like a supportive forum for sharing experiences, an intelligent AI assistant providing personalized health guidance, a convenient doctor-finding tool, and an educational hub offering comprehensive health information. The goal is to foster a community-driven approach to women's health and well-being, breaking down barriers and promoting gender equality in healthcare.

## Problem Statement

W-Health addresses significant barriers obstructing women's access to essential healthcare information and services. Limited access, stigma, and taboos surrounding women's health topics hinder informed decision-making and timely medical assistance, perpetuating disparities in health outcomes. The app aims to empower women by providing knowledge, support, and access to healthcare professionals, with a specific focus on young girls who face additional challenges due to a lack of health education.

## Sustainable Development Goals

Our project aligns with United Nations' Sustainable Development Goal 5: Gender Equality, focusing on targets 5.6.1, which emphasize women's decision-making autonomy in healthcare. Additionally, we're committed to Goal 3: Good Health and Well-being, tackling target 3.7 to facilitate information and education on health. 

<div style="display: flex; justify-content: space-between;">
    <img src="README_assets/E_GIF_03.gif" alt="Image 1" width="300">
    <img src="README_assets/E_GIF_05.gif" alt="Image 2" width="300">
</div>


## Technical Architecture

### Components
- **Frontend:** Flutter for a cross-platform, responsive user interface.
- **Backend:** Firebase for well-organized databases and real-time synchronization.
- **AI Chatbot:** Gemini for personalized health guidance.
- **Location Services:** Google Maps API for doctor-finding and user location.

<div style="display: flex; justify-content: space-between;">
    <img src="README_assets/flutter.png" alt="Image 2" style="width: 10%;">
    <img src="README_assets/firebase_logo_icon_171157.png" alt="Image 1" style="width: 10%;">
    <img src="README_assets/Gemini-Logo.png" alt="Image 4" style="width: 22%;">
    <img src="README_assets/GoogleMaps-Icon-alone-1.webp" alt="Image 5" style="width: 15%;">
</div>

### Products and Platforms
- **Flutter:** Chosen for its cross-platform capabilities and user-friendly features.
- **Firebase:** Selected for its scalability, real-time synchronization, and ease of use.
- **Gemini:** Utilized for its robust AI capabilities and easy integration.
- **Google Maps API:** Integrated for comprehensive mapping functionalities and accurate location data.

## User Testing

We conducted user testing with diverse groups, receiving feedback on the forum, AI assistant, and doctor-finding features. Improvements were made in forum organization, AI guidance clarity, and doctor profile richness based on user suggestions.


## Generative AI

### Gemini Healthcare Assistant
Gemini is an innovative healthcare assistant app designed to help users find the best health branch to visit based on their symptoms and personal preferences. Leveraging advanced AI techniques, Gemini offers personalized recommendations tailored to each user's needs, making healthcare navigation easier and more efficient.

### Features
- Symptom Recognition: Gemini utilizes cutting-edge image recognition technology to analyze user-submitted photos of their symptoms. By simply taking a photo of the affected area, users can receive accurate suggestions for the type of healthcare facility to visit.
- Personalized Recommendations: Through a combination of user input and AI algorithms, Gemini provides personalized recommendations for healthcare branches based on factors such as location, user preferences, and the severity of symptoms.
- Chat History: Gemini features a built-in chat history function, allowing users to review past interactions with the assistant. This feature is implemented using local code techniques to ensure privacy and security.
- Intuitive UI Design: The app boasts a sleek and user-friendly interface, making it easy for users to navigate and access the features they need. From submitting symptom photos to receiving recommendations, every step of the process is designed with the user in mind.

## Project Impact

Our app transforms women's healthcare experiences by providing a supportive community, personalized guidance, access to healthcare providers, and medication tracking. User feedback and testing demonstrated the effectiveness of our solution in addressing healthcare disparities.

## Future Steps (Edit after TOP-100)

- [x] Medication tracking feature (Gets notifications for your periodic medical care)
- [x] Period cycle monitoring
- [x] Smartwatch version of W-Health
- [x] ID verification


### Note:
Partnerships with healthcare providers and community organizations will be pursued to expand our reach and impact.

## ID Verification for Enhanced Security

In our mobile app project, ensuring a safe and secure environment for our users is paramount. One of the key measures we've implemented to achieve this is ID verification for user accounts. This process not only adds an extra layer of security but also fosters trust and credibility within our community.
<div style="display: flex; justify-content: space-between;">
    <img src="https://github.com/GDSC-METU-2024/w_health/assets/96688864/ff933f0c-894f-43e2-b102-c41f875c6275" alt="Image 2" style="width: 10%;">
</div>




### How ID Verification Works

When users sign up for an account on our platform, they are required to undergo a thorough ID verification process. This typically involves providing official identification documents such as a driver's license, passport, or national ID card.

### Benefits of ID Verification

#### 1. Enhanced Security:
   By verifying the identity of our users, we significantly reduce the risk of fraudulent activities such as fake accounts, impersonation, and account takeovers. This helps create a safer online environment for all members of our community.

##### After Verification & Before Verification
![image](https://github.com/GDSC-METU-2024/w_health/assets/96688864/3b6c4f83-2eef-4687-b87d-a0217297d045)----------------![image](https://github.com/GDSC-METU-2024/w_health/assets/96688864/101eeb3a-9523-4834-a8e2-e32081e175a3)



#### 2. Trust and Credibility:
   ID verification instills trust and credibility within our platform. Users feel more confident engaging in discussions, sharing personal information, and conducting transactions knowing that other members have been vetted through a rigorous verification process.

#### 3. Compliance with Regulations:
   Depending on the nature of our platform and the regions we operate in, ID verification may also be a legal requirement. By adhering to these regulations, we demonstrate our commitment to operating ethically and responsibly.

### User Privacy and Data Security

We understand the sensitivity of personal information and are dedicated to protecting the privacy and security of our users' data. We decided to use BlinkID SDK Flutter plugin by @BlinkID. It "seems" trustful for me. Because of privacy and security of data, however, we are not using any data from a scanned ID card, instead we are giving identity badge directly if ID scan is successful.
Highlight that we *do not use and/or store data* from ID cards



## Scaling Considerations

The chosen technical architecture, including Flutter, Firebase, Gemini, and Google Maps API, provides a solid foundation for scalability. Minor adjustments and regular optimizations will be implemented to support a growing user base.

Feel free to explore our code and contribute to the W-Health project!


# How To Run/Test The App?

## Download APK

[DOWNLOAD LINK](https://drive.google.com/file/d/1fVlZtNjj_hEXEYDU4YFSr7eE9c0Y-d7K/view?usp=drive_link)

Or You can scan the QR Code.

![QR_Code](https://github.com/GDSC-METU-2024/w_health/assets/96688864/662389c4-95a2-4d58-abfd-69582a2a8184)

Please use **Android**.

## RUN

You can run the code directly in your emulator or edge device. Please note that same API's are hidden (Gemini API, Google Maps API, Firebase API etc.). Therefore, you should check the gitignore file and create your own API files to launch our app in your computer. We highly recommend you to download the APK to test our application. 

Clone the **repo**, and run the **main** flutter file directly on mobile device or smartwatch.
