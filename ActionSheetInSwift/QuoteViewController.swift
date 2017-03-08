//
//  QuoteViewController.swift
//  ActionSheetInSwift
//
//  Created by Meheboob Nadaf on 2/10/17.
//  Copyright © 2017 com.meheboob. All rights reserved.
//

import UIKit
import Social
import MessageUI


class QuoteViewController: UIViewController ,UIActionSheetDelegate ,MFMailComposeViewControllerDelegate {

    
    @IBOutlet var quoteLabel: UILabel!
    
    
    var listOfQuotes = ["ब्लैक कलर भावनात्मक रूप से बुरा होता है लेकिन हर ब्लैक बोर्ड विधार्थियों की जिंदगी ब्राइट बनाता है।","ईश्वर हर जगह है।","शिखर तक पहुँचने के लिए ताकत चाहिए होती है, चाहे वो माउन्ट एवरेस्ट का शिखर हो या आपके पेशे का।","क्या हम यह नहीं जानते कि आत्म सम्मान आत्म निर्भरता के साथ आता है?","कृत्रिम सुख की बजाये ठोस उपलब्धियों के पीछे समर्पित रहिये।","अंग्रेजी आवश्यक है क्योंकि वर्तमान में विज्ञान के मूल काम अंग्रेजी में हैं। मेरा विश्वास है कि अगले दो दशक में विज्ञान के मूल काम हमारी भाषाओँ में आने शुरू हो जायेंगे, तब हम जापानियों की तरह आगे बढ़ सकेंगे।","भगवान, हमारे निर्माता ने हमारे मष्तिष्क और व्यक्तित्व में असीमित शक्तियां और क्षमताएं दी हैं। इश्वर की प्रार्थना हमें इन शक्तियों को विकसित करने में मदद करती है।","मैं इस बात को स्वीकार करने के लिए तैयार था कि मैं कुछ चीजें नहीं बदल सकता।","महान सपने देखने वालों के महान सपने हमेशा पूरे होते हैं।","अगर किसी देश को भ्रष्टाचार – मुक्त और सुन्दर-मन वाले लोगों का देश बनाना है तो, मेरा दृढ़तापूर्वक  मानना  है कि समाज के तीन प्रमुख सदस्य ये कर सकते हैं। पिता, माता और गुरु।","यदि हम स्वतंत्र नहीं हैं तो कोई भी हमारा आदर नहीं करेगा।","भारत में हम बस मौत, बीमारी, आतंकवाद और अपराध के बारे में पढ़ते हैं।","आइये हम अपने आज का बलिदान कर दें ताकि हमारे बच्चों का कल बेहतर हो सके।","आकाश की तरफ देखिये। हम अकेले नहीं हैं। सारा ब्रह्माण्ड हमारे लिए अनुकूल है और जो सपने देखते हैं और मेहनत करते हैं उन्हें प्रतिफल देने की साजिश करता है।","इंसान को कठिनाइयों की आवश्यकता होती है, क्योंकि सफलता का आनंद उठाने कि लिए ये ज़रूरी हैं।","किसी भी धर्म में उसे बनाए रखने और बढाने के लिए दूसरों को मारना अनिवार्य नहीं बताया गया है।","मुझे बताइए, यहाँ का मीडिया इतना नकारात्मक क्यों है? भारत में हम अपनी अच्छाइयों, अपनी उपलब्धियों को दर्शाने में इतना शर्मिंदा क्यों होते हैं? हम एक माहान राष्ट्र हैं। हमारे पास ढेरों सफलता की गाथाएँ हैं, लेकिन हम उन्हें नहीं स्वीकारते। क्यों?","अपने मिशन में कामयाब होने के लिए, आपको अपने लक्ष्य के प्रति एकचित्त निष्ठावान होना पड़ेगा।","इससे पहले कि सपने सच हों आपको सपने देखने होंगे।","तब तक लड़ना मत छोड़ो जब तक अपनी तय की हुई जगह पे ना पहुँच जाओ- यही, अद्वितीय तुम हो। ज़िन्दगी में एक लक्ष्य रखो, लगातार ज्ञान प्राप्त करो, कड़ी मेहनत करो, और महान जीवन को प्राप्त करने के लिए दृढ रहो।","उत्कृष्टता एक सतत प्रक्रिया है कोई दुर्घटना नहीं।","अगर तुम सूरज की तरह चमकना चाहते हो तो पहले सूरज की तरह जलो।","पक्षी अपने ही जीवन और प्रेरणा द्वारा संचालित होता है।","हमें हार नहीं माननी चाहिए और हमें समस्याओं को खुद को हराने नहीं देना चाहिए।","शिक्षण एक बहुत ही महान पेशा है जो किसी व्यक्ति के चरित्र, क्षमता, और भविष्य को आकार देता है। अगर लोग मुझे एक अच्छे शिक्षक के रूप में याद रखते हैं, तो मेरे लिए ये सबसे बड़ा सम्मान होगा।","असली शिक्षा एक इंसान की गरिमा को बढ़ाती है और उसके स्वाभिमान में वृद्धि करती है। यदि हर इंसान द्वारा शिक्षा के वास्तविक अर्थ को समझ लिया जाता और उसे मानव गतिविधि के प्रत्येक क्षेत्र में आगे बढ़ाया जाता, तो ये दुनिया रहने के लिए कहीं अच्छी जगह होती।","जब बच्चे १५,१६, या १७ साल के होते हैं तब वे तय करते हैं कि उन्हें डॉक्टर, इंजिनियर या राजनीतिज्ञ बनना है या मंगल ग्रह या चंद्रमा पे जाना है, और ये वो समय होता है जब आप उन पर काम कर सकते हैं। आप उन्हें अपने सपनो को आकार देने में मदद कर सकते हैं।","जब हम बाधाओं का सामना करते हैं, हम अपने साहस और फिर से खड़े होने की ताकत के छिपे हुए भण्डार को खोज पाते हैं, जिनका हमें पता नहीं होता कि वो हैं। और केवल तब जब हम असफल होते हैं हैं एहसास होता है कि संसाधन हमेशा से हमारे पास थे। हमें केवल उन्हें खोजने और अपनी जीवन में आगे बढ़ने की ज़रूरत होती है।","एक सबक जो हर एक देश चीन से सीख सकता है वो है ग्रामीण स्तर के उद्यमों, उत्तम स्वास्थ्य और शिक्षा सुविधाएं बनाने पर अधिक ध्यान केंद्रित करना।","राष्ट्रपति पद का राजनीतिकरण नहीं किया जाना चाहिए। एक बार राष्ट्रपति चुन लिया जाए, तो वह राजनीति से ऊपर है।","मेरा विचार है कि छोटी उम्र में आप अधिक आशावादी होते हैं और आपमें कल्पनाशीलता भी अधिक होती है, इत्यादि। आपमें पूर्वाग्रह भी कम होता है।","जब तक भारत दुनिया के सामने खड़ा नहीं होता, कोई हमारी इज्जत नहीं करेगा। इस दुनिया में, डर की कोई जगह नहीं है। केवल ताकत ताकत का सम्मान करती है।","हम केवल तभी याद किये जायेंगे जब हम हमारी युवा पीढ़ी को एक समृद्ध और सुरक्षित भारत दें, जो आर्थिक समृद्धि और सभ्यता की विरासत का परिणाम होगा।","भारत को एक विकसित राष्ट्र में बदलना होगा, नैतिक मूल्यों के साथ एक समृद्ध व् स्वस्थ देश।","दुनिया की लगभग आधी आबादी ग्रामीण क्षेत्रों में रहती है और ज्यादातर गरीबी की हालत में। मानव विकास में ऐसी असमानता अशांति की प्रमुख वजहों में से एक रहा है, और विश्व के कुछ हिस्सों में हिंसा की भी।","भारत बिना परमाणु हथियारों के रह सकता है। ये हमारा सपना है, और ये अमेरिका का भी सपना होना चाहिए।","जीवन एक कठिन खेल है। आप एक व्यक्ति होने के अपने जन्मसिद्ध अधिकार को बनाये रखकर इसे जीत सकते हैं।","मेरे लिए, नकारात्मक अनुभव जैसी कोई चीज नहीं है।","विज्ञान ने ये प्रमाणित किया है कि मानव शरीर लाखों-लाख परमाणुओं से बना है… उदाहरण के लिए, मैं 5.8×10^27 परमाणुओं से बना हूँ।","हमें एक अरब लोगों के देश की तरह  सोचना और काम करना चाहिए, ना कि दस लाख आबादी वाले देश की तरह। सपने देखो, सपने देखो, सपने देखो!","एक लोकतंत्र में, देश की समग्र समृद्धि, शांति और ख़ुशी के लिए हर एक नागरिक की कुशलता, वैयक्तिकता और ख़ुशी आवश्यक है।","मेरा बाल बढ़ता ही जाता है; आप इसे रोक नहीं सकते- ये बढ़ता रहता है, ये बेहिसाब बढ़ता है।","देखिये, भगवान् केवल उन्ही की मदद करता है जो कड़ी मेहनत करते हैं। ये सिद्धांत बिलकुल स्पष्ट है।","किसी विद्यार्थी की सबसे ज़रूरी विशेषताओं में से एक है पश्न पूछना। विद्यार्थियों को प्रश्न पूछने दीजिये।","विज्ञान मानवता के लिए एक खूबसूरत तोहफा है; हमें इसे बिगाड़ना नहीं चाहिए।","चलिए मैं एक लीडर को डिफाइन करता हूँ। उसमे एक विजन और पैशन होना चाहिए और उसे किसी समस्या से डरना नहीं चाहिये। बल्कि, उसे पता होना चाहिए कि इसे हराना कैसे है। सबसे ज़रूरी, उसे ईमानदारी के साथ काम करना चाहिए।","ईश्वर की संतान के रूप में, मैं मुझे होने वाली किसी भी चीज से बड़ा हूँ।","जब वैज्ञानिक और रक्षा प्रौद्योगिकियों के लिए भव्य योजनाएं बनायीं जाती हैं, तो क्या सत्ता में बैठे लोग प्रयोगशालाओं और फील्ड में काम करने वाले लोगों के बलिदानों के बारे में सोचते हैं?","जब आप अपने ऊपर लाइट बल्ब को देखते हैं, आप थॉमस अल्वा एडीसन को याद करते हैं। जब टेलीफ़ोन की घंटी बजती है, आप अलेक्जेंडर ग्राहम बेल को याद करते हैं। मैरी क्यूरी नोबेल पुरस्कार जीतने वाली पहली महिला थीं। जब आप नीले आकाश में देखते हैं, आप सर सी.वी. रमन के बारे में सोचते हैं।","अब ऊँगली की एक क्लिक पर उपलब्ध जानकारी मुझे आश्चर्यचकित कर देती है।","मैं हाई स्कूल में था जब पंडित जवाहरलाल नेहरु ने नयी दिल्ली में भारत का झंडा फहराया था।","भारत के लिये मेरा 2020 विजन है- इसे एक विकसित राष्ट्र में बदल देना। ये भावात्मक नहीं हो सकता; यह एक जीवन रेखा है।","ढाई हज़ार सालों से भारत ने किसी पे आक्रमण नहीं किया है।","हमें याद रखना चाहिए कि कुछ ऐसे देश हैं जो अपनी 30 से 60% बिजली की ज़रूरत न्यूक्लीयर पॉवर सिस्टमस के जरिये पूरा करते हैं।","हमने किसी पे आक्रमण नहीं किया है। हमने किसी पे विजय नहीं प्राप्त की है। हमने उनकी भूमि, उनकी संस्कृति, उनके इतिहास पे कब्ज़ा नहीं किया है और ना ही अपने जीने का तरीका उनपर थोपने का प्रयास किया है।","विज्ञान वैश्विक है। आइंस्टीन के समीकरण, ई = mc2, को हर जगह पहुंचना है। विज्ञान मानवता के लिए एक सुंदर उपहार है, हम इसे बिगाड़ना नहीं चाहिए। विज्ञान विभिन्न जातियों के बीच अंतर नहीं करता।","कई सालों से, मैंने उड़ पाने की उम्मीद को पाला है; किसी मशीन को स्ट्रैटोस्फीयर के ऊपर और ऊपर जाते हुए संभालना मेरा सबसे प्यारा सपना रहा है।","राजनीति क्या है? राजनीतिक प्रणाली विकास की राजनीति और राजनीतिक राजनीति  के जोड़ के बराबर है।","आज, भारत प्रति व्यक्ति 682 वाट पॉवर कंज्यूम करता है, विकसित देशों से कहीं कम। जैसे जैसे भारत विकास करेगा, इस निश्चित रूप से बहुत अधिक एनर्जी की ज़रूरत पड़ेगी।","राष्ट्र लोगों से मिलकर बनता है। और उनके प्रयास से, कोई राष्ट्र जो कुछ भी चाहता है उसे प्राप्त कर सकता है।","हम एक देश के रूप में विदेशी चीजों को लेकर इतने जुनूनी क्यों हैं? क्या ये हमारे कोलोनियल इयर्स की विरासत है? हमें विदेशी टीवी सेट्स चाहियें। हमें विदेशी शर्ट्स चाहियें। हमें विदेशी टेक्नोलॉजी चाहिए। इम्पोर्टेड चीजों के लिए इतना जूनून क्यों है?","जहाँ हृदय में सच्चाई होती है वहां घर में सामंजस्य होता है; जब घर में सामंजस्य होता है, तब देश में एक व्यवस्था होती है; जब देश में व्यवस्था होती है तब दुनिया में शांति होती है।","शिक्षा का मकसद कौशल और विशेषज्ञता के साथ अच्छे इंसान बनाना है…शिक्षकों द्वारा प्रबुद्ध मनुष्य बनाये जा सकते हैं।","मैं हथियारों की होड़ का विशेषज्ञ नहीं हूँ।","मेरे लिए, दो तरह के लोग हैं: युवा और अनुभवी।","जबकि बच्चे सबसे अलग होने के लिए संघर्ष कर रहे हैं, उनके चारों ओर की दुनिया पूरी कोशिश कर रही है कि वे बाकी सभी लोगों की तरह दिखें।","अर्थव्यवस्था ने मुझे शाकाहारी बनने के लिए मजबूर किया, लेकिन अंत में मैं इसे पसंद करने लगा।","भारत को अपनी ही परछाईं पर चलना चाहिए- हमारा खुद का डेवलपमेंट मॉडल होना चाहिए।","लिखना मेरा प्यार है। अगर आप किसी चीज से प्यार करते हैं, आप उसके लिए बहुत सारा समय निकाल लेते हैं। मैं रोज दो घंटे लिखता हूँ, आमतौर पे मध्यरात्रि में शुरू करता हूँ, कभी कभी मैं 11 बजे से लिखना शुरू करता हूँ।","मेरा संदेश, विशेष रूप से युवाओं के लिए, है कि वे अलग सोचने का साहस रखें, आविष्कार करने का साहस रखें, अनदेखे रास्तों पर चलने का साहस रखें, असंभव को खोजने और समस्याओं पर जीत हासिल करके सफल होने का साहस रखें। ये महान गुण हैं जिनके लिए उन्हें ज़रूर काम करना चाहिए। युवाओं के लिए ये मेरा सन्देश है।","शिक्षाविदों को छात्रों के बीच जांच की भावना, रचनात्मकता, उद्यमशीलता और नैतिक नेतृत्व की क्षमता का निर्माण करना चाहिए और उनका रोल मॉडल बनना चाहिए।","सभी युद्ध विवाद सुलझाने के तरीके की विफलता को दर्शाते हैं, और युद्ध के बाद उन्हें फिर से विश्वास, भरोसा और साहस पैदा करने की ज़रूरत होती है।","इग्नाईटेड माइंडस के खिलाफ कोई भी प्रतिबन्ध खड़ा नहीं हो सकता।","भविष्य में सफलता के लिए क्रिएटिविटी सबसे ज़रूरी है, और प्राइमरी एजुकेशन वो समय है जब टीचर्स उस स्तर पर बच्चों में क्रिएटिविटी ला सकते हैं।","युद्ध कभी भी किसी समस्या का स्थायी समाधान नहीं होता।","महान शिक्षक ज्ञान, जूनून और करुणा से निर्मित होते हैं।","सरकार, चाहे राज्य की हो या केंद्र की, चुन कर बनती है। इसका मतलब हमारी जिम्मेदारी है कि हम सही तरीके के नेताओं का चुनाव करें।","यदि चार बातों का पालन किया जाए – एक महान लक्ष्य बनाया जाए, ज्ञान अर्जित किया जाए, कड़ी मेहनत की जाए, और दृढ रहा जाए – तो कुछ भी हासिल किया जा सकता है।","जब एक देश हथियारबंद देशों से घिरा होता है तो उसे खुद को तैयार करना पड़ता है।","क्षमता का निर्माण करना अंतर को भंग करता है। इससे असमानताएं ख़त्म हो जाती हैं।","शादी के बारे में, ये – किसी तरह हो नहीं पाया। इतने बड़े परिवार में एक आदमी की शादी ना होना कोई दिक्कत की बात नहीं है।","भारत में बुनियादी विज्ञान के लिए पर्याप्त धन नहीं है। हमें एक बड़े पैमाने पर निवेश करना है, और मैं इस विचार पर जोर दे रहा हूँ।","जब मैं राष्ट्रपति बना, मैंने संविधान का अध्ययन किया, और मैंने जितना अधिक अध्ययन किया, उतना ही मुझे महसूस हुआ कि ये भारत के राष्ट्रपति को देश को एक विजन देने से नहीं रोकता। अतः जब मैं संसद और विधान सभाओं में गया और विज़न प्रस्तुत किया, तो सभी ने मेरा स्वागत किया, अपनी पार्टी की परवाह किये बगैर।","बहुत सी ऐसी महिलाएं हैं जो समाज में भारी परिवर्तन लेकर आई हैं।","राष्ट्रपति के तौर पे एक बेहद कठिन काम जो मेरे पास था वो था अदालतों द्वारा दिए गए मृत्यु दंड की पुष्टि करना…","युवाओं को जॉब सीकर्स से जॉब जनरेटर्स बनने के लिए सक्षम बनाना होगा।","मैं १८ मिलियन यूथ्स से मिला हूँ, और हर एक यूनीक बनना चाहता है।","मैं एक बिना पढ़े-लिखे परिवार का वंचित बच्चा था, फिर भी मेरे पास महान शिक्षकों के सानिध्य में रहने का फायदा था।","अंततः, वास्तविक अर्थों में शिक्षा सत्य की खोज है। यह ज्ञान और आत्मज्ञान से होकर गुजरने वाली एक अंतहीन यात्रा है।","किसी भी मिशन की सफलता के लिए, रचनात्मक नेतृत्व आवश्यक है।","एंटीबायोटिक दवाओं के व्यापक उपयोग एंटीबायोटिक प्रतिरोध के प्रसार को बढ़ावा देता है। एंटीबायोटिक दवाओं का स्मार्ट उपयोग इसके प्रसार को नियंत्रित करने के लिए महत्वपूर्ण है।","भ्रष्टाचार जैसी बुराइयाँ कहाँ से पनपती हैं? ये कभी न ख़त्म होने वाले लालच से आती हैं। भ्रष्टाचार-मुक्त नैतिक समाज के लिए लड़ाई इस लालच के खिलाफ लड़ी जानी होगी और इसे ” मैं क्या दे सकता हूँ” की भावना से बदलना होगा।","मैं एक पायलट से अधिक और कुछ नहीं बनना चाहता था। लेकिन, तकदीर का कुछ और ही प्लान था।","छोटा लक्ष्य अपराध है।","हमें ऑटोमोबाइल्स के लिए ऐसे इंजेक्शन सिस्टम डेवलप करके जो बायो-फ्यूल्स से चल सकें, फॉसिल फ्यूल्स से छुटकारा पाना ही होगा।","‘अद्वितीय’ बनने के लिए, चुनौती है सबसे कठिन लडाई लड़ने की जो कोई सोच सकता है; जब तक आप अपनी मंजिल तक पहुँच ना जाएं।","कविता आपार ख़ुशी या गहरे ग़म से निकलती है।","मुझे पक्का यकीन है कि जब तक किसी ने नाकामयाबी की कड़वी गोली न चखी हो, वो कायमाबी के लिए पर्याप्त महत्वाकांक्षा नहीं रख सकता।"," ग्रामीण क्षमता के द्वारा नए बाज़ार बनाये जा सकते हैं, जो रोजगार में वृद्धि कर सकते हैं।","मैं घूमता हूँ, जब तक मुझे गरमागरम सब्जी की डिश मिलती रहे; मैं ठीक हूँ।"]

     var decideIndex:Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.quoteLabel.text =  listOfQuotes[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func nextQuote(_ sender: Any) {
        
        decideIndex += 1
        
        if (decideIndex == listOfQuotes.count) {
            decideIndex = 0
            
            
        }
        
        self.quoteLabel.text =  listOfQuotes[decideIndex]
    }

    @IBAction func shareThisQuote(_ sender: Any) {
        
        //Create the AlertController and add Its action like button in Actionsheet
        let actionSheetControllerIOS8: UIAlertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        // alertController.popoverPresentationController.sourceView = self.view;
        // alertController.popoverPresentationController.sourceRect = CGRectMake(self.view.bounds.size.width - 34, 20, 0, 0);
        
        actionSheetControllerIOS8.popoverPresentationController?.sourceView = self.view
        actionSheetControllerIOS8.popoverPresentationController?.sourceRect = CGRect(x: 0, y: 0, width: 100, height: 100)
        let cancelActionButton: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { action -> Void in
            print("Cancel")
        }
        actionSheetControllerIOS8.addAction(cancelActionButton)
        
        
        
        
        
        let WhatsAppButton: UIAlertAction = UIAlertAction(title: "WhatsApp", style: .default)
        { action -> Void in
            print("WhatsApp")
            let urlString = self.quoteLabel.text
            let urlStringEncoded = urlString?.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
            let url  = NSURL(string: "whatsapp://send?text=\(urlStringEncoded!)")
            // let url  = NSURL(string: "whatsapp://send?text=Hello%20Friends%2C%20Sharing%20some%20data%20here...%20!")
            
            //Text which will be shared on WhatsApp is: "Hello Friends, Sharing some data here... !"
            
            if UIApplication.shared.canOpenURL(url! as URL) {
                //  UIApplication.shared.openURL(url! as URL)
                
                UIApplication.shared.open(url! as URL, options: [:], completionHandler: nil)
            }
            
            else{
            
            
               // self.showSendMailErrorAlert("Error", : "WhatsApp is not installed")
                self.showAlert(errorTitle: "Error", errorMessage: "WhatsApp is not installed")
            }
            
        }
        actionSheetControllerIOS8.addAction(WhatsAppButton)
        
        
        
        
        
        
        let FacebookButton: UIAlertAction = UIAlertAction(title: "Facebook", style: .default)
        { action -> Void in
            print("Facebook")
            
            
            
            
            if let vc = SLComposeViewController(forServiceType: SLServiceTypeFacebook) {
                vc.setInitialText(self.quoteLabel.text)
                vc.add(UIImage(named: "hindi icon.png")!)
                // vc.add(URL(string: "https://www.hackingwithswift.com"))
                
                
                self.present(vc, animated: true, completion: nil)
            }
            
            
            
        }
        actionSheetControllerIOS8.addAction(FacebookButton)
        
        
        
        let TwitterButton: UIAlertAction = UIAlertAction(title: "Twitter", style: .default)
        { action -> Void in
            print("Twitter")
            
            
            
            
            if let vc = SLComposeViewController(forServiceType: SLServiceTypeTwitter) {
                vc.setInitialText(self.quoteLabel.text)
                vc.add(UIImage(named: "hindi icon.png")!)
                // vc.add(URL(string: "https://www.hackingwithswift.com"))
                
                
                self.present(vc, animated: true, completion: nil)
            }
            
            
            
        }
        actionSheetControllerIOS8.addAction(TwitterButton)
        
        
        
        
        
        
        
        
        
        let MailButton: UIAlertAction = UIAlertAction(title: "Mail", style: .default)
        { action -> Void in
            print("Mail")
            
            
            
            let mailComposeViewController = self.configuredMailComposeViewController()
            if MFMailComposeViewController.canSendMail() {
                self.present(mailComposeViewController, animated: true, completion: nil)
            } else {
                self.showSendMailErrorAlert()
            }
            
            
        }
        
        
        
        
        
        
        
        actionSheetControllerIOS8.addAction(MailButton)
        
        let MoreButton: UIAlertAction = UIAlertAction(title: "More", style: .default)
        { action -> Void in
            
            
            print("More")
            
            // text to share
            let text = self.quoteLabel.text
            
            // set up activity view controller
            let textToShare = [ text ]
            let activityViewController = UIActivityViewController(activityItems: textToShare, applicationActivities: nil)
            activityViewController.popoverPresentationController?.sourceView = self.view // so that iPads won't crash
           
            // exclude some activity types from the list (optional)
            activityViewController.excludedActivityTypes = [ UIActivityType.airDrop, UIActivityType.postToFacebook ]
            
            // present the view controller
            self.present(activityViewController, animated: true, completion: nil)
            
            
        }
        actionSheetControllerIOS8.addAction(MoreButton)
        
        self.present(actionSheetControllerIOS8, animated: true, completion: nil)
        
    }
    
    //Mail
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        
        // mailComposerVC.setToRecipients(["mrnadaf2010@gmail.com"])
        mailComposerVC.setSubject("Dr APJ Abdul Kalam Hindi Quote")
        mailComposerVC.setMessageBody( self.quoteLabel.text!, isHTML: false)
        
        return mailComposerVC
    }
    
    func showSendMailErrorAlert() {
        //let sendMailErrorAlert = UIAlertView(title: "Could Not Send Email", message: "Your device //could not send e-mail.  Please check e-mail configuration and try again.", delegate: //self, cancelButtonTitle: "OK")
        // sendMailErrorAlert.show()
        
        // self.showAlert(errorTitle: "Could Not Send Email", errorMessage: "Your device could not send e-mail.  Please check e-mail configuration and try again.")
    }
    
    // MARK: MFMailComposeViewControllerDelegate Method
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
    func showAlert  (errorTitle : String, errorMessage : String) {
        
        let alertController = UIAlertController(title: errorTitle, message:errorMessage, preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
  
   
    @IBAction func prevQuote(_ sender: Any) {
        
        decideIndex -= 1
        
        if (decideIndex < 0) {
            decideIndex = listOfQuotes.count-1
            
            
        }
        self.quoteLabel.text =  listOfQuotes[decideIndex]
    }




}
