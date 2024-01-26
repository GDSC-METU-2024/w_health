class DataModel {
  final String title;
  final String imageName;
  final String author;
  final String date;
  final String context;

  DataModel(this.title, this.imageName, this.author, this.date, this.context);
}

List<DataModel> dataList = [
  DataModel(
      "Evidence mounts that Covid in pregnancy can cause health issues in babies",
      "assets/blogs/images/pregnant.jpeg",
      "Aria Bendix",
      "Jan. 26, 2024",
      'Just over four years since Covid emerged, it has become increasingly clear that infections in pregnant mothers can lead to serious health risks in infants.\n\n'
          'The latest finding: Babies born to mothers who had Covid during pregnancy had "unusually high rates" of respiratory distress at birth or shortly thereafter, according to a study published Wednesday in the journal Nature Communications.\n\n'
          'The authors defined respiratory distress as having at least two out of four symptoms: a slow breathing rate, pale or bluish skin, flaring nostrils or a retraction of the chest with each breath.\n\n'
          'The study enrolled 221 pregnant women with Covid — mostly Black or Hispanic women in Los Angeles. None of the nearly 200 babies studied, who were born between April 2020 and August 2022, tested positive for Covid at birth. Around 17% were diagnosed with respiratory distress — higher than the average among newborns, which estimates put around 5% to 7%.\n\n'
          '"The average duration of a hospital stay for these infants was about 24 days. They were quite sick," said Dr. Olivia Man, the lead author of the study.\n\n'
          'Other effects of Covid during pregnancy, according to prior research, include an increased risk of severe illness and death for the mother, preterm birth, stillbirth and neurodevelopmental issues in the first year of a child’s life.\n\n'
          'A 2022 study on those developmental issues found that Covid during pregnancy was associated with delayed speech or motor skills, though the link isn’t fully understood. A follow-up study found that the association was only statistically significant in male babies, while another study found no association at all.\n\n'
          '"We don’t know if these early speech and motor delays will go on to be matched by later neurodevelopmental diagnoses like autism or ADHD," said Dr. Andrea Edlow, a maternal-fetal medicine specialist at Massachusetts General Hospital who conducted some of that research.\n\n'
          'These risks aren’t exclusive to Covid. Having the flu during pregnancy increases the odds of preterm birth and birth defects, and some studies have also linked bacterial and viral infections during pregnancy to a risk of autism and depression in children.\n\n'
          '"There are various infections that affect fetuses in different ways, but we’ve not had something like this that has affected a generation all at the same time," said Dr. Shahnaz Duara, a professor of pediatrics at the University of Miami Miller School of Medicine.\n\n'
          '"Twenty years from now, the kids who were born during the pandemic, we will be looking at them in a different way," she said. "Because it’s not the odd kid here and there — it’s waves upon waves upon waves of women who have had Covid during pregnancy."\n\n'
          'In the new study, the timing of a mother’s infection didn’t seem to have an effect on whether a baby experienced respiratory issues, but her vaccination status did. Infants born to unvaccinated mothers had three times the odds of respiratory distress than those whose moms had received at least one mRNA vaccine dose.\n\n'
          'As for why babies exposed to Covid in the womb may develop health issues, inflammation is the leading hypothesis.\n\n'
          'When a pregnant person gets Covid, their body may ramp up the production of cytokines — proteins involved in the immune response — that trigger inflammation. This could increase inflammation in their baby as well.\n\n'
          'It’s possible that these inflammatory proteins cross the placenta. But the experts interviewed said the likelier explanation is that a mother’s inflammation activates immune cells in the placenta, which then activate immune cells in the infant.\n\n'
          'Dr. Mary Prahl, an associate professor of pediatrics at the University of California, San Francisco said there appears to be "some sort of signaling on the infant side that’s saying, \'Hey, something’s wrong. Let’s release all of our cytokines and our inflammatory markers to fight what’s happening.\'"\n\n'
          'Indeed, the new study found elevated levels of inflammatory proteins in blood samples taken from the newborns.\n\n'
          '"What we think is happening is that Covid creates this sort of inflammatory cascade in the mother, and that these infants are responding to their mother’s own inflammation," said Man, who conducted the research as a medical student at the University of California, Los Angeles.\n\n'
          '"The risk of transmitting the actual virus in utero from mother to child is very low," she added.\n\n'
          'Man’s study found, in particular, that the inflammatory response in infants disrupted the normal function of cilia — hairlike structures that remove pathogens or particulate matter from the lungs.\n\n'
          '"The implications would be that these children may be less likely to clear future infections or they may have significant difficulty breathing later in life," she said.\n\n'
          'In theory, Man added, long-term consequences could include asthma. Her study also found elevated levels of an antibody called immunoglobulin E, which have been linked to allergies. But more research is needed.\n\n'
          'Of course, not all babies whose mothers get Covid in pregnancy experience negative outcomes.\n\n'
          '"We certainly don’t want to scare pregnant people," Edlow said.\n\n'
          'Premature birth can raise the risk of developmental delays and breathing issues on its own — though 38% of the babies with respiratory distress in Man’s study were born full term.\n\n'
          'Edlow noted, as well, that infants born between 37 and 39 weeks still have an increased risk of mild respiratory distress, so "it would be very hard to tease apart how much of that is actually due to some inflammation in the neonates that’s from Covid."\n\n'
          'Covid vaccines are safe at any point in pregnancy, and the Centers for Disease Control and Prevention doesn’t specify an ideal trimester.\n\n'
          'Duara said protection from vaccines tends to wane after four to six months, so she suggested that "somewhere between 12 and 18 weeks is probably a good time to get it because you will still have immunity by the time your baby’s born."\n\n'
          'Getting vaccinated during pregnancy, she added, tends to give newborns higher antibody levels than a Covid infection in pregnancy does, so even pregnant mothers who get Covid should get the shot if eligible.\n\n'
          '"If it’s time for you to get another booster, take it," Duara said.\n\n'
          'Edlow, meanwhile, said research suggests that vaccinating mothers in the early third trimester maximizes the antibody levels transferred to babies, though she cautioned against waiting for that reason.\n\n'
          '"If you’ve never been vaccinated, you shouldn’t be trying to time your Covid vaccine to optimize antibody protection for your neonate," she said. "You should be thinking about yourself."\n\n'
  ),
  DataModel(
    "Cervical cancer increasing in women in their 30s and 40s, new report finds",
    "assets/blogs/images/cancer.jpeg",
    "Liz Szabo",
    "Jan. 20, 2024",
    'After decades of good news in the fight against cervical cancer — marked by decades of steady declines in cases and deaths — a new report suggests that some women are being left behind.\n\n'
        'Thanks to early detection and treatment, rates of cervical cancer have plummeted by more than half over the past 50 years. Rates are falling fastest among women in their early 20s, the first generation to benefit from HPV vaccines, which were approved in 2006.\n\n'
        'HPV, the human papillomavirus, causes six types of cancer, including cervical cancer.\n\n'
        'Among women aged 20 to 24, cervical cancer incidence dropped by 65% from 2012 to 2019, according to a report released Wednesday from the American Cancer Society.\n\n'
        '“Cervical cancer is one of the best-understood cancers,” said Dr. Nicolas Wentzensen, a senior investigator in the National Cancer Institute’s clinical genetics branch, who was not involved in the new report. “We’ve made amazing progress and it remains a success story.”\n\n'
        'Not all women are benefitting from that progress, however.\n\n'
        'The overall cervical cancer rate among women of all ages has stopped falling.\n\n'
        'Too old for HPV vaccination?\n\n'
        'Among women in their 30s and early 40s, incidence has been edging upward. Diagnosis of cervical cancer among women ages 30 to 44 rose almost 2% a year from 2012 to 2019.\n\n'
        '“We need to make sure we are not forgetting about that generation that was a little too old for HPV vaccination,” said Jennifer Spencer, an assistant professor at the Dell Medical School at University of Texas-Austin who studies population health.\n\n'
        'Fortunately, the cancers found in 30- and 40-something women were mostly early, curable tumors, said Ahmedin Jemal, senior author of the new report and the cancer society’s senior vice president for surveillance and health equity science. About 13,800 American women are diagnosed with cervical cancer each year and 4,360 die from the disease.\n\n'
        'Researchers didn’t delve into the reasons why cervical cancer is becoming more common for some women, Jemal said.\n\n'
        'But screening rates may play a role, said Spencer, who was not involved in the study. Screenings allow doctors to find and remove precancerous lesions before they become cancerous. More than half of women diagnosed with cervical cancer have either never been screened or haven’t been screened in the past five years, according to the Centers for Disease Control and Prevention.\n\n'
        'Studies show that fewer women are keeping up with routine cervical cancer exams.\n\n'
        'The number of women ages 21 to 65 who have been screened according to the latest guidelines fell from 87% in 2000 to 72%, according to the National Cancer Institute.\n\n'
        'Other research has found that women ages 21 to 29 were the least likely to be up to date on their screenings, with 29% being overdue. Women were also more likely to be behind schedule if they were nonwhite, uninsured, lived in rural areas or identified as gay, lesbian or bisexual, according to the study.\n\n'
        'The U.S. Preventive Services Task Force recommends screening women ages 21-29 with Pap smears — which examine cells under a microscope — every three years. Women ages 30 to 65 can be screened either every three years with a Pap smear or every five years with an HPV test or combination of the two tests. HPV tests can detect genetic material from the human papilloma virus.\n\n'
        'Spencer said it’s possible that low screening rates among 20-something women could help explain the slightly higher cervical cancer rates among women in their 30s and early 40s.\n\n'
        'When women in one of Spencer’s studies were asked why they hadn’t been screened recently, they commonly said that they didn’t know they needed to be screened or that a health provider hadn’t recommended it. Only 1% women ages 21 to 29 said they had skipped screening because they had received the HPV shot.\n\n'
        '“Clearly, more patient education is needed,” said Dr. Betty Suh-Burgmann, chair of gynecologic oncology for Kaiser Permanente Northern California. Her health care system already reminds women about screenings by postcards, letters and phone calls. This year, Kaiser Permanente will begin texting patients, as well, she said.\n\n'
        'Changing guidelines about cervical cancer screening also may have left women and health providers confused, Spencer said. Until the early 2000s, most doctors screened women annually. The task force has updated its guidelines three times in the past two decades, and is in the process of reviewing them again.\n\n'
        'Others say the increase in cervical cancer rates among 30- and 40-something women isn’t so easily explained.\n\n'
        'Cervical tumors tend to grow slowly, typically taking a decade or more to morph from precancers to cancers, Wentzensen said. He said there may be other factors at play. For example, he wonders if more women moving to the United States haven’t been screened, putting them at higher risk.\n\n'
        'And Spencer notes that screening is just the first step to saving lives. Women with abnormal screening results need to undergo additional testing and, if necessary, treatment.\n\n'
        'In a study published last year in the American Journal of Preventive Medicine, Spencer and her colleagues found that only 73% of women with abnormal screening results received follow-up care.\n\n'
        '“The onus is on the health care system to think about who is slipping through the cracks,” Spencer said.\n\n',
  ),

  DataModel(
    "Protein may help protect women against many types of chronic disease",
    "assets/blogs/images/protein.jpeg",
    "Linda Carroll",
    "Jan. 17, 2024",
    'A diet rich in protein — especially plant protein — may keep women healthier as they age, a new study suggests.\n\n'
        'In an analysis of data from more than 48,000 women, researchers found that each 3% increase in the amount of plant protein consumed was associated with a 38% higher likelihood of staying healthy as the women got older, meaning fewer or no chronic diseases, better physical mobility and little cognitive decline, according to the report published in the American Journal of Clinical Nutrition on Wednesday.\n\n'
        '“In particular, plant protein, seemed to be favorably associated with good mental health status and a lack of impairments in memory,” said the study’s lead author, Andres Ardisson Korat, a scientist at the Jean Mayer USDA Human Nutrition Research Center on Aging at Tufts University.\n\n'
        '“The advantage of consuming more plant protein — compared to other nutrients in the diet — is that plant protein is associated with a lower risk of cardiovascular disease and other chronic conditions,” he said, adding that plant protein also promotes good physical function by enhancing muscle synthesis.\n\n'
        'Moreover, plant protein “comes from food sources that typically contain high-quality carbohydrates, containing more fiber, vitamins and minerals, and antioxidants,” Ardisson Korat said.\n\n'
        'To see how protein consumption affects healthy aging, the researchers looked at surveys from more than 48,000 participants in the Nurses\' Health Study, a long-term investigation into the risk factors for major diseases in women. The data, which was collected every four years from 1984 to 2016, tracked how frequently people ate certain foods. At the start of the study, the women were ages 38 to 59 and were in good physical and mental health.\n\n'
        'For the new analysis, the researchers calculated protein intake by multiplying the number of times each food item was consumed by its protein content and then totaled the amount of protein across all food items.\n\n'
        'For women to be categorized as healthy by the time they were between 70 to 93, they had to be free from the major chronic health conditions associated with aging in the U.S.: cancer (except for nonmelanoma skin cancer), Type 2 diabetes, cardiovascular diseases, stroke, kidney failure, Parkinson’s disease, multiple sclerosis and amyotrophic lateral sclerosis, or ALS.\n\n'
        'Adult women, 31 to 59, need the equivalent of 5 ounces to 6 ounces daily, according to the recommended dietary allowance. A 3% increase in protein in a 2,000-calorie diet — typical for middle-age women — is 60 calories or half an ounce of protein, Ardisson Korat said.\n\n'
        'This amount of protein could be found in one cup of cooked beans or cooked lentils.\n\n'
        'However, with every calorie of protein added to the diet, something else needs to be switched out, such as refined carbs or unhealthy fat, Ardisson Korat said.\n\n'
        'Early in the study, the sources of plant proteins included bread, vegetables, pasta, potatoes, nuts, beans and peanut butter.\n\n'
        'Plant foods that are relatively high in protein include:\n\n'
        'Lentils.\n'
        'Green peas.\n'
        'Spinach.\n'
        'Broccoli.\n\n'
        'The women who ate more plant proteins were 46% more likely to be healthy into their later years, the analysis showed. Women who consumed more animal protein, such as beef, chicken, milk, fish and cheese, however, were 6% less likely to stay healthy as they aged.\n\n'
        'However, because the women in the Nurses\' Health Study were mostly white, it’s unclear how the findings would apply to other groups.\n\n'
        'The new report amplifies results of earlier studies that have shown that people who consume plant proteins, especially those who are vegetarians, tend to be healthier with lower cholesterol levels, a better ability to burn calories and lower levels of inflammation and dementia.\n\n'
        'Nutrition studies are rarely done as controlled clinical trials, and the new research was based on food questionnaires, so it doesn\'t prove that increasing plant proteins helps with healthy aging.\n\n'
        'However, the many years of follow-up provide confidence in the findings, said Marie-Pierre St-Onge, an associate nutrition professor at the Columbia University Vagelos College of Physicians and Surgeons in New York City.\n\n'
        'She said the focus on prolonged health as opposed to disease or death was refreshing.\n\n'
        '“While we all want an increased life expectancy, we really want those extra years to be in a healthy state,” St-Onge said.\n\n'
        'Dr. Deepak Bhatt, a cardiologist who is the director of the Mount Sinai Fuster Heart Hospital in New York City, said the finding about plant proteins is backed by other evidence that they are good for reducing heart attacks and cancer risk.\n\n'
        '“I would encourage both women and men to adopt a plant-based diet,” he said.\n\n'
        'Dr. Kathryn Lindley, a cardiologist who is the director of the Women’s Heart Center at the Vanderbilt University Medical Center in Nashville, Tennessee, noted that there could be other reasons people who were eating a lot of plant protein might have been healthier in their old age.\n\n'
        'For example, the women eating more protein might have healthier diets overall or they might be living a healthier lifestyle overall, she said. Or they may have been able to afford more quality food choices and had better access to health care and exercise facilities.\n\n'
        'Yet, even with limitations, the study is "a good starting point," Lindley said.\n\n',
  ),
  DataModel(
    "Medical mistakes are more likely in women and minorities",
    "assets/blogs/images/blackwoman.webp",
    "Liz Szabo | KFF Health News",
    "Jan. 15, 2024",
    'Charity Watkins sensed something was deeply wrong when she experienced exhaustion after her daughter was born.\n\n'
        'At times, Watkins, then 30, had to stop on the stairway to catch her breath. Her obstetrician said postpartum depression likely caused the weakness and fatigue. When Watkins, who is Black, complained of a cough, her doctor blamed the flu.\n\n'
        'About eight weeks after delivery, Watkins thought she was having a heart attack, and her husband took her to the emergency room. After a 5½-hour wait in a North Carolina hospital, she returned home to nurse her baby without seeing a doctor.\n\n'
        'When a physician finally examined Watkins three days later, he immediately noticed her legs and stomach were swollen, a sign that her body was retaining fluid. After a chest X-ray, the doctor diagnosed her with heart failure, a serious condition in which the heart becomes too weak to adequately pump oxygen-rich blood to organs throughout the body. Watkins spent two weeks in intensive care.\n\n'
        'She said a cardiologist later told her, “We almost lost you.”\n\n'
        'Watkins is among 12 million adults misdiagnosed every year in the U.S.\n\n'
        'In a study published Jan. 8 in JAMA Internal Medicine, researchers found that nearly 1 in 4 hospital patients who died or were transferred to intensive care had experienced a diagnostic error. Nearly 18% of misdiagnosed patients were harmed or died.\n\n'
        'In all, an estimated 795,000 patients a year die or are permanently disabled because of misdiagnosis, according to a study published in July in the BMJ Quality & Safety periodical.\n\n'
        'Some patients are at higher risk than others.\n\n'
        'Women and racial and ethnic minorities are 20% to 30% more likely than white men to experience a misdiagnosis, said Dr. David Newman-Toker, a professor of neurology at Johns Hopkins School of Medicine and the lead author of the BMJ study. “That’s significant and inexcusable,” he said.\n\n'
        'Researchers call misdiagnosis an urgent public health problem. The study found that rates of misdiagnosis range from 1.5% of heart attacks to 17.5% of strokes and 22.5% of lung cancers.\n\n'
        'Weakening of the heart muscle — which led to Watkins’ heart failure — is the most common cause of maternal death one week to one year after delivery, and is more common among Black women.\n\n'
        'Heart failure “should have been No. 1 on the list of possible causes” for Watkins’ symptoms, said Dr. Ronald Wyatt, chief science and chief medical officer at the Society to Improve Diagnosis in Medicine, a nonprofit research and advocacy group.\n\n'
        'Maternal mortality for Black mothers has increased dramatically in recent years. The United States has the highest maternal mortality rate among developed countries. According to the Centers for Disease Control and Prevention, non-Hispanic Black mothers are 2.6 times as likely to die as non-Hispanic white moms. More than half of these deaths take place within a year after delivery.\n\n'
        'Research shows that Black women with childbirth-related heart failure are typically diagnosed later than white women, said Dr. Jennifer Lewey, co-director of the pregnancy and heart disease program at Penn Medicine. That can allow patients to further deteriorate, making Black women less likely to fully recover and more likely to suffer from weakened hearts for the rest of their lives.\n\n'
        'Watkins said the diagnosis changed her life. Doctors advised her “not to have another baby, or I might need a heart transplant,” she said. Being deprived of the chance to have another child, she said, “was devastating.”\n\n'
        'Racial and gender disparities are widespread.\n\n'
        'Women and minority patients suffering from heart attacks are more likely than others to be discharged without diagnosis or treatment.\n\n'
        'Black people with depression are more likely than others to be misdiagnosed with schizophrenia.\n\n'
        'Minorities are less likely than whites to be diagnosed early with dementia, depriving them of the opportunities to receive treatments that work best in the early stages of the disease.\n\n'
        'Misdiagnosis isn’t new. Doctors have used autopsy studies to estimate the percentage of patients who died with undiagnosed diseases for more than a century. Although those studies show some improvement over time, life-threatening mistakes remain all too common, despite an array of sophisticated diagnostic tools, said Dr. Hardeep Singh, a professor at Baylor College of Medicine who studies ways to improve diagnosis.\n\n'
        '“The vast majority of diagnoses can be made by getting to know the patient’s story really well, asking follow-up questions, examining the patient, and ordering basic tests,” said Singh, who is also a researcher at Houston’s Michael E. DeBakey VA Medical Center. When talking to people who’ve been misdiagnosed, “one of the things we hear over and over is, ‘The doctor didn’t listen to me.’”\n\n'
        'Racial disparities in misdiagnosis are sometimes explained by noting that minority patients are less likely to be insured than white patients and often lack access to high-quality hospitals. But the picture is more complicated, said Dr. Monika Goyal, an emergency physician at Children’s National Hospital in Washington, D.C., who has documented racial bias in children’s health care.\n\n'
        'In a 2020 study, Goyal and her colleagues found that Black kids with appendicitis were less likely than their white peers to be correctly diagnosed, even when both groups of patients visited the same hospital.\n\n'
        'Although few doctors deliberately discriminate against women or minorities, Goyal said, many are biased without realizing it.\n\n'
        '“Racial bias is baked into our culture,” Goyal said. “It’s important for all of us to start recognizing that.”\n\n'
        'Demanding schedules, which prevent doctors from spending as much time with patients as they’d like, can contribute to diagnostic errors, said Karen Lutfey Spencer, a professor of health and behavioral sciences at the University of Colorado-Denver. “Doctors are more likely to make biased decisions when they are busy and overworked,” Spencer said. “There are some really smart, well-intentioned providers who are getting chewed up in a system that’s very unforgiving.”\n\n'
        'Doctors make better treatment decisions when they’re more confident of a diagnosis, Spencer said.\n\n'
        'In an experiment, researchers asked doctors to view videos of actors pretending to be patients with heart disease or depression, make a diagnosis, and recommend follow-up actions. Doctors felt far more certain diagnosing white men than Black patients or younger women.\n\n'
        '“If they were less certain, they were less likely to take action, such as ordering tests,” Spencer said. “If they were less certain, they might just wait to prescribe treatment.”\n\n'
        'It’s easy to see why doctors are more confident when diagnosing white men, Spencer said. For more than a century, medical textbooks have illustrated diseases with stereotypical images of white men. Only 4.5% of images in general medical textbooks feature patients with dark skin.\n\n'
        'That may help explain why patients with darker complexions are less likely to receive a timely diagnosis with conditions that affect the skin, from cancer to Lyme disease, which causes a red or pink rash in the earliest stage of infection. Black patients with Lyme disease are more likely to be diagnosed with more advanced disease, which can cause arthritis and damage the heart. Black people with melanoma are about three times as likely as whites to die within five years.\n\n'
        'The Covid pandemic helped raise awareness that pulse oximeters — the fingertip devices used to measure a patient’s pulse and oxygen levels — are less accurate for people with dark skin. The devices work by shining light through the skin; their failures have delayed critical care for many Black patients.\n\n'
        'Seven years after her misdiagnosis, Watkins is an assistant professor of social work at North Carolina Central University in Durham, where she studies the psychosocial effects experienced by Black mothers who survive severe childbirth complications.\n\n'
        '“Sharing my story is part of my healing,” said Watkins, who speaks to medical groups to help doctors improve their care. “It has helped me reclaim power in my life, just to be able to help others.”\n\n'
        'KFF Health News, formerly known as Kaiser Health News (KHN), is a national newsroom that produces in-depth journalism about health issues and is one of the core operating programs at KFF — the independent source for health policy research, polling, and journalism.',
  ),
];