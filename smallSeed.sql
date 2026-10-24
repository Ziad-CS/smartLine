-- ==================== Delete All historical data ====================
  DELETE FROM service_logs;
  DELETE FROM queue_entries;
  DELETE FROM queues;
  DELETE FROM services;
  DELETE FROM providers;
  DELETE FROM managers;
  DELETE FROM companies;
  DELETE FROM users;
  DELETE FROM sqlite_sequence;

-- ==================== SmartLine Seed: Users (1-250)(904-1203) — Egypt ====================
  INSERT INTO users (id, name, email, hash_pass, country, city, is_verified, verification_code) VALUES
  (1, 'Ahmed Mostafa', 'ahmed.mostafa92@gmail.com', 'scrypt:32768:8:1$iS0L3HdWrnB0fbi1$1bbbc6b03f59b61f5671b531f42a3236f45b9e5145db8a5073394ce3ee4f3f4db32c196bd3c9df5ec52703f21bd6ad1bed48f85b312c06c6c1f4d61a92bb0b6a', 'egypt', 'alexandria', 1, '362388'),
  (2, 'Mariam Hassan', 'mariam.hassan.alex@gmail.com', 'scrypt:32768:8:1$JAeXy7qErPvxMHQi$cc712a245052fbb0832abc1bbce47747d02ab02ac27a26dbcda79db01227012904ec37c922697aa0c06f431f9943f420fcc0c2bac3d0717d05a43acd71842a33', 'egypt', 'alexandria', 1, '212963'),
  (3, 'Omar El-Sayed', 'omar.elsayed87@yahoo.com', 'scrypt:32768:8:1$hP2MaZVdVLRDFsU3$00ca87b71a99007cc44a966085967a1c54724f421b70de5a4e875cbc856e9469e7f20487a53bc62450a7feb6283b5dc32085018a4173eb69f4448b9c4c4e80dd', 'egypt', 'alexandria', 1, '784104'),
  (4, 'Nour Abdelrahman', 'nour.abdelrahman@outlook.com', 'scrypt:32768:8:1$oo5MCnrZE9U8cD9h$b1215c743256f333e848e445694ae7cec961187253b481277e5a704885c151b6a0b9604f058d602c22978bfc0223b39fc0856817d46eb9d3af397d8a33dca2f1', 'egypt', 'alexandria', 1, '408339'),
  (5, 'Youssef Fouad', 'youssef.fouad03@gmail.com', 'scrypt:32768:8:1$QGdSZH1cVu8pssPd$c9120442b3b722fa5d7adb8a7290d0b61a1a3947380eb4269cdfc4c45e703f77783d8a96544e0e75dd3ec33254ce97921397f204b05ae38762142efa456ebd55', 'egypt', 'alexandria', 1, '966747'),
  (6, 'Salma Khalil', 'salma.khalil@hotmail.com', 'scrypt:32768:8:1$EkYlelpoSw7OkhA9$9cd6fe3f9551a2ace5d2b96faa0f87fcbf0fdbd51086086ce586637483a418c74d4185ddfc17b672799c1d981c3b464f33aa0774358ed8ce82bdd880074b0097', 'egypt', 'alexandria', 1, '727294'),
  (7, 'Karim Ashraf', 'karim.ashraf95@gmail.com', 'scrypt:32768:8:1$nRVXTy4uAjSRlqwn$eaef9f757b0c81916ea6b5be6a6379c3f8629e411d912c512ebc095d8a184a9ca4650ef2eedd6eb948382c54ca16c7ef4150d961b486a0cfc5216cb35f368603', 'egypt', 'alexandria', 1, '077177'),
  (8, 'Hana Mahmoud', 'hana.mahmoud00@gmail.com', 'scrypt:32768:8:1$YfNBvRf03LrnmUyA$fdb435a5cba86750f3f97ff0081c3dc0bdd17cbf36f405024398e35fd835995aad47bafeb78be3e1e83fe48ab7839a64443e76ac1c5bed8b40b037d8db31609d', 'egypt', 'alexandria', 1, '339782'),
  (9, 'Mostafa Gaber', 'mostafa.gaber@gmail.com', 'scrypt:32768:8:1$WcLpP0MUiHQ6zfYr$b80db1dffe80cf79ba65b0077ff2f9758f3dfa54063520104d1c73ff4d33c1ddb60b0a063b50f754d356538b5ae10a62ef1e6ba544213b029d65029becd3d19b', 'egypt', 'alexandria', 1, '575286'),
  (10, 'Rana Sherif', 'rana.sherif.a@yahoo.com', 'scrypt:32768:8:1$SyJIA4puSbdDlh0i$e39891f759fef8a86c56846e65868c686c811431f9ffb6fc9a1f7695d5a637a62f9f5ccbdb941e454108118f4aa421a80207f8feca3aab75d300ccd86e40366a', 'egypt', 'alexandria', 1, '338851'),
  (11, 'Abdelrahman Said', 'abdelrahman.said@gmail.com', 'scrypt:32768:8:1$so8MfJKC3GBY4zc1$17d4102c7f282e7afbf19a26e70b61942a75d0c188d01fe973d63493215f30cc3379948b400d0b916806deaff7eac600bd767480e90c5f951fac701546daca08', 'egypt', 'aswan', 1, '368619'),
  (12, 'Fatma Ibrahim', 'fatma.ibrahim94@gmail.com', 'scrypt:32768:8:1$A8uzeOdJ3FZWcS0i$82c85105a3129995ef0b722bd12f59246252b68f628bf0852b163644aafef478d5df36deb1430c1191efbbbab9f6a98035a77f9c4bb5532c24f2e32683310ee7', 'egypt', 'aswan', 1, '945406'),
  (13, 'Mahmoud Ali', 'mahmoud.ali.asw@gmail.com', 'scrypt:32768:8:1$xa8e3jfL3cBSsDor$d49dc47e2fd648d2a98a27341ae8dea719ac40aed2ac823b738c6e73c7ecadd0b1cf7d3cf5837e329d0d57ac53a8adb5852c3107d6a3b24ef6878df753afec12', 'egypt', 'aswan', 1, '657509'),
  (14, 'Esraa Mohamed', 'esraa.mohamed@outlook.com', 'scrypt:32768:8:1$gMjpy7IX9ZKvgXzx$5e0717e43c6d936d890b10f6eb18d6e7a0b14eb573b928159a831cb3c908fe2cbffb10dbe6a7163743fc1cac057f3556f1b2deaca9a8741c06ea823b79299fff', 'egypt', 'aswan', 1, '250279'),
  (15, 'Ramadan Hussein', 'ramadan.hussein@yahoo.com', 'scrypt:32768:8:1$ZU1sVv3ciR1fvtYX$deb68bc0d91c74ce25b4ad2a0af38af03eaf3f63c145f16e5e875ef1c6568bd095df722352d67a4d42feeddf4885f70869afa86f89de348841a49dbc4ef07c3a', 'egypt', 'aswan', 1, '058244'),
  (16, 'Aya Mansour', 'aya.mansour01@gmail.com', 'scrypt:32768:8:1$tTomoHcHR5gu9bry$429f34445418c4fc49262d6d146d49e0bf139706a3e98afa18c4602d18cc677cc5054ca139532f613b440fcb4ebe1f9ebe20c27c8f004aa782812c602347df83', 'egypt', 'aswan', 1, '137324'),
  (17, 'Mohamed Nasser', 'mohamed.nasser88@gmail.com', 'scrypt:32768:8:1$IIN498PH3hKLtAFO$ff122dfc3050b255be4b1958bdbb436293c2b2cd68dcc7c5540735363ca7a791c00fd0070ec3f04d43b51d1b09235ec619d7f34143188525c6215838e4d00984', 'egypt', 'aswan', 1, '582322'),
  (18, 'Heba Tawfik', 'heba.tawfik@hotmail.com', 'scrypt:32768:8:1$sTJxDNzxIiJDCPmK$298d2681930efaf866fac74eac38588f144a83b9bf28a2183c30f1a97f017bfcad6f114b495e030380ce4351401e4b1d6d7fb1dc13c6badbf5a810120ac1c4c0', 'egypt', 'aswan', 1, '379772'),
  (19, 'Khaled Gamal', 'khaled.gamal.aswan@gmail.com', 'scrypt:32768:8:1$xm5J7JXeYfm9ihzU$73d30f84c6cbdf8eccb94497712c6eb2c1a36cb7783a223d888e0ac5afc5eb82c2345cc1bbe90f0df43705831ee01b20b65044d0ca7a09d4935ae1a2da921ddc', 'egypt', 'aswan', 1, '139123'),
  (20, 'Sherif Awad', 'sherif.awad.aswan@gmail.com', 'scrypt:32768:8:1$tSC9f3lgV1APbMW4$7ae25952995efc9ae2420570a23eb80ca5402f27364c9c55eccb64133ae9eb693cbdbe67069fdbd48bee3ef83857684558f8d806c60817cd7e16eaaf0993ef88', 'egypt', 'aswan', 1, '456413'),
  (21, 'Hossam Eldin', 'hossam.eldin@gmail.com', 'scrypt:32768:8:1$h3M83R79mP1sJEYS$59f48673ea80a43c000c1ef035c1895b882ef7697d4884bfea338950f703304c4f16a42e13c653cf8b05579149980e1f7b343cb658999fce9faff750f9ded7eb', 'egypt', 'asyut', 1, '583869'),
  (22, 'Amira Salah', 'amira.salah96@gmail.com', 'scrypt:32768:8:1$zf96QluLmC7K80av$29dc79733a0a4e2f58fb4e5f390c1eb6db49024d47b5aad25a98ab402b5a277646a1c4cc7a590d6987382639879bb747d86482cd603a923f23263191b1c0de16', 'egypt', 'asyut', 1, '484513'),
  (23, 'Tarek Abdelaziz', 'tarek.abdelaziz@yahoo.com', 'scrypt:32768:8:1$r8CkBzgqRAV3Hk6x$bb55ac3021017834cfeede3b30dbf9b3bc4f2a990f5bee392d1e8e9b449bbf5af842f28c02bab8b097fe58be57b63336d6a4d0f0c4530a228a5de8f25650f075', 'egypt', 'alexandria', 1, '832198'),
  (24, 'Dina Fathy', 'dina.fathy@gmail.com', 'scrypt:32768:8:1$VKbGFSEE2cFmVrXL$b45728c7507b2639cd96394d8dc097aa763d58d2ac126c3e08a04f3f0e528347657ec5d4cb29c0437ea12f1e222b7c10465826f22ed8dc6bf7607185beb17cc7', 'egypt', 'asyut', 1, '105045'),
  (25, 'Walid Anwar', 'walid.anwar@outlook.com', 'scrypt:32768:8:1$m0JRCKAVEMBQbyhy$63bca2f1e833d059b48a3e2f3d87aeaa868f6482096f4879fad1f401e218859e2998332fc9d7915e9e3a0d3112be8d2acbd9d5c6ef7b5e4a57874ae8e1701d15', 'egypt', 'cairo', 1, '665437'),
  (26, 'Mona Zaki', 'mona.zaki99@gmail.com', 'scrypt:32768:8:1$wPG2yKFeKOoyTTpa$7e6e67e75071187ebad3b8bd7b55c17bcf4bd879d15a359acf953b69f493fa5a1daa3d3678638580e4a6979bbc2a89a3cd7cb5ef24d89c552f5992f601769fce', 'egypt', 'asyut', 1, '003958'),
  (27, 'Ibrahim Soliman', 'ibrahim.soliman@gmail.com', 'scrypt:32768:8:1$9GHRw3u8vcahmADH$eb9864219e546a300512e026cdd38aea3fb3cfa49ebbe3a5e221a29c1a2aa04ffef7a391c13d033721a81d72bf9353691029b03459f0497f266f57579796b8bb', 'egypt', 'cairo', 1, '692129'),
  (28, 'Shaimaa Adel', 'shaimaa.adel@yahoo.com', 'scrypt:32768:8:1$d6NQVTiiwlgYfWVo$4d9b9a87f728b5c15d98134ebb634060f3ed66b6344a356fe4b87e071624ed4a07e6c480bf19e4d4e722cc1cde1785fd7e521376d980082e94158c3f8eae8d0e', 'egypt', 'asyut', 1, '468980'),
  (29, 'Mohsen Rashad', 'mohsen.rashad@gmail.com', 'scrypt:32768:8:1$JFd1tuCaxyXfBj1b$7b0ac876d6634142f04ff608f750a513865a3612b7afd6b2e0950f74f532d04e4d791fca2464ade072a4f4d091906395a3bfb40a3e10f63e9ab16cd64b659a2f', 'egypt', 'asyut', 1, '647367'),
  (30, 'Reda Kamel', 'reda.kamel@gmail.com', 'scrypt:32768:8:1$vFa9PrvUQnlKNkr5$b8c6dfc3a7eff54c1065715f7cb941b0e3f5a12a47dcd7ab13e289e088be764b95947081ab54b7a77528c91fc1b0a916d3e69166b22a514a33503ae09e627f05', 'egypt', 'asyut', 1, '792131'),
  (31, 'Hazem Lotfy', 'hazem.lotfy@gmail.com', 'scrypt:32768:8:1$FmNHxuRShImvxvCZ$f370b4d27dc4df6dd2ae49a733dce6d95be2387746417818a8ee5ca2e1717e196f2331a189af94d9acfb1d79ea771bcc6b3dbd8981c1d433d76a29c6ea67e6d4', 'egypt', 'cairo', 1, '802078'),
  (32, 'Samar Younes', 'samar.younes@gmail.com', 'scrypt:32768:8:1$11Wm2yKkniKygl8P$ea690c9f975e5fb94fc787213079284a9d8fa9d37a88171a1252d24d9b6c8575456b8717fcbb672bf56bd79b9f88024e2552bf3d6758e728aecbb589aeaed74d', 'egypt', 'beheira', 1, '091097'),
  (33, 'Eslam Badr', 'eslam.badr93@yahoo.com', 'scrypt:32768:8:1$PX4xLAVMcc9dItRW$bd74c705690e54ec9395f42c40539400034adf5bd02add1b307f2620416dda844a68504f10c776ed61dd859efb924596c703117aacb8eccc136cae1700a3589f', 'egypt', 'beheira', 1, '812694'),
  (34, 'Yasmine Farouk', 'yasmine.farouk@outlook.com', 'scrypt:32768:8:1$ykynsx7JVmh0Jeqn$52f4b57091abf982c3cf841b183df3fc0323e86e2c8022e24e303a2bc17f47f41f6e77b5b854c1bfffd375750477449be4ec2af62f80edc3527a2519fc64455c', 'egypt', 'beheira', 1, '624327'),
  (35, 'Sayed Abdallah', 'sayed.abdallah@gmail.com', 'scrypt:32768:8:1$HGdI1PuN6QWYi0eC$eeb88f39e53be9e5fe222672257c283723eb2057b099482c58781e81c00f4864ca51bd91acfcc8fbb0e5b25e80bb2cbdd1356e52b633907afc6a7186573ef8da', 'egypt', 'beheira', 1, '169106'),
  (36, 'Nada Othman', 'nada.othman02@gmail.com', 'scrypt:32768:8:1$XKsLiTl9kHAg0gum$d0d6cb1d5f0ac2dd420702175b4efb550d947a4eeb4b0e520654444f2afbd9299be5b5b2aaa20a596bcf5431e9b5dd4b372e161eecbe83ad0aa9a919d4cbdeea', 'egypt', 'beheira', 1, '148687'),
  (37, 'Ayman Helal', 'ayman.helal@hotmail.com', 'scrypt:32768:8:1$xdJUGOiK2SRQipiN$bbc7501799ba37575f97df2ab3be79551ecb5f7db5fff191a1ac7840dfc544a4a5a15f6b3c3a03c6f00cd4db04f79b32b4dc7f8306bdef9fe049c884ee6d3073', 'egypt', 'beheira', 1, '959457'),
  (38, 'Reham Saad', 'reham.saad@gmail.com', 'scrypt:32768:8:1$7zsmQcksF8LxazFW$131e9d9eeafdd525793ebffc962922d1874dea357150a3b24972eff9a9739115a79ba06489cb2eed0774dfe66b3e6387fcb207bb0b252474c2c802d64f3e88c1', 'egypt', 'beheira', 1, '511611'),
  (39, 'Gamal Mekawy', 'gamal.mekawy@gmail.com', 'scrypt:32768:8:1$oGXNjHBKTUFs97GA$5fdcf5da3cd1a3c5724d2090d2620b756592a9cb45e9c67402a246e145d1e33907312cf14e0e3ab5756db0995ec4ba8c49a049f238ec9c12796c1cc7fc768dda', 'egypt', 'beheira', 1, '290387'),
  (40, 'Marwa Bakr', 'marwa.bakr95@gmail.com', 'scrypt:32768:8:1$dmwxYrawTzRUyM96$429c53fc51b2df135b8e17f1f813b60d74f2516724d305cac696cd6badc9cab6ce4e87c84058e714303729580bb97a1e7bfa1b2f36162f7726d495ba8e133db8', 'egypt', 'cairo', 1, '991190'),
  (41, 'Mina Samir', 'mina.samir@gmail.com', 'scrypt:32768:8:1$rCFvJRlIHGoBCuzG$cd643347972beae675b9b85ca7055e5e56442d11afe2d46a3fcb1c48f71d08d022f7e95d27bc1c990bef72e2a5e3e55b0d0f7f69386fb888cb7756bc5a0b54a5', 'egypt', 'beni suef', 1, '262528'),
  (42, 'Sara Magdy', 'sara.magdy@yahoo.com', 'scrypt:32768:8:1$se4SyF55flKmRecf$4f04cac67b1ccab37c9ec8fdcc3ad07860f8e5f9698ce3943d4cb1a9df005af17fdadabb0f04fcb5da217249d23175ab71d7656c9aff8cfc574edcdfa3ae93b2', 'egypt', 'beni suef', 1, '243104'),
  (43, 'Bishoy Nabil', 'bishoy.nabil@gmail.com', 'scrypt:32768:8:1$1uZuoFt9Jm6hGiCI$f0f3aac5770657a140096695ebde9c3380175910121632231e0f658f8558391b22da9bdb67db009adafba4c48e9e170ff96cab8e679d566604cfffd7e592a4b0', 'egypt', 'beni suef', 1, '439990'),
  (44, 'Mohamed Shawky', 'mohamed.shawky@outlook.com', 'scrypt:32768:8:1$8wY8fNGDVut6lm8D$1cdfd623050644b8e6e42fe634c540c1b163ed56f041e2fc80be801cd3467a1d47eed74e38ae670b8cbeab222665f557160bc53a291cf79c0c245c978290cb91', 'egypt', 'beni suef', 1, '166524'),
  (45, 'Doaa Hamdy', 'doaa.hamdy@gmail.com', 'scrypt:32768:8:1$X1ZTmSLq8S9JZmmZ$36cc7297c8c6fd45647c0a887a285d1bc0ae9dec19a0e98497d7cc93e52243fefdf29b18c7f653e3fa5414c5810612ca03b579fd7aa2edf87962ba498c85434f', 'egypt', 'beni suef', 1, '426326'),
  (46, 'Adham Reda', 'adham.reda01@gmail.com', 'scrypt:32768:8:1$1zPtM83KJELNbdyl$e01044f456db54b357e44f71b22317ee1629528b81c9b093d56b267ee7c410c0d44fd72dde085eac0aa086144a9d2c28e5f4aba60dc7479fb9e85ad91001cdee', 'egypt', 'beni suef', 1, '854397'),
  (47, 'Hadeer Ezzat', 'hadeer.ezzat@gmail.com', 'scrypt:32768:8:1$7B7lHxjN8clJhvtM$77a225d6c856ddb9de42b699650501b7b9b5101766f4dc18faedbe8bc7e30156de3eae3bc03fd2dbdc0e8dab7039ae9d211df16502492e8f4f8cd7b36b31f2bf', 'egypt', 'beni suef', 1, '926981'),
  (48, 'Osama Zaher', 'osama.zaher@yahoo.com', 'scrypt:32768:8:1$RuyIdlKyKj5GFtp1$070014a94797c7cb1ea7177ac677ef5d6904d5f6d4e318d466c8e9767349fe297db5935230cc6325bb8733e303774fd20ec0c31d2bf90faf78e9e5ff12a5a1e5', 'egypt', 'alexandria', 1, '454335'),
  (49, 'Nermeen Yassin', 'nermeen.yassin@gmail.com', 'scrypt:32768:8:1$24ZRy1WI2s695vyT$e731c3d416c7052a8a5858f70082ee9fdbf0d3740e20e9d716792128daa20bcec4b8a92fd1256a5e14f4c4e8d47e2e110cb333ac60dcd6d2302b7786ae68f84e', 'egypt', 'beni suef', 1, '648345'),
  (50, 'Mahmoud Sabry', 'mahmoud.sabry@gmail.com', 'scrypt:32768:8:1$n8xSKernm2hKqtaj$c565f14fb327bf389f5dd4b8a064fa5e20b8ad2fcd2a0af7f2da3d847886e4943dc30ea5e697ab7d7dce08c3f5342822a1855c1be64ddd879dcb64277450e3e8', 'egypt', 'beni suef', 1, '026135'),
  (51, 'Ahmed Tamer', 'ahmed.tamer@gmail.com', 'scrypt:32768:8:1$6vrmq5KsSee6RwqV$da8d4c97df943bbdf15fbdd003b1ec21deb8f8bb822395df2b79ed7dfa6a5f1493a37f9aa63693ed94147076a98b909c49f040ac078aa2d5786428f612386b23', 'egypt', 'cairo', 1, '314689'),
  (52, 'Nourhan Ehab', 'nourhan.ehab@gmail.com', 'scrypt:32768:8:1$2oKb6Eidz5pTapoY$a5f341577f471d82ee21e82acf3ccdc1196ba5948ecc6ec97b16d56443e8714fecc95d1d529d1b8738743612826f576a4ccc00c7ed474dcab7cbed0be5903011', 'egypt', 'cairo', 1, '173598'),
  (53, 'Mohamed Hesham', 'mohamed.hesham97@outlook.com', 'scrypt:32768:8:1$JnhtiOpxqZnzcoaL$8634a6fb609345e38cdbc10560a223c5f4238caded7f7bc7b0dadd8f804ee8f4aeabe4caa99074b72fafb8c0e1317b88380edbc1976673d243083d21f183af98', 'egypt', 'cairo', 1, '995642'),
  (54, 'Farida Wael', 'farida.wael@gmail.com', 'scrypt:32768:8:1$e2jkqe8LR2k7QQeR$685230504aefdd3388d8cda7b839ad74cbafd6cb4a8b93d543e07df99d170fe801f5c5d58a57e808b8d6bbd9f1bad04058d1311f84b0b09fde89729c849de721', 'egypt', 'cairo', 1, '153459'),
  (55, 'Ziad Amr', 'ziad.amr@gmail.com', 'scrypt:32768:8:1$r54KW4VwjqVlNVjZ$54210184d84b8e8c05d73c1198c8e2fbbe7102ecb7fbb33bd34b0bcc6c4f405c36bb94adfb68703aea7098e509a3624c03f25efc92c58bbfec83e78cba65f928', 'egypt', 'cairo', 1, '423564'),
  (56, 'Jana Sameh', 'jana.sameh@yahoo.com', 'scrypt:32768:8:1$SEFaXL7Eo4cjgy72$22908e3bef5ebd0148e50272d722c1869e09c87be0ee3e5a329187f772436658a182d21553f2242691f0b60bcc41b46008b852fdc00080edfaa6c88e146aab63', 'egypt', 'cairo', 1, '335433'),
  (57, 'Seif Eldin Hany', 'seif.hany@gmail.com', 'scrypt:32768:8:1$pSbQhBMDD3hxx2zD$95e88c1ca176769ade3839c3f44304f8e46ea81636ba048a7b0c9b215cc5adeaecf744baa4474f8f4ee2953b983435605dcdf5d7869f0fc418368d5492abc612', 'egypt', 'cairo', 1, '186359'),
  (58, 'Lina Tarek', 'lina.tarek@hotmail.com', 'scrypt:32768:8:1$a0NpckWgBSaKI8r2$ac85169652393ce2441c1a5d43c113c9d78727bf5070d9f2e0033ab4ba42ed7de9ac2f083fcf2c26eca856a6199227eda3ad04ee6471108d0eb373afeb26dde5', 'egypt', 'cairo', 1, '204299'),
  (59, 'Mazen Essam', 'mazen.essam@gmail.com', 'scrypt:32768:8:1$oXZgYf4ZNNTn6qp5$c43dcc10adbb44e656ad3bc9e0a2b20beae357de0188ce7ccf2c17b129d1f0929cc386a484e8e9c848a376b1d80ebe69fee7d08fa8bde7a7e2dd4b4d76900406', 'egypt', 'cairo', 1, '923033'),
  (60, 'Malak Yehia', 'malak.yehia03@gmail.com', 'scrypt:32768:8:1$520s2CkbERVsx7oa$c8a4ec6bf4385a251398ed5ff570b96ab7613c8a44316616efe5112326d395d4113092e7bbf2c4b20c27906233cf1efcccbb9cdc3e41f8a542e41255b688624c', 'egypt', 'cairo', 1, '478755'),
  (61, 'Mahmoud Eid', 'mahmoud.eid@gmail.com', 'scrypt:32768:8:1$mkVVTRSu55ecRFTK$f922eab446c464c7f937571b77334d39c8af2d06195c6189f466cca82e209b86f6c90b8e00a17bbfeb7285a2f7a88ce0275a1d6288a6774c0c07fbc63a9005e6', 'egypt', 'dakahlia', 1, '735893'),
  (62, 'Rehab Gad', 'rehab.gad@gmail.com', 'scrypt:32768:8:1$tU5pTdW5qNhKTOHT$43855d4ad92b87a25c5afe40abaa11c376b91959073613d3678f59123d6cfb78430d56d0c5bf26851960c41094487ad7807844defc1627f8c6f30d1539d0f742', 'egypt', 'dakahlia', 1, '415463'),
  (63, 'Ahmed Zidan', 'ahmed.zidan@yahoo.com', 'scrypt:32768:8:1$JSRwmbZNPzBEm5Ng$92d390084a4b17ee80eca8d6e589b1e116c03a59f4c40f48bbed0cb21424a4851ed634f36a2864fb341772ab8b33889c175f87e48793e5092e96e9e621f5dcbc', 'egypt', 'alexandria', 1, '397080'),
  (64, 'Eman Shalaby', 'eman.shalaby@gmail.com', 'scrypt:32768:8:1$w8S0Zq9IhHezIKTZ$0f9dabf47167e078894f563fc2beca0325eb3785fa4070974d422065bcc599388154b3bf1cf1f57c0d3a31d4206829057ff3c660fc1a6a2aee68089eff2bd032', 'egypt', 'dakahlia', 1, '641440'),
  (65, 'Mohamed Elgendy', 'mohamed.elgendy@gmail.com', 'scrypt:32768:8:1$OneU9gWkO9sJUoOz$b46a0c948bfe6a4758eea6fbac949e1c65e268bc9331edeab60654615d101ac2424794eb225fcd2371396f6c30ad75fb90a43654217dae71108452546652868a', 'egypt', 'dakahlia', 1, '999618'),
  (66, 'Asmaa Zayed', 'asmaa.zayed@outlook.com', 'scrypt:32768:8:1$wB8f4RoSjaDBSzy5$d7dbf8e720c59153e4524dfb2e3d2486e4a0a2c144d82f51d30b697af639c79c1d832674c8c6c0129c5ae3b111076d9484473faece724f12dffa970b44e2304f', 'egypt', 'dakahlia', 1, '800192'),
  (67, 'Hamdy Fawzy', 'hamdy.fawzy@gmail.com', 'scrypt:32768:8:1$YQR0QjoWrsytzxuH$245f454fb6049e62a7d8a267f9aaad881d90961a9c4803557195cdb8f4173fb096fbc3fe65fb2799c9a9edb093d655952eb8e551a31cb84565a70ba68a2b7519', 'egypt', 'dakahlia', 1, '026445'),
  (68, 'Nesma Radwan', 'nesma.radwan@gmail.com', 'scrypt:32768:8:1$GXRJ8ZbcT5VBhdCq$4067512a2472d55383560d4825393ab9ef88354f3d85fdc0f8dc97b39a30643d6eeb479edacba617d0a5de1ac1b4c1328de6436c3026797833fdc7ddab74575c', 'egypt', 'dakahlia', 1, '737966'),
  (69, 'Ali Hegazy', 'ali.hegazy94@gmail.com', 'scrypt:32768:8:1$RCK2B7uRmCNTmUM9$648c53614bb32a61c8058bc77e15b43c2fc40d292747e2b40d3be2f506914604732c0b9a935284dd7d4077b0da48b3af5144be8e50846636ee76310c2814c8fd', 'egypt', 'dakahlia', 1, '424719'),
  (70, 'Shaymaa Elkady', 'shaymaa.elkady@yahoo.com', 'scrypt:32768:8:1$kYHANxbRsYcKpJDJ$8a6bf5d71b13752b46626e3519184849aa364de455f4c11f094f65656cb7bab825722637d3841a7f7a4eda4a34de44f499821aa66a8932297d7efacf7d1e4c1c', 'egypt', 'dakahlia', 1, '446772'),
  (71, 'Moataz Elshenawy', 'moataz.elshenawy@gmail.com', 'scrypt:32768:8:1$Sx0bQuIHypusCYK3$d00d207aa96fdcdd91436641b8fdc657d51602507bf3a5a76736a2e46a66353cad54b6d17929365538b9679a5ca9b5427177fa47ba6edc5abd9ef6e89d9c44f7', 'egypt', 'damietta', 1, '044438'),
  (72, 'Rawan Hamed', 'rawan.hamed@gmail.com', 'scrypt:32768:8:1$8oSwHgQClmseYAGz$4ecfda2d94e28040c4ed103ec05611c13eb97cad7abd9bfa3b7d77f41416dd6792ccc66af87ff375ef7b9b39f2a256937ca4d7170e15f86141d00c766238fd4a', 'egypt', 'damietta', 1, '976010'),
  (73, 'Ahmed Abouelnaga', 'ahmed.abouelnaga@gmail.com', 'scrypt:32768:8:1$8MdN5sHDDm5Hb71N$db4a97b943015a28ebf6473a188c76cacd467345331e0e10de210062fa4a893c4a5fa23d482d13322af8b7427a7a34cb30d7cabb4bdcdf260e265127f13b40a7', 'egypt', 'damietta', 1, '962088'),
  (74, 'Yomna Elbadry', 'yomna.elbadry@outlook.com', 'scrypt:32768:8:1$hwSrDX6hiqxTfSwG$0690abd89292bfbb7ef835ff3886c0181f6a553fa293d237be2403218c616b683a3e0abd85dfc77bd00f89c9ce40c9021f3bef5d1c66d34da9eb6ce8e4ab9022', 'egypt', 'alexandria', 1, '706907'),
  (75, 'Abdallah Maher', 'abdallah.maher@gmail.com', 'scrypt:32768:8:1$ono1moVtXjPe39Mh$a1a4078d487bdf10860e12562647902a564b4f2e7774b8b73ed1fd9491a9bb051eb09379ea5b24766fbe960804802f5b34d6ef9b23aa360003c1b563d19c96b7', 'egypt', 'cairo', 1, '360396'),
  (76, 'Basma Salem', 'basma.salem@yahoo.com', 'scrypt:32768:8:1$N5gqOAs9j0BUoeMM$e7d5e25615cde968d98d0d14121c69d6b125963d2b7c11407566bc75daa494f7a833e515066e660bcaca4e58a48b342c04cf774ecbaa0236ff21adac34136d8f', 'egypt', 'damietta', 1, '807000'),
  (77, 'Mohamed Rizk', 'mohamed.rizk@gmail.com', 'scrypt:32768:8:1$uJ0VkZfNFGRks2d7$c40baa5cead13d0f4a917b4e13f65e47a36c23507e939e9e3c355e1df28ca002ad757fdc90fa4cbe3f3c4b1ea4742387e9935a0fe1243c00e62b5e5c16a2f19d', 'egypt', 'damietta', 1, '298718'),
  (78, 'Alaa Mounir', 'alaa.mounir@gmail.com', 'scrypt:32768:8:1$TAZXKFHnZXML5ypS$624ad79c8f48347844b5981c810f995b8e2dff91d5af35d389b951366ba31b29268a7bffb658d438bd1b057e552effa1e1353560e4e1d1b31bc89846287029a9', 'egypt', 'damietta', 1, '511291'),
  (79, 'Fady Elmasry', 'fady.elmasry@hotmail.com', 'scrypt:32768:8:1$pUxxI07Xbe6aOs7f$8e189a8837e9f0a991433dd8bd86dd1c03cf307247b322ff73acd438b4fd007a97f03440649e1fbd97cbb3f8894995dcf11acfa9d4db1d810770d6158adf62f5', 'egypt', 'damietta', 1, '907720'),
  (80, 'Mohamed Atef', 'mohamed.atef@gmail.com', 'scrypt:32768:8:1$EL2Jf7L0OhZMaw5B$e3dfccdb90f5a81d5d0d4e2d4a4c8b09e860c750ef7aae9a1f93e08df997623996db077a9bce4e58682ee29acb41ac5952ffeeb27f54e880a888533692b488c9', 'egypt', 'faiyum', 1, '972007'),
  (81, 'Hend Badawy', 'hend.badawy@gmail.com', 'scrypt:32768:8:1$V4rJZrQyHPrXJnsa$294371548bfc53a2e4161dd69d02e247c81d75a8624a126db11bdff8023c41ec061771aedf76b4a2796ee863516bde96725e89ffe6897e43fc8e2c71ad8b01ac', 'egypt', 'alexandria', 1, '942448'),
  (82, 'Saad Eldeen', 'saad.eldeen@yahoo.com', 'scrypt:32768:8:1$ml21V2oGtqVpAdgc$d2c3df0539d6ead95a28ac34363ace6bc355f7ff96ae503bb5dbb59d25296314a766a676f44088def3aa4ecf9099d48bb192938d6056353afab44b9cf5308dc8', 'egypt', 'faiyum', 1, '467188'),
  (83, 'Walaa Mostafa', 'walaa.mostafa@gmail.com', 'scrypt:32768:8:1$GqKoXQ5KeDySzaxk$15e775b67f3b979b3dafa34fd8bcf678dca525a102093749e2ef9d6aec7be7724ad656bc3382ddbd82764163b2bac68ec29c63ce5b2e846423aec9218d4a8251', 'egypt', 'faiyum', 1, '229023'),
  (84, 'Anas Hamouda', 'anas.hamouda@gmail.com', 'scrypt:32768:8:1$7rxKOQettZ2uS0M1$cd58c58d5a7efcc9218f546ddd37a2c3f714f2d15e3b7f4fe4a4719adc127b4003b8bb48750cebcc6f10fb64916c31738e078ea9062faeb38885e7d4db7c1ad6', 'egypt', 'faiyum', 1, '637990'),
  (85, 'Rasha Ismail', 'rasha.ismail@outlook.com', 'scrypt:32768:8:1$qga5i1kCylknKSoX$8619344063d6697d5b1c37ac0aa830bf710836b3238b1f8db88fc4b7856af4f36fd2da1c801e11ecef2482587f50865bfa3e3f16beb6531bea8820339c8a5651', 'egypt', 'faiyum', 1, '171799'),
  (86, 'Ehab Zaghloul', 'ehab.zaghloul@gmail.com', 'scrypt:32768:8:1$IfKA402dlJxXump6$20768bc16d5be99da25994c8fcd229586ef7c8eec005df508d7c31002f63ccae8b3244bf8650c4972d6022327841831148f3825bc327c86db9c5666aab05a5f7', 'egypt', 'cairo', 1, '191776'),
  (87, 'Nadine Fekry', 'nadine.fekry@gmail.com', 'scrypt:32768:8:1$5VXRFQ9WED5jVSeV$75ed6944c4635ab5c70ba085a704164e0a664aad3bbbf208606795f0afc43c8d4c3a8c2a8988d608820d96654d3c6be18b1d05163361bb8f4baebb19f90b39c0', 'egypt', 'faiyum', 1, '961796'),
  (88, 'Mahmoud Abdelsalam', 'mahmoud.abdelsalam@gmail.com', 'scrypt:32768:8:1$YeXGbIqlenUMaWIS$a942bff79161fa6f27117c0b345bc73b884c0a39259ded6d57aceb696911e0f1500b43ed4b028acadf06eae3e514a8b5988f0ec78e45c4d21ac340fb7504b459', 'egypt', 'faiyum', 1, '811207'),
  (89, 'Hussein Okasha', 'hussein.okasha@gmail.com', 'scrypt:32768:8:1$dtMSn3S44hx0sNPA$a7abc55a419bc0fe1573a3490084edc2fab274372f847e94b51bc475e3afa2dcaa538cadefde92e667552c3b3d1eb6b5cd5a90355eaa5707a35a1f83458f986e', 'egypt', 'gharbia', 1, '430900'),
  (90, 'Doha Kassem', 'doha.kassem@gmail.com', 'scrypt:32768:8:1$aK6wSIBNqmDAagbi$c19ee4f00e2322c4411869dd1c8b371cb2575b846ebcd67991bea42cb3d94a1f1c255c3fe4b1d1ab78979a043eda0c4555640a3ab5d252f1682faec7571f2835', 'egypt', 'alexandria', 1, '629733'),
  (91, 'Mohamed Elbeltagy', 'mohamed.elbeltagy@yahoo.com', 'scrypt:32768:8:1$F40x2iHpybYQNxIp$b5074a2f455c88a3d2fdd8e483e42ee4ba257b5f5baf2fb202d98ca58ef93fa151c490991248a1420fcd8b067244fc249e1b13ce608779a8a5d742a64691fbda', 'egypt', 'gharbia', 1, '237846'),
  (92, 'Samah Ghonem', 'samah.ghonem@gmail.com', 'scrypt:32768:8:1$YyYpp62yI1aAxqgH$fe64ba2a584e295432f9b5412ab24b017897e0effdd4be86dc31a173f81540acb0ea5ddcaa96dc7c94e1b52698fad125b76d8dbea8ab399a892e16d05a3c1519', 'egypt', 'gharbia', 1, '197926'),
  (93, 'Amr Diab Fahmy', 'amr.fahmy@outlook.com', 'scrypt:32768:8:1$P4UnMkpjQYyifsXZ$20e665b863d6905b4cf1adaf6e635c8118fb807eade6830e0ef48bd884b73dfbc5d6c806f180651e704e1c70c7f18270536e0b7271b45ad5b94ec8ab7992dd1a', 'egypt', 'gharbia', 1, '015577'),
  (94, 'Zeinab Sakr', 'zeinab.sakr@gmail.com', 'scrypt:32768:8:1$RAsYuGMvYkZDy8BR$5c175e5284dfaf3e6ee3531a4abcbf68e723eb6c5352acb5c0f95885ae78bcaa0ef891f689e9387447389a1adb2bf6a703534813c4521c5cd5ad6999ba24c92d', 'egypt', 'gharbia', 1, '945940'),
  (95, 'Mostafa Awad', 'mostafa.awad@gmail.com', 'scrypt:32768:8:1$zoKhfAuFx3ae7oJi$442f3730da0d92942f0a326d1d163730c170f728322d5f1ea479a2e783000978f91e1a7dee39b3f3bda0998f1137b8a6700255480ee0464399ae962c1ff1bf89', 'egypt', 'alexandria', 1, '760669'),
  (96, 'Menna Allah Ali', 'menna.ali@gmail.com', 'scrypt:32768:8:1$fs0SvNS168lTB1ET$c9ad0305ac70174e19b1a66411ca286b6e31f15e5ebfdc629d5f0bc215093819e5a20f6e80bbf682dbf591e5ccc11667ef6324cf9b301bff1aae1fec9a160465', 'egypt', 'gharbia', 1, '501776'),
  (97, 'Sherif Habib', 'sherif.habib@hotmail.com', 'scrypt:32768:8:1$RFi9JegLKj7SA3xD$3d6e5f221accec32d5ecf3590938e75b28283da4ff358bbf8bbfd5ac2947de04fd8f39a9da9d45bac59294a4e35587308c762f3fc06d4c68658b54126e00228c', 'egypt', 'gharbia', 1, '497617'),
  (98, 'Mahmoud Hamdy', 'mahmoud.hamdy.giza@gmail.com', 'scrypt:32768:8:1$iDid4zBEbQlRrzKn$11bb80220162df43b9a9d3a5f5f24c615f912ba69536661ce9a544d3ce91a9362f00d505ea40f13d2fcf7e1660b3faf653f4aede34d269550bc6e8e933a6cccc', 'egypt', 'giza', 1, '388789'),
  (99, 'Alaa Eldin Yasser', 'alaa.yasser@gmail.com', 'scrypt:32768:8:1$jonFd8kiAkG4KrvO$53f9264299f2fa9e7e5c6deca2690419f500111adec8ba12c3b4b42e78da7a67872d954a23702cab8a9e03610c2622af76a8d87f7df104378c3807333d5b91cb', 'egypt', 'alexandria', 1, '719092'),
  (100, 'Mai Abdelhamid', 'mai.abdelhamid@gmail.com', 'scrypt:32768:8:1$DTJFzjrvPdarFNwu$ed621fbc6a7f63c2bbbc6503962751dee962d7604466cfd3c5b1f942346d0c220fd1ae29cec9ef76e9263fa15090740dd9b85c4203358880ac3e41dca5a3ac55', 'egypt', 'giza', 1, '948232'),
  (101, 'Mohamed Ghazy', 'mohamed.ghazy@yahoo.com', 'scrypt:32768:8:1$gQgUhrhVfJc031YZ$1e377089dd801d137368b6d08e52fe82c45436c41bc01c84bde8f361d3c6ebe7eedc9edc1b1b1e8b158a0349fe03c7d2acaea1b2b9151324755785e50df59d5d', 'egypt', 'giza', 1, '439943'),
  (102, 'Rowan Medhat', 'rowan.medhat@gmail.com', 'scrypt:32768:8:1$5tc8jwV5hWIe0bYW$4f0b3bd6bde378a8159be951ac713ff1fcf1b868b5efec55e17b76f54f675d62d4b0d98c6d1c6fd7ee4aa3af7486d2b99f12a1e86810afbb871d243d7fa72fb0', 'egypt', 'giza', 1, '598659'),
  (103, 'Karim Zaki', 'karim.zaki91@gmail.com', 'scrypt:32768:8:1$0dsd8fTFdARUF55v$494b73fa790412f650255d4be23f020cfe28017cc1a222e4cc03cece9a600f823f9a1e0a6cfe1fb4a99c65d52754d0404c6eb294a6517df00e1bdd4c611f29ba', 'egypt', 'giza', 1, '817120'),
  (104, 'Yara Hossam', 'yara.hossam@outlook.com', 'scrypt:32768:8:1$OpWlRL889wPUYyoz$12d4c062e6bcb9735c6978c0fe8f7e11b0db5209cc13afa6607efc99bc0b8ebee97602743abcd0dafc6e70d18be7031950516ac9219aa31dc73c5977c455cf17', 'egypt', 'giza', 1, '722173'),
  (105, 'Tamer Hosny El-Din', 'tamer.eldin@gmail.com', 'scrypt:32768:8:1$sNlRgYkcs0e82QU5$ccf192e7ff889d04559f063eb8d010d9b3d11f4f5cdd5152ae4cabb7811d9a461ab638670881591a58de2b51b1e3bc44b6a3ed6f73fcebf27d719717ca169c15', 'egypt', 'giza', 1, '206017'),
  (106, 'Shahd Emad', 'shahd.emad@gmail.com', 'scrypt:32768:8:1$ge0huLnIkJDPb8i0$ee45609855a4481aa80ca505a5322a70879e3752d96ad1957b8070a5402a318bb8704792a6d39d68b0e783d1966ab68d3e9f75988b5e09a153f87538abc999fe', 'egypt', 'giza', 1, '641189'),
  (107, 'Mohamed Fathallah', 'mohamed.fathallah@gmail.com', 'scrypt:32768:8:1$IzWzlk1FHgtqLuDa$66e0c571b1b00af9ed7062da21e408be233a2348eed467a52c9865ca2a643258bb5563a85043d04dce2886845210a978f23ea134dcaf6e8df7cf666bfbb017d1', 'egypt', 'alexandria', 1, '932115'),
  (108, 'Ghada Anwar', 'ghada.anwar@gmail.com', 'scrypt:32768:8:1$1CdcYK3rVxELazo2$0ed2a3bd7c6366c5597bfadbc7093921bbf55ceb6a848bffcdd82960e4cdfde72d57b139d5842bb52970369004de28dce4589d52ba2c4024e79bc7be9e92a0d2', 'egypt', 'ismailia', 1, '262379'),
  (109, 'Ahmed Sharaf', 'ahmed.sharaf@yahoo.com', 'scrypt:32768:8:1$kvLOMflZHroUuS8c$9b9f94cbfd93f4b407316c9c404ddd7541feaebef2a342bc1c507e4ddd369c719d25d0c35a8d2042946b00927c82ab02b0f55597a7a624ed987dc2e7d7950b0f', 'egypt', 'ismailia', 1, '632385'),
  (110, 'Noha Salama', 'noha.salama@gmail.com', 'scrypt:32768:8:1$pvDchEvgncT6gY5f$b8dfa0dcc60ca7f5adf8d4cd4a63c5c5074f5c685f2e6cf066cf43c862335c1b86fa3d39f78188b4571e90dc7fef55de901f5c51985294bedd0195f4b61732f0', 'egypt', 'ismailia', 1, '158032'),
  (111, 'Islam Qandil', 'islam.qandil@gmail.com', 'scrypt:32768:8:1$JQFZ0IVPdUslpK2L$df4bbcca503ccdea0551d30b3d2b6b9c3307670b92552ee4bea717716956d88ddcdd69e201c4190d5cea54bfb062c054a75c54c2513a091fd377c87f0d6852cf', 'egypt', 'ismailia', 1, '418160'),
  (112, 'Mervat Aboelela', 'mervat.aboelela@outlook.com', 'scrypt:32768:8:1$gNbvpQEnqVyC3SCx$facf9089fc549629ff0ca8c9b3cd15d4391cd08dcf4a758f228522debe387d0fcdc03598c5230aa140877d31662a5701d910e13adc13cbe01517b594331fcbe4', 'egypt', 'ismailia', 1, '296129'),
  (113, 'Hatem Lashin', 'hatem.lashin@gmail.com', 'scrypt:32768:8:1$yhbxg3FoBi1QDmHO$38d6f4e0614e0e89f992598fde0ca814460badf86026a5e2b9155c1d24881a2ad167cee40e99a06a8a62dcbe6a6bf1decc15cd8e4ac0f3c19c39cf78aefa8723', 'egypt', 'ismailia', 1, '877772'),
  (114, 'Salwa Barakat', 'salwa.barakat@gmail.com', 'scrypt:32768:8:1$f3f3XF4TALweLaq8$bcda72733f7fd78f5bcca50b98cff8e08b85a559f9d10abfc4cf63db3b343d1f2afbd3ca8914dffef08ee593946c1d91c609cac21ea2134ffdfa58564d7c4829', 'egypt', 'ismailia', 1, '552911'),
  (115, 'Ramy Mounib', 'ramy.mounib@hotmail.com', 'scrypt:32768:8:1$AyaBXaY4N4gijj4V$d6fbaf33fe0488c5c6a2fce2209f8ebb95626812465ce3e20c31c0ea5d98f0fe494e71f7dde71f0350413798900195ad74558e2e64de06ffb3fa1ab76671b2b0', 'egypt', 'ismailia', 1, '777623'),
  (116, 'Mohamed Sobhy', 'mohamed.sobhy@gmail.com', 'scrypt:32768:8:1$XhEDrAeLOw0HFYVp$89ee7d20ba7c2ba84608333f6bfb492b3c76e9ddd70b9c84e18e3f6063f975f80263f897d4645990cadae2a2de5ffa38e7c8d315278df25305ec53767d63d94b', 'egypt', 'alexandria', 1, '682102'),
  (117, 'Aliaa Elsawy', 'aliaa.elsawy@gmail.com', 'scrypt:32768:8:1$Cf8tS6DxOBAiSQzl$f246c82eba8a192cbce7e62202430aaa734d7dc6d2e5adeecd0cb5a405bfd7389d4402852b1eb4df1d77d2806dc4b9c6299cfaf09cd848b0532e02cb1fce0e99', 'egypt', 'kafr el sheikh', 1, '528349'),
  (118, 'Mahmoud Shehata', 'mahmoud.shehata@yahoo.com', 'scrypt:32768:8:1$roiOpjMbplbKsS8A$d72c1d6a1ab69d87b232595f0eea1af88ca6780ce11d498514776dae1d6d1a31ad7133ac3b51d355672c7942edb7f6405eaffb7b8e231680650f312fe22c973f', 'egypt', 'kafr el sheikh', 1, '242637'),
  (119, 'Hanan Metwally', 'hanan.metwally@gmail.com', 'scrypt:32768:8:1$pCZ4dgRvsM2AGy8n$45ba770c0d381ac5f7eefe99e46bf863e97f71b41a69ef8f5c11a3f4817a140b20ee38ed8248359c2930e24d2cb05fe24c692152b947618f220fcd2fa49261e2', 'egypt', 'kafr el sheikh', 1, '148674'),
  (120, 'Sameh Eissa', 'sameh.eissa@gmail.com', 'scrypt:32768:8:1$CYFwSCd5vDONsXYy$48d9787a29f36abf1da2dc3479a084181e317a507335a2e1cb4b5f59ba67b1f28be296177fd31b5b39780dd9b8d68bec98515ca082a447e22c4d54df54d342ba', 'egypt', 'alexandria', 1, '608116'),
  (121, 'Ola Gouda', 'ola.gouda@outlook.com', 'scrypt:32768:8:1$JNtDbNXYeLHGCqAi$bad1542329d27dd037c80c22222ea3658c466ff2d095c633ae1a0327bb9efb3f5fba6c29ff3bbbb530e39e82bc71bd819873afeb183b1b26223bcc49ebb4db71', 'egypt', 'kafr el sheikh', 1, '326370'),
  (122, 'Abdelhamid Taha', 'abdelhamid.taha@gmail.com', 'scrypt:32768:8:1$RdYQjTDU9VqCaJXL$a3169eb695ab3e9e7280ddfabd063f2fc19a7d2b5297b182dc3b8406f065121139762d1c07fc453b02b0a46036f8a08e7c48e6b3d45d3b3a911c857b841a5161', 'egypt', 'kafr el sheikh', 1, '644438'),
  (123, 'Yasmin Elwakeel', 'yasmin.elwakeel@gmail.com', 'scrypt:32768:8:1$QGhY1bLUX60eNs6H$b36eb9f0fd327b7c493902c7daed254abdc4b1fdece2cde47ff0e9d1265747174b465bde995d76ad9751e8beba29c786d1055a39c8301d5b55529279e3cc552c', 'egypt', 'cairo', 1, '839212'),
  (124, 'Anwar Desouky', 'anwar.desouky@gmail.com', 'scrypt:32768:8:1$IJWngkBoSnJ6hm5A$a77b2fd21dd92703e63880d772cf1f6cad68572bebb925fb9dcd2c63949942c791f3aaa3ba68561655c203a4f5e60ccb1b1e5ac41cdf308ec0c4e38d1367ec6f', 'egypt', 'kafr el sheikh', 1, '698635'),
  (125, 'Mohamed Abouzeid', 'mohamed.abouzeid@gmail.com', 'scrypt:32768:8:1$ff4VCcxceU0O5t2M$dbe5e036707c5037269ad60c6c0a70de758a8c3c8ffe681f9ea713c3798adc40df4a94147fddf608c399f44ee1f11769b665c61a99a60ac07e307a619c4ff4ef', 'egypt', 'luxor', 1, '203296'),
  (126, 'Nahed Elsayed', 'nahed.elsayed@gmail.com', 'scrypt:32768:8:1$lNf0zqjcBrWnad6P$063ae5d51947499a5f596862ec543cbcbecf8116deb3b87b6578dfa98b21cb6af4bc8f362843d7b02b796ddb9692ddc52afdb4230dae4e8c0e830120c1c671b2', 'egypt', 'luxor', 1, '778012'),
  (127, 'Mahmoud Ghoneim', 'mahmoud.ghoneim@yahoo.com', 'scrypt:32768:8:1$OosPZyKkl2GTmkim$4668eefbe1dab85b453bf98adef62673948302957cd03cd04d2413f4c8667811831e025b3c7f0c5dafad20b99d726c9173a80736725191ca112c9c8c7deea654', 'egypt', 'cairo', 1, '898932'),
  (128, 'Sondos Gaafar', 'sondos.gaafar@gmail.com', 'scrypt:32768:8:1$10jhMdylbxbTUNPm$3e8c57c88045dba029bbf4e6e24a1f8c871e4a28c028d7808a0c2c39d8c10c72135b7add9d11ed81b262f7264cddc9b3d5b9c96e49d09244151d66859a3cd7ab', 'egypt', 'luxor', 1, '395142'),
  (129, 'Hamada Abdelmoneim', 'hamada.abdelmoneim@gmail.com', 'scrypt:32768:8:1$Fmln6N3ChmT0Y56R$8d5da1d8888f082419cc337fec5fe88c78b1487a4548e2dcdc8731377c0e1eb50abb920655401bb8adc9f98ed75b377f7e68edd69e9b122b3d20ff782e264c42', 'egypt', 'luxor', 1, '247608'),
  (130, 'Fatima Zahra Ali', 'fatimazahra.ali@outlook.com', 'scrypt:32768:8:1$s1QKaHRErV5wIo4k$484dd1e9a423d33f46cfa1356018c80afc0c26fcfd72b1080b8e09c251470e8d582383757dbe6ebe8334a67491abf45db5d8ae3026bb72f8e2a751f7ad90e96a', 'egypt', 'luxor', 1, '710479'),
  (131, 'Hany Mansy', 'hany.mansy@gmail.com', 'scrypt:32768:8:1$91I5mZ2gUlh6xOGA$0dde1abb0903693812e72e32ce83663ad550f6d7475c39219e77fb424ebe85ad29973e2984c1346b00ee242dc3e78e0352e73ecea43e47f4a50b28827eaecf6b', 'egypt', 'luxor', 1, '436917'),
  (132, 'Reem Abdelnaby', 'reem.abdelnaby@gmail.com', 'scrypt:32768:8:1$TDgsED5kvJ5YdgyK$2596c2436af2943d96bec80f233831f193b7724043569c18d9d7c6626a2fea4b02f4c94143c8ada95750517b1773b5daf628ed2b270c61c70b144870c92a8068', 'egypt', 'luxor', 1, '351001'),
  (133, 'Karam Sayed', 'karam.sayed@hotmail.com', 'scrypt:32768:8:1$c5HyOLG75yHMBBgk$78c5406f118221387ec343bca336e3375aa749290311e223625fad6c290e11793041497e9d60537ce1ab5e163787c4ab72cca584adada8d27e295e351af5f312', 'egypt', 'luxor', 1, '525995'),
  (134, 'Salem Awad', 'salem.awad@gmail.com', 'scrypt:32768:8:1$FqD42L34fnmN1fYO$5ec85b95880e657c05c29bfa0cff78edcc1672e95fd58825e562c7f3e99af5b3ffa2829b74bb0dee51c84f6baa47618e4beb450e799e54f34ffb15021124564a', 'egypt', 'matrouh', 1, '050869'),
  (135, 'Mabrouka Saleh', 'mabrouka.saleh@gmail.com', 'scrypt:32768:8:1$upzppQytpw2r65bV$54d3bd6c5d67b2978edaec18acbe6f7b1d18e9596a62f9c7a7f13c9aa1ceafb7def6930d7f84223dc2cdb63ee1312ccec4dd196bd2f30f10ca8f44a214e387a7', 'egypt', 'matrouh', 1, '193182'),
  (136, 'Hamad Selim', 'hamad.selim@yahoo.com', 'scrypt:32768:8:1$6YFoJFOUXZTR5NKA$79861575388063e33cff74918886b0453c02a7aeb64f90cc319a6c9d39c2ad31601460938d7e02b0dfa5e40e3399349ba8b4171b8097193a8fe4898523e62cf4', 'egypt', 'matrouh', 1, '252239'),
  (137, 'Fatma Mohsen', 'fatma.mohsen.m@gmail.com', 'scrypt:32768:8:1$m42EjscYFS2aBKj4$5b7dd51c38f931d64822fed19102c1d6314912098d8e445380445eb71696b989bb6655cbab577d049126e9af0cd311ba2445a1f2eed5273af1ead465449c5a05', 'egypt', 'cairo', 1, '843530'),
  (138, 'Eid Mohamed Ali', 'eid.mohamedali@gmail.com', 'scrypt:32768:8:1$EXJ6Jd73IFKpkWma$d17d14c35496aa53fc6ed83f35e567a428941b1f81f5779ff32622473cc39800d935c8e3a12a225f7f6cf38717dcb44bcc942a4f57700c4203d65a0336fe70f9', 'egypt', 'matrouh', 1, '968559'),
  (139, 'Sabah Younis', 'sabah.younis@outlook.com', 'scrypt:32768:8:1$TIyV2M2ZIiB5FsuB$5da95db920e5a51f956320342b9c1e007808997d97cf3207e436d7ca99d8d0b35d335141f89c3a0395d915916037bb7f4b14baccdbb096f7baa4df78c2150bb8', 'egypt', 'matrouh', 1, '566026'),
  (140, 'Atef Brahim', 'atef.brahim@gmail.com', 'scrypt:32768:8:1$03hHmOnD6EWj2vGo$5fe931cbf4a149c33b4e85cf5306bd689440e1561f9af12b640951a53167c38d267b87ea375b16c4fd4e1490bf8cf9d2728f623d4b261440889162d62e3a240d', 'egypt', 'matrouh', 1, '637376'),
  (141, 'Zainab Salem', 'zainab.salem@gmail.com', 'scrypt:32768:8:1$i31RsP9sVDN48bC5$2509aad82f99b327fd5d64527fb3a9725fb8f5609a85dc1129a11eb079998c66f413c4d5601c45215cbb4921f66daafa58ea46735d374bb69781bf1c46ef0205', 'egypt', 'matrouh', 1, '866062'),
  (142, 'Moussa Abdelati', 'moussa.abdelati@gmail.com', 'scrypt:32768:8:1$Cx7m1KWoQC09nkra$dfb4d290a2692e2990f80e02501919162d80307c567991446e0098f0eae521a9aba369070cba9a5a29fa8ccd45d0a4c6f41700ad79a061b4dc3978eeb30ad054', 'egypt', 'matrouh', 1, '874046'),
  (143, 'Ahmed Fathy', 'ahmed.fathy.minya@gmail.com', 'scrypt:32768:8:1$K6HrtybysJPPqaAn$c6752f435bec84bf92d71c1ae22ac23aae076a281927920a6326b70cc9b1ec5dc22c0f370237c9d48550175c74da7748225de810c74c25543766b7c5f71108c3', 'egypt', 'cairo', 1, '954455'),
  (144, 'Eman Khairy', 'eman.khairy@gmail.com', 'scrypt:32768:8:1$LEvOFykklaDwHoVu$2148a98ba404d267b31604f9624821bced1e054aa34643b63bcd41f1b12ba420db75bd309d5807406ffc990d34f19b3d0ba95c2787fc6c09694296b56f4abeaf', 'egypt', 'minya', 1, '335754'),
  (145, 'Mark Adel', 'mark.adel@gmail.com', 'scrypt:32768:8:1$oDDureTo7F68ooo1$d174e4d7b562e53d96a67e2291940eb9812c62a731273f4c926428f7ce0f08da8b48ff3262758c2871c41d2f2a0b668e21bf2d46448586c57daf7887ca3e0d16', 'egypt', 'minya', 1, '267237'),
  (146, 'Mariam George', 'mariam.george@yahoo.com', 'scrypt:32768:8:1$et1b2dapGJwiqknz$754dea38197da97f20cc438015ce78c5fbbd81ad90d64e20ea6ff6521e5427dc5bb3cceabc04fe05299101591ef5320471299cebec10e46143df2c5c4ca5dc97', 'egypt', 'minya', 1, '510915'),
  (147, 'Peter Wagdy', 'peter.wagdy@gmail.com', 'scrypt:32768:8:1$4biRmv1WZebybSMG$f3c7dca516c5e594122c14273d757b145392df9f795122986f2c5c441be712781ce123388a60196470c8be27cbca75bf50c277ba7df1f6ca6d4ffb5028c5c81c', 'egypt', 'minya', 1, '880147'),
  (148, 'Rana Ezzeldin', 'rana.ezzeldin@outlook.com', 'scrypt:32768:8:1$8p9V0yJZVHVrPyXn$676440d4f2a41cb79663ddb78451e5a7dc9cc5f949badf584e62080df981e5b838d587ce21fd029683b8e65902112d970e4a94e3805c8695a1146254b1d50ff9', 'egypt', 'cairo', 1, '998440'),
  (149, 'Mohamed Abdelwahab', 'mohamed.abdelwahab@gmail.com', 'scrypt:32768:8:1$BNGd7pcgMZetPk7J$250df3d4d8aaf5a134f51287960885944a4ba58efd47094384f17d288b6f4a800f2c34aa014bad3ecfb42969dab806ae0a4e9caa2962bea0648bc4c722e476fa', 'egypt', 'minya', 1, '628028'),
  (150, 'Shorouk Hassan', 'shorouk.hassan@gmail.com', 'scrypt:32768:8:1$oIcPrkPFgHgZya8t$fe6f4fed3b90f74642a6791d35e8e0e99b3ff149fd9f7f8cc52f7e038b93ef2582a35e509bfdeadbf264be86fd614c434a99781bf9f3d170aa9952c1cb0a38fc', 'egypt', 'minya', 1, '025416'),
  (151, 'Medhat Fouda', 'medhat.fouda@hotmail.com', 'scrypt:32768:8:1$BAL07X71BTk1NO25$399152928d455892bf743c244eead991cfb55991de829c1fce5646ec55a7231d41aa37c340238c05bee7433a026950a5475e76932627bbe19a403b4ef24c606e', 'egypt', 'minya', 1, '841846'),
  (152, 'Mohamed Elsherbiny', 'mohamed.elsherbiny@gmail.com', 'scrypt:32768:8:1$CxkVmNFTDEdgzsZ0$806d3c1e5366064c92a495808aeb8c474f901c163964dfba8c2c1cb437856722069d3b5d5de66e23bc8a06bdbb59b1546a11aec3d874578ab3b68186574d4fcc', 'egypt', 'cairo', 1, '223673'),
  (153, 'Aya Elgamal', 'aya.elgamal@gmail.com', 'scrypt:32768:8:1$KrpxNim7bkmVFDpN$4b03190b2722e6c83168ad0f82aeacd684a18d672250e642b5db977f3499b62685ae41f1d02d1ddbdaff5f1f5784d556531b96b0700f2cbab29a55dad519002a', 'egypt', 'monufia', 1, '174210'),
  (154, 'Abdelrahman Nofal', 'abdelrahman.nofal@yahoo.com', 'scrypt:32768:8:1$DXI7NZQ80IhcJoWf$a7d9bfafd21f8a70ccf48f25c2397fb933e3379b967362814b2c6b932e24cacdcc84e21fcf1394d6e2abcadf67ce302acb403143988fc61afb55ca200625fa08', 'egypt', 'alexandria', 1, '977916'),
  (155, 'Hoda Elkholy', 'hoda.elkholy@gmail.com', 'scrypt:32768:8:1$nC8yanL9oo713TO1$807ae34fb40cd8078f3556c78bbcd3c7a17762b9a93b053ba0fcff7fd2956eef076aee241a39e86c04fc45cbfa282bf045fa3490b132aa16fbb14d4e01901393', 'egypt', 'monufia', 1, '216299'),
  (156, 'Waleed Eltoukhy', 'waleed.eltoukhy@gmail.com', 'scrypt:32768:8:1$NoOausq9EK7i7sTV$95e83bccefd05f48e4314e4275cb36856423cd9034255cebc8ef81159a0e7697da82a96ca484c3bae0e4d8c259982664680ff4a6402a56028bcd40d6110b8940', 'egypt', 'monufia', 1, '636131'),
  (157, 'Nehal Ghanem', 'nehal.ghanem@outlook.com', 'scrypt:32768:8:1$L5beIngkQqnokV6U$089f63bbc8c823bb299cb6d99dec6bc3f4b7d9638e13b915d99b4193ff4252d13259f7c184ee0b472bf09bc4025a98facb2637e13dd7c2762b13916e231a63cd', 'egypt', 'monufia', 1, '092358'),
  (158, 'Emad Shaaban', 'emad.shaaban@gmail.com', 'scrypt:32768:8:1$3PiUTlmunW0fmcSO$6f67cbdf79bee07ac1d28109cfc1e60fb519c5c4d01057d71add50a444c73ec3b730bcd3d15e89a09b0fa5ca9213f2d11ce311ae4091d24f37762506992197b3', 'egypt', 'monufia', 1, '458081'),
  (159, 'Alaa Elmenshawy', 'alaa.elmenshawy@gmail.com', 'scrypt:32768:8:1$7OxYYfpKXnyjmNfg$1eb435e0943f117cf5de75ad3ae1b0071eb6554bcc3ed64cad1c2bfc19380be0bb52033e62e1928996767eafecbcccf3710684a8a944b97e8d4c9140304742a8', 'egypt', 'monufia', 1, '212129'),
  (160, 'Gehad Mokhtar', 'gehad.mokhtar@gmail.com', 'scrypt:32768:8:1$QttGmgxdeJIxynzc$820d1c958b011dc22c165d81f6e232cf0b35bd622bb368601883b4cdb606693d29845b5de8ab33aadd5ade7ac9a01723ecaabdd9102402c8f4d5c288c209697d', 'egypt', 'monufia', 1, '597967'),
  (161, 'Mohamed Abdelmoaty', 'mohamed.abdelmoaty@gmail.com', 'scrypt:32768:8:1$1QoKMmvy64OnKvKk$f246115279f00be8156fc12906474247b0e517389b1abd6c4aeb6250712ac28f5cbd8cc7662ff4191591a8a477fe65ab70f3b26f6c5b903265888200c2567f4e', 'egypt', 'cairo', 1, '497434'),
  (162, 'Hayam Fawzy', 'hayam.fawzy@gmail.com', 'scrypt:32768:8:1$AZprti8TSAbPkz1i$cd70fc74cb683e178bb55dae3239a19802fd107bcb52022034724922379fd537d2d4e45f9763de7de7ced8d2dc4978b760ed1e33174744ec26bb228b48769bf1', 'egypt', 'new valley', 1, '008903'),
  (163, 'Gomaa Hassan', 'gomaa.hassan@yahoo.com', 'scrypt:32768:8:1$osIgkKpFfZPIYLgG$2ff4ec646316a8771310a622a534c2b516aeb1fb53cff4cf9b30616490c8909c9e7e1d5f48eaad53ba08da84f84dcffc6c1cef87a6f2d603d902062a10234797', 'egypt', 'new valley', 1, '376298'),
  (164, 'Safaa Ramadan', 'safaa.ramadan@gmail.com', 'scrypt:32768:8:1$KJLNPF7H110ScA1Q$1dbff3aa78aafa1de844dbb0d60754af561088ecaddf5f7da02a735a4584360a92505d56984690686fc39e23d3567ce014a32198d8e313e6c7e1fb6b118570b8', 'egypt', 'new valley', 1, '030651'),
  (165, 'Belal Saber', 'belal.saber@gmail.com', 'scrypt:32768:8:1$TynVO5YmdMD5OlpD$a897e8888ac7314106debe4de507c44212567c8e9cd2390d2d1a9dd0389c85484fcff0cc95c36995ac806efb39e34beb0874a17ee1e3a63dd32f6a8d04233170', 'egypt', 'alexandria', 1, '221053'),
  (166, 'Nagwa Abdelkader', 'nagwa.abdelkader@outlook.com', 'scrypt:32768:8:1$iygmjCKWWqYw2U8D$7beca2afdfb5f9aaa66e6e8195525a052e1328a1ea2de9fe7e16af21159286ccd727f70652d5d26360994e8782e71bf06a2ad79494178af25180e9d8c17288b0', 'egypt', 'cairo', 1, '424935'),
  (167, 'Mostafa Zakaria', 'mostafa.zakaria@gmail.com', 'scrypt:32768:8:1$tDsqunyyGJ9XTd6N$66473492c75912f0ff07566ea19a630e3e310e966f1e7cb5d671f4d7a04e34dee2de2496cb2038a2f275c10a00099ba138b7c5a484a8bb7fb2bc8826eff0c253', 'egypt', 'new valley', 1, '550873'),
  (168, 'Rahma Elsaid', 'rahma.elsaid@gmail.com', 'scrypt:32768:8:1$YKgXVEyLQFPSw6El$9ae381c8c6c0804c270f0579dc74cdc122efe363fca306d6c4d22a084b64be4a77241adaa1baa7928a95219e591315d3812cbf40cf222ecc85d81c08d667adf5', 'egypt', 'new valley', 1, '363722'),
  (169, 'Atteya Mahmoud', 'atteya.mahmoud@gmail.com', 'scrypt:32768:8:1$ioIB5iGgkrv3xXJd$ce77c1d8ebb7ed0cac732778b7cb13c134004f0ba872cdab1b5c16712c4b19b134e5722bed658c153184f64e2e2e4d06f21c57b4f5ab8b3ecaa02d1716ef1444', 'egypt', 'new valley', 1, '291717'),
  (170, 'Salama Eid', 'salama.eid@gmail.com', 'scrypt:32768:8:1$uhVKwK2vToHRUcPy$13cb5031d863a64974e4821bd8712fb74660287f56337277b11e39e5f60f5c443ad4a5c8aa499c376250f24cccf956aec49ce07fc454ea1dca738512ed421417', 'egypt', 'north sinai', 1, '486486'),
  (171, 'Hamdan Suleiman', 'hamdan.suleiman@gmail.com', 'scrypt:32768:8:1$Q3l8ubcpMT4WX9Ru$805f7d6310634bf8509dcc1a80913f8342252941e52ab55c1f30b9250f079c453e849a7df2ecb6f67b7e7c6d3df3fc82f4ac5990aa5eae0cc91662225b186b98', 'egypt', 'alexandria', 1, '259044'),
  (172, 'Mariam Salem', 'mariam.salem.ns@yahoo.com', 'scrypt:32768:8:1$00G9JyU6iKYUhuS6$b3454d50c5f8cead05bc0044fce72334a402a927f33a84498eb152125ba932852200bb3077f9f4c4665ac14b8ed406008be2fb4c7f2a3bdfde02b2d7164a4c3b', 'egypt', 'north sinai', 1, '734109'),
  (173, 'Awad Hussein', 'awad.hussein@gmail.com', 'scrypt:32768:8:1$gZ7sd6NemOg3E29u$43852619d97bef30af9696e3e495d64cd4c43699f69c1ba37b9145d2deadbbeed56b41cc7c691a44d6cb0b8f4efc56208485da376c22de6424eacc35e678a8f9', 'egypt', 'north sinai', 1, '369069'),
  (174, 'Ahmed Rashed', 'ahmed.rashed@gmail.com', 'scrypt:32768:8:1$aDM7s667dNzz0xmv$451ea09f2c09d070f1851a59f81807931686126893a3c97375941cca84199a6c2a2e58145eed5c853ab2546a8e2e84993d569cbe05ad728cd72543176931dae4', 'egypt', 'cairo', 1, '071013'),
  (175, 'Nagla Mousa', 'nagla.mousa@outlook.com', 'scrypt:32768:8:1$4Efd93QB44lR169P$178d64165470325a4dcf72341a0f3e5ee149782585e924d99a692040dcf736525b25571edec983c3646fb4b508f0701d5ea86f368e3b8627182f65616f8bae4f', 'egypt', 'north sinai', 1, '328711'),
  (176, 'Suleiman Atwa', 'suleiman.atwa@gmail.com', 'scrypt:32768:8:1$mfppI4dmueMYGCWZ$3b0d58e4c571c98ec9691bd9e72bcace5caae13eaf6e236d3b13e91bf167912cdd1cc75993ebe5f01240fb14f513ae2f19b46e62e570256dcf7550a4a94d3296', 'egypt', 'north sinai', 1, '606024'),
  (177, 'Hanady Ayed', 'hanady.ayed@gmail.com', 'scrypt:32768:8:1$Z0RLdeZsB0GbR55A$3278d98378635b936e0967e6e339503476ba8b5e110e43901877632e8f0db33b6419da84c2efa97f2cd519e6697613e3a3393e9362fabe571e39857e06fd7923', 'egypt', 'north sinai', 1, '535547'),
  (178, 'Gouda Salmi', 'gouda.salmi@gmail.com', 'scrypt:32768:8:1$njqgkLsWDyW8kvzd$c9eaf1eca4a4a8b3cc1cc7361b8366bcf4a23ba9420ca3b6f8807fe9793651dd59c0af43187728e89ba5dbdac4528e787494c03749e1c3495fd8143981e1813b', 'egypt', 'north sinai', 1, '100784'),
  (179, 'Mohamed Elmahdy', 'mohamed.elmahdy@gmail.com', 'scrypt:32768:8:1$UJeefNzoFTLPxXWG$d199b23c6b9f5efa70ac077d343d060bc873358569b983d9c8f50e0b38c93d2135c8477be8669fe0eb48b959cd4f2fc5514f30aac4610e3bea515bd72c3d1f92', 'egypt', 'port said', 1, '617978'),
  (180, 'Nourhan Elfeky', 'nourhan.elfeky@gmail.com', 'scrypt:32768:8:1$fwPKsLbKWiih7Y50$216fc2f1fa072d4f54ef58a4ae267d83ceaa021e1a787650aff2776f529ec523ea04f7b163307ac5eaaa8f158fce722e7d493546722cb5a0681c25da5a1fa7be', 'egypt', 'port said', 1, '234029'),
  (181, 'Ahmed Samir Gouda', 'ahmed.sgouda@yahoo.com', 'scrypt:32768:8:1$tK7apofOuc2fNPt5$60dbd5c3607e811ae0d434e2c5b2551d58d2ca1b9a722e959db3c5224b03b50caaf271b1a2c3b31c407c5aaad0a083a88ce4caf08e8d89b66b3b0903ae543b94', 'egypt', 'port said', 1, '959915'),
  (182, 'Yasmine Elsokkary', 'yasmine.elsokkary@gmail.com', 'scrypt:32768:8:1$dSFWG9Y3VIekzNME$9a3bb2079833516d934e157573d3e80075c86eac64672d41dce5f4373b4c9da7af3ca6840bf97f3f3d4ef4361dfcc392b801c6cb8d60c91de0ea0065a9ab5092', 'egypt', 'port said', 1, '721245'),
  (183, 'Hossam Barakat', 'hossam.barakat@gmail.com', 'scrypt:32768:8:1$HjTc6TdJ9XqTldmV$69b83d90a4375d68e7fed2cc89db4499f368710eb60ae623400dcbbc652556eeb7206c68e7679d6dd57cb36867b8428986e783803b7f11d6f631f7ac14e1805c', 'egypt', 'port said', 1, '931898'),
  (184, 'Dalia Shokry', 'dalia.shokry@outlook.com', 'scrypt:32768:8:1$eaNem7vVwv3NxH7T$b6f49bc639fe60d35c3dbbb6b15b32fe751d485e80149cf1609c33b758305d0b81d9d47da2655ef5ed65014e26d6ccb24dc69fa0213e7f466017ec887cf45588', 'egypt', 'port said', 1, '973111'),
  (185, 'Abdallah Elsisi', 'abdallah.elsisi@gmail.com', 'scrypt:32768:8:1$SFGKscrjpI7msQRg$412a8f71cf3842074df70a53240160d22b3f3ca404511b091f9bdc23c49aa3e2a65bb1b5cd71b5b98752e7a340ee519daaee5057a1db1ba056dfb0c568e5af40', 'egypt', 'port said', 1, '195641'),
  (186, 'Eslam Hegab', 'eslam.hegab@gmail.com', 'scrypt:32768:8:1$umb7NjwwJi0y2TPn$df2ac47412e366a8a6a660a0c3ad954c652177e001b29213d16ad694b57cbcecbaa0d9651f431e435115f31181c6b20393eb4afcab91777c807b97e1fa26f945', 'egypt', 'port said', 1, '785876'),
  (187, 'Mai Elwakil', 'mai.elwakil@hotmail.com', 'scrypt:32768:8:1$ayJoCSE7rcJOCmBd$a3f866d1f3988d9bf35373d03f2ff20086352dff3729c1d0620a1d686ff35dff378a5ef29df00b205c37fb1bf4240e314e91fd1aeab92d3eb49dec154d5dd6f1', 'egypt', 'port said', 1, '649376'),
  (188, 'Mohamed Elbanna', 'mohamed.elbanna@gmail.com', 'scrypt:32768:8:1$uVmkiembyZ8nnKWi$a00aa7c67c8bd45309a20dfdcb4b7c80e44a971cf9c7ffcc77e43dc29b1c9543f2ffca465d1a982092ac217aef51e8c9078d31f6a7c0818a5aeb635730357869', 'egypt', 'qalyubia', 1, '292388'),
  (189, 'Reem Mostafa', 'reem.mostafa@gmail.com', 'scrypt:32768:8:1$Yq8xQtQYd3Br367r$308fa95d1d4b47a029f629d49fbf845ae2ee98781960ad4176d679cb930b212ba7d32de53f6067148b4370f132339174ddb90e4790b1870fc8a7f40d61035437', 'egypt', 'alexandria', 1, '452453'),
  (190, 'Ahmed Kandil', 'ahmed.kandil@yahoo.com', 'scrypt:32768:8:1$BGUIGfwHtSiHaLJn$c5814c03b72965f6a5c2a74262039ddc9a7d775b8bd332423fc76f1fd39c3e31d17aaefb1e05e0232e93f013be2a669896dd69235b581a017d54e99c456dfc7e', 'egypt', 'qalyubia', 1, '890833'),
  (191, 'Nada Abdelaziz', 'nada.abdelaziz@gmail.com', 'scrypt:32768:8:1$s8Wh69pzUylfge07$31bfedc715a0c21f153ea74aebd445ca86aec89c7137e7d2d1b3da63fdf747bd411520c7f13a0164f5a3d3f8b742b8c8961bd3ae2410712ecc6745d28f44bce1', 'egypt', 'alexandria', 1, '787893'),
  (192, 'Mahmoud Tolba', 'mahmoud.tolba@gmail.com', 'scrypt:32768:8:1$b8etYLxKotITdLEo$b4d74d316481cb8304ab1e59b6de9558af5071cf6cec616222b384930ef0f8476251908045a5a48f9186c3db42d3e7a3ddd4acc1ddcf35e79cd29b0bb2ddbd86', 'egypt', 'qalyubia', 1, '403260'),
  (193, 'Salma Elghandour', 'salma.elghandour@outlook.com', 'scrypt:32768:8:1$FbGzjHV2qdcjEsGU$68c9c368b7685158986e3b301bb8c5a8ff8d3bcbd2db9768b912213f3ecda180be31448397b33c2163658955779bbbec9abb3de32ea26288734dcea2e92ca4d0', 'egypt', 'qalyubia', 1, '380102'),
  (194, 'Hesham Zeitoun', 'hesham.zeitoun@gmail.com', 'scrypt:32768:8:1$CrqvAXrKyFsAKfsI$fec2db30dce881038646a7ba10553b30828001e2cdd614480406ad7b9261014a11cc626179a5cf4fd3738a341d3095bb5244b0e23f972fb6246d1793473757f9', 'egypt', 'qalyubia', 1, '950046'),
  (195, 'Amany Refaat', 'amany.refaat@gmail.com', 'scrypt:32768:8:1$gTPcdn0XD0zZJOVo$45d4f370ca217b3de0ffca57ce7d72fbb9767badce2221aaf68ca7090d1e930ce710f380d11d05c72cf77e4694691579623639f766e05ccb497c0f62467b6425', 'egypt', 'qalyubia', 1, '128374'),
  (196, 'Yehia Elsabbagh', 'yehia.elsabbagh@gmail.com', 'scrypt:32768:8:1$hfgsNoxGxfnfazoP$cacfc444282c1ce877c1a9d3176240f652e0ce598fd561ebd672c6858de982e7a30f639b33086f0878787d61f980347be2de796ab21263d86ee2f23b9cf608ad', 'egypt', 'qalyubia', 1, '323763'),
  (197, 'Mohamed Abdelghany', 'mohamed.abdelghany@gmail.com', 'scrypt:32768:8:1$Vv77xU8g2kyTJcWV$a73207b284a04fa9624a24692aba7da28464239eeb173e0d33e88550550a5cee8e3dbdc9df39f60b05d01c15ba023b8c41564eee3afe8c732160912c31b39618', 'egypt', 'qena', 1, '683470'),
  (198, 'Samia Nour', 'samia.nour@gmail.com', 'scrypt:32768:8:1$apGfAMomsrUeiubM$902e8d527e022f0d1e2e452da98ce143aa9125fe7f3fc34408c39694e8c012ca3aa456c07012d7cc4b925723a7c8870dde4653b43b1f8934b0279ab29296df84', 'egypt', 'qena', 1, '671169'),
  (199, 'Ahmed Hefny', 'ahmed.hefny@yahoo.com', 'scrypt:32768:8:1$w6unbrYnvM8bz0cd$89b1b697413f3f9d103b6e5457cc72b3d9b44350b2d9358d07343c5ed1c5c5ff6ade656e1162b0beb37bacb8292feda2565919c007e2f54003ba81992ee3b6e2', 'egypt', 'alexandria', 1, '267666'),
  (200, 'Marwa Elshazly', 'marwa.elshazly@gmail.com', 'scrypt:32768:8:1$PkDCDxHD6OW43efI$906f5c1504f0128855c368302c1a5ac2fede0b691b9bc3a12bd94e5bcfe6897c8c365cae782794c4f6a7b73ffebb888b4e99a9ca671de8e562ee9aa94505d8f6', 'egypt', 'qena', 1, '048473'),
  (201, 'Abdelrahman Shaban', 'abdelrahman.shaban@gmail.com', 'scrypt:32768:8:1$NWVYz1Uqn9vnEJlB$c77c01361c53df3f855ed8b7c4a7e9aa1fac27186d188a9ce52663238b1bcbe302cd7f7a33e6ce8755670ca7f848e7f93bf7ccbba7d3854e6bd9af667ce8af70', 'egypt', 'qena', 1, '962173'),
  (202, 'Dalal Hosny', 'dalal.hosny@outlook.com', 'scrypt:32768:8:1$jD8bAWxt5rbfKYaM$01740f4a1bda704a34bd7fd1b8bd17c87ac86776817c9ff72c0909fdc60bb34198c29bb16b848a388d597d7ea8728bc39fda34e97952fbf638ee8eaa4e4c1fba', 'egypt', 'qena', 1, '731642'),
  (203, 'Ali Mahrous', 'ali.mahrous@gmail.com', 'scrypt:32768:8:1$LF2mFUAVttVDNZLU$60c439b1f02e8f8a5775b49107cc6209e6924430e0450ecac1c7252cdc50f620ec767bdced271261e21796f84b7694f62bb1af88a8a27c9bd0b3497ec13484b0', 'egypt', 'qena', 1, '052599'),
  (204, 'Eman Gaballah', 'eman.gaballah@gmail.com', 'scrypt:32768:8:1$HXih3E0DLECa6WKD$16f99a2109dbc18ab8b5f0aaca88ee2c51de0a34a501161c62923970f59c2917ec8e9412a2e6d37aa7648a05c6c71e533446655a445306da1f504e6b7a00dab8', 'egypt', 'qena', 1, '449453'),
  (205, 'Magdy Eltayeb', 'magdy.eltayeb@gmail.com', 'scrypt:32768:8:1$WQ8ccrJqNtfq5gdg$309fc3df775686b64613a03473d62392e69a4cb7054d5b7640f5203aaa90a03ae0c6b7fcbcf7b283e4cb8854d7b36f6367d5ace7b4e8ae86a873e1e365b8402a', 'egypt', 'cairo', 1, '323634'),
  (206, 'Mohamed Elgohary', 'mohamed.elgohary@gmail.com', 'scrypt:32768:8:1$oW3Hkq3d3gFaMVg3$8c901d78f65f04aa4448ef9e59c2f625b7174d659a8d62267f2f66e723d0979af2de542d23a52bdc99a3de179483829d8320b1202f8933e4f238c10f5439f000', 'egypt', 'red sea', 1, '842520'),
  (207, 'Dina Shawqy', 'dina.shawqy@gmail.com', 'scrypt:32768:8:1$jRdgJeWCe4rqG0G8$92c34849eb343957322683c6bb3bbb7dd02c0ab8353e400865bbd7acb01891a21f7d58b76120cf28db8df2470a7f45701897bc8a5c59c568ff3f19b6a501d6f7', 'egypt', 'red sea', 1, '822301'),
  (208, 'Ahmed Hurghada', 'ahmed.fayez@yahoo.com', 'scrypt:32768:8:1$wNDDxVEhSz2JrtSw$ab3bf488cd1e72aabafbc2c7c8823a6d2027aacb8c70f8a25b4ddff0fd0e7db276946b96fd179cf5b3bab1b005ce6552b97b98ca6146e80eb6a1f116157429a1', 'egypt', 'red sea', 1, '805786'),
  (209, 'Rania Sorour', 'rania.sorour@gmail.com', 'scrypt:32768:8:1$DJ7VBtsuG9pVrRRX$0b8bfd742b918efa8fc446467cac771804694cb18f36b38209107012c48fc2f1826bd47bc55d5b612b37f2699342fb992e5ddb569648d5d8cf1ed74ab49bda21', 'egypt', 'cairo', 1, '483013'),
  (210, 'Karim Elnahhas', 'karim.elnahhas@gmail.com', 'scrypt:32768:8:1$dbiP1lL48EHe5QYO$6a4d5d5467e3a71d4837cd0b6697490799fa5d89ce6912d2606210b183490fef01e168de0f6803c8707344dc0e15241bb9f479c1d41ecb688663630587cfc9d9', 'egypt', 'red sea', 1, '774476'),
  (211, 'Mona Abdelghaffar', 'mona.abdelghaffar@outlook.com', 'scrypt:32768:8:1$aHrxXdvnycaehFKK$d3b0e587e58e225fcfb42d47892d390780fa8ee9f2657b622f336e784dcca7678cffe572ed38307d8c68d50dcf75558ea1c63399ea259f3f3970d9ad2a65cd5a', 'egypt', 'red sea', 1, '265076'),
  (212, 'Tarek Elmorsy', 'tarek.elmorsy@gmail.com', 'scrypt:32768:8:1$4Jv10bfWkMF0HN2v$a4821a366b4d40b0c76a88646574ab289ea290336d04c0f6f7fc55aa1ec6cb39f69c4d39793b69f285cb6dab1e2096740a39ebbfa756a6e9b9d95bf13cfbc008', 'egypt', 'alexandria', 1, '552622'),
  (213, 'Sherine Wahba', 'sherine.wahba@gmail.com', 'scrypt:32768:8:1$jwwRNvFg5YXeRKsw$a461c197a5e40030ac2bbce3552a5d7002ecc1ae72173f3a818a65cbbb56e86638304acf3c4cd875e50c033754f142d23efa0b474e6e8500efe6ab066e3a6d23', 'egypt', 'red sea', 1, '762859'),
  (214, 'Moustafa Dawoud', 'moustafa.dawoud@gmail.com', 'scrypt:32768:8:1$ZK4WONsSTTowtTq3$bfe1546d2be2ea9ee957066360428198d9f31c48e95459ee08ab3dec3c431e4a0440495fd5ee9a433a74cdeea464a0a317bde33c3a573ea17472404e28e3abe9', 'egypt', 'red sea', 1, '335172'),
  (215, 'Mahmoud Elhelw', 'mahmoud.elhelw@gmail.com', 'scrypt:32768:8:1$alcQqkUCFAwXvyC6$260aa161d03c19a9df9f1ac240369069e7a614be3723e47510230589634f38494b79c267227635c85d728eccdd2ac70828d1a0c0a4805ad28333e8057396ce82', 'egypt', 'sharqia', 1, '047565'),
  (216, 'Esraa Gomaa', 'esraa.gomaa@gmail.com', 'scrypt:32768:8:1$pKCfcyEPDMfEAh2g$ef2b6425204ac078a68a4bdc7aa8f0ab5d513a358eaadb52d729f5753855b3e7ae3829dafa67396368d33130135f21ff1abe42fafd292dc825b824f56c7e5620', 'egypt', 'sharqia', 1, '123445'),
  (217, 'Mohamed Zeyada', 'mohamed.zeyada@yahoo.com', 'scrypt:32768:8:1$jX561JudoUpxdzRJ$82fb0ca06c28a617b6d2ea4a80ea07b020e12d61539e5fd89d5cb387162a357f147b788e40935804e316eed2c82dbe6cd46cafa39885089a60bcabad4ce3dc1d', 'egypt', 'sharqia', 1, '599260'),
  (218, 'Hanaa Abdelfattah', 'hanaa.abdelfattah@gmail.com', 'scrypt:32768:8:1$dGQa1CdIERtW2die$9db7e814a30b2f68c59d9474e540a4e13d2c5a92ef83055e20411f67f117f44826f63826d52311ae6addc726bf887607df12237e477d11c5f550e7c1aa701bcc', 'egypt', 'sharqia', 1, '058950'),
  (219, 'Ahmed Elbasyouny', 'ahmed.elbasyouny@gmail.com', 'scrypt:32768:8:1$vnfqeSvuUe1sJQzG$791d0f94a2e4eee0f45738ce77120585d34f121c5e1e3dabae841d7ee09167410d5ab9b2f7daace0f83f03baa8ac7679e9be8bc23f4e5f55bd13b7d87beb0467', 'egypt', 'sharqia', 1, '087895'),
  (220, 'Rewan Fouad', 'rewan.fouad@outlook.com', 'scrypt:32768:8:1$pKyELEx3Nj3gZOPJ$ca270f9a149a2114aa30de2cb1479091927ac273eb2646eab7e39fab81f2845626793f23fd2269fa8b1ace43a77a3dca51a3a4a4bc33cad51212daf45e574e89', 'egypt', 'sharqia', 1, '769257'),
  (221, 'Sayed Ellaithy', 'sayed.ellaithy@gmail.com', 'scrypt:32768:8:1$XYrLhnnXHUWUhusM$944970f208a0a5a33bd1d9ad8c5b0ef9d47553ea5ef9b7de5943faafebe5ec11c2271497ad85dc20ba36c6fed5c1d22228a8cb33e7424fa154d208fb1f2b040c', 'egypt', 'sharqia', 1, '176570'),
  (222, 'Aya Hashem', 'aya.hashem@gmail.com', 'scrypt:32768:8:1$M1Ts5CKSypaqmEko$a833b6bf79fe3ffb4933ba8ac6b613acb4ce09c4cfcc2d5a2a4c64d01b923b54f38994617e13fa351ab56d24dd980d0b6e926c50a2ba4a5dc2b57d3707a81569', 'egypt', 'sharqia', 1, '288159'),
  (223, 'Ibrahim Elkomy', 'ibrahim.elkomy@gmail.com', 'scrypt:32768:8:1$obILNlun2mVTqclJ$e4c4dd9e55820975861328faa6817016db7984ee9a0b19cef738417ea24ce3f3f881dd4b19cf30488a2b5c4da2cf4a176286892e460c5e1dcaa95cc43bc63360', 'egypt', 'sharqia', 1, '202274'),
  (224, 'Mohamed Abdelnasser', 'mohamed.abdelnasser@gmail.com', 'scrypt:32768:8:1$0DD2SN7xm6UOkiaL$297dc7716f04c324375b8d5b2479d62bacc9cf35053bec5513c23c0eb1a9ab0c4b14ffc8748787773fc18881581d4194325588b26d3015a5d7f25b7bf0aec7df', 'egypt', 'sohag', 1, '622552'),
  (225, 'Asmaa Hassanein', 'asmaa.hassanein@gmail.com', 'scrypt:32768:8:1$LtyosmwXw4gOwkKc$b22affb31fbfe9306f6f711117deffb40faf072ec139f190309f471b5445a524a21ae8634870800a9b291b52b8c2111bf06467c95ec5551611eaba18f59bd265', 'egypt', 'sohag', 1, '288989'),
  (226, 'Ahmed Shehab', 'ahmed.shehab@yahoo.com', 'scrypt:32768:8:1$0LMbW3XhAEtfb25K$c665840b67609fcac8543a00b1791c25a298f35b46396b45df6639772ab84a7cbaf21cadc82b49f25c6e90009d411a5351f568fd5b6356cd66209db012fd07df', 'egypt', 'sohag', 1, '428881'),
  (227, 'Amal Abdelsadek', 'amal.abdelsadek@gmail.com', 'scrypt:32768:8:1$yW0puUOJuk47wpah$7bf4057e67bf14f2106074527a314eede9f46e41d2910ba7c3622234aee826a834a5070e6c13746883ece25baac1341d61574ef22b78e685ddd5ed5d02187b5b', 'egypt', 'cairo', 1, '768512'),
  (228, 'Mahmoud Gaafar', 'mahmoud.gaafar@gmail.com', 'scrypt:32768:8:1$sI4bmwp6nausfoAs$9f39e7f332939fe74fc39a516d31820e8e4ae5b629c3c08abd1f462ab66fd0addd1fd5e53c4347849ce188b16623b8d23d2d4e8ef88cd5a330d3665d10461044', 'egypt', 'sohag', 1, '378555'),
  (229, 'Nourhan Sayed', 'nourhan.sayed.sh@outlook.com', 'scrypt:32768:8:1$ZSGQ2eshYA2j0PeA$adc23f77eeca8a9181459104fae91119ae5be8b97543ea0eac24217f4fa6dc7548fae1b6a2f9412d28d7d22755a6c81a41ac65d6aa3b785798d60c6fcb46f331', 'egypt', 'cairo', 1, '526618'),
  (230, 'Abdelaziz Hammad', 'abdelaziz.hammad@gmail.com', 'scrypt:32768:8:1$bgKXkcyQXp8DFjRq$cc921693bf817f939ce19c65d574be0af8c89ea7ff222ef35b7032b52614333c0671f3c60619369133f2dc3bdd364c429059fa692c3083345e879299c091db44', 'egypt', 'sohag', 1, '707318'),
  (231, 'Hagar Mohamed', 'hagar.mohamed@gmail.com', 'scrypt:32768:8:1$YmvFaU4k7ZpM1oop$c8d5dc35582b0d5a6fc4215d58a13f3769306fa1407bf67857e6c03bb8df1892bb9eee47cef085a7cd8dabd5dd1f90479c1d57e3ef2483f1741bdbfe9285824e', 'egypt', 'sohag', 1, '748965'),
  (232, 'Yasser Sharaf', 'yasser.sharaf@gmail.com', 'scrypt:32768:8:1$OzFWCnhHHI3pgsBJ$612f7a4bf9444b9d7f6f19324746d30aebadb955ac6a5fb99f933afa12dabc82f91bcdebed5d178089eaa4dd1bd93b5d597a6e5f75a5b30c5fa205810d97eafb', 'egypt', 'alexandria', 1, '517432'),
  (233, 'Mohamed Eltorky', 'mohamed.eltorky@gmail.com', 'scrypt:32768:8:1$TPXn28OP4CwMNOJ3$172cb7589cdce5026fa5381f99bde595e00dc30d23f4ba95f0e217e822442e70f1d1f81a0d37a3f2aef532012fceefeb5c78486259396787507f951bcf5a0db0', 'egypt', 'south sinai', 1, '793315'),
  (234, 'Nesreen Gouda', 'nesreen.gouda@gmail.com', 'scrypt:32768:8:1$PRk9LA5iJgI5qygU$6d6f8516951750dcf9d1916c0929883dc7544b744520dcf70afc3be1ea8426117ae116222d9b6d88554ce56ad956e8e386656b960003b959e8cd4abebbc31301', 'egypt', 'south sinai', 1, '730570'),
  (235, 'Ahmed Hamdan', 'ahmed.hamdan@yahoo.com', 'scrypt:32768:8:1$rEyoYvSkVwQHXAi9$1029e0f23e6bfb3617ab047ca8d8a2c150c39c0e3c3bc38a94b5e8aec70b1938675f1893430ce624aba6c56b16f9cd0eebf1d292515c4263ec9500dcfde624aa', 'egypt', 'south sinai', 1, '176167'),
  (236, 'Soha Mekky', 'soha.mekky@gmail.com', 'scrypt:32768:8:1$B4k0G1YkhV2fsWuq$e50ab7646a65503d882875d91f8c6e02ddaabd60b621e870887dbf35447aee9d80588b47db3723d54ae881051270461e96c18f99fd92c9c1c0a523db64cc86e1', 'egypt', 'cairo', 1, '750003'),
  (237, 'Mostafa Elbahrawy', 'mostafa.elbahrawy@gmail.com', 'scrypt:32768:8:1$xoHAqasVwulCp2rJ$8cd23b522e9a434d0cb8b09dee231541034162b583a337aa6f56e6ac3eb464412d907bca858621471869e1c585ba42a5675b8a080ac749ba247c6e271c4f80b5', 'egypt', 'south sinai', 1, '313909'),
  (238, 'Lamia Hosam', 'lamia.hosam@outlook.com', 'scrypt:32768:8:1$kfGl2pdsQgabVm1Y$d9cff3add0f2a23cb32d3cf976dd61693b4b1aa08fcbfa2707ad5eabed74f27eb56958c3b1729fba90d259b6b99932412846f3f6bf8e165beac5c56b31d7bcab', 'egypt', 'cairo', 1, '360194'),
  (239, 'Farag Abdelrady', 'farag.abdelrady@gmail.com', 'scrypt:32768:8:1$VPDQaRKN1D4bu51Y$23b3ce1abc1efd184429564933d3fb73d94c91870fe1762e401ef733a943bfbd9fc57d4a0d8484a93854a1c52577823259613446dcda40b8708662d0e222063b', 'egypt', 'south sinai', 1, '877782'),
  (240, 'Dina Sabry', 'dina.sabry@gmail.com', 'scrypt:32768:8:1$GjyirF4OmVgddk0m$87e31c156f93e5bfe0674c6f4d19d3fe97ab7ebd0adde99c668b800821cceade6bd14ca5f4d2a96e5ebeb4454e638d08557f31a59ec74c9b8e5ec43fbbf2b90a', 'egypt', 'south sinai', 1, '137784'),
  (241, 'Omar Nagy', 'omar.nagy@gmail.com', 'scrypt:32768:8:1$RZDL8CuJIJjWBmeT$f3cd814e59fdfa309a60e288ef4d925792373755145b82efea4b6a4fd8352f5f3dcdaacd3bad094d5b0166ba7ff9764cf6fa04cdfd55c95a2ea1d069f5894b5e', 'egypt', 'south sinai', 1, '948178'),
  (242, 'Mohamed Elsayyad', 'mohamed.elsayyad@gmail.com', 'scrypt:32768:8:1$idgPrLzradMpWRBM$d355aadc517211d1c5c149e9a86302bbbf9345f6b54f81da91be089046fd373c78419b242b41478c63fbfbce2218eefaa3d3aa6b7fa1a3679befdd8dbb71b128', 'egypt', 'suez', 1, '753582'),
  (243, 'Heidi Gamal', 'heidi.gamal@gmail.com', 'scrypt:32768:8:1$MNLYH3Bzi2qS9en3$49b314c18fe30ebc0e966fceacb2977e8ceb8b96501b9f65482212600d8abf307111640ce705e6a61460bacef660bb2cef555d5604bb425095b36f09f7d52559', 'egypt', 'suez', 1, '809227'),
  (244, 'Ahmed Elmallah', 'ahmed.elmallah@yahoo.com', 'scrypt:32768:8:1$EuG1aKwMgk5Z088d$b47121a1cdd5cf38de600bc77fb6761307ad5b2652e5d95b52427d7c4ffd72d36896402206f04de2dc5fee2e3d0f38c6a6eafe04f63f330a663dab0cb4f3c6ee', 'egypt', 'suez', 1, '069376'),
  (245, 'Gihan Raslan', 'gihan.raslan@gmail.com', 'scrypt:32768:8:1$RE6tfcyGzfNCcxqW$6ecc786206d3675a746fa950f822bb84e6de2c0557d8a9f215190800bf2b74dc10e42ad1c340d9873fff0619d918679261aeba203a2acc98039edcf763bc56b8', 'egypt', 'cairo', 1, '055846'),
  (246, 'Abdallah Elshorbagy', 'abdallah.elshorbagy@gmail.com', 'scrypt:32768:8:1$SWyTqwICl4OvvoXQ$9ebbff7173b3bceaa61748f38b106b1fe4abf119eb10890b2b9a8eaafa005594bb60e3d5672897a9ed1ca516b202af678105afc8dac557fbcbf67bd11d810ebe', 'egypt', 'suez', 1, '500111'),
  (247, 'Mayar Khaled', 'mayar.khaled@outlook.com', 'scrypt:32768:8:1$OaSRcKuu4cFMxPXw$7cecab4d1b136797d620a2b080124505cf408fc6a9c2641fc71b2590aad6b797ed3ce9d2f12375648a9c7c569bea3a93056d9c87251cc43cb31d92d3aaeae2d7', 'egypt', 'suez', 1, '044906'),
  (248, 'Hamdy Elnaggar', 'hamdy.elnaggar@gmail.com', 'scrypt:32768:8:1$AYC9th1PtpwjCKN4$d49a6246077748e943c2db320975e1a3e4a0391dbe3897fe16d96cdcd5db466538d117c54e452ba497dc1b9f846e774d1bf4065d54354b3c46083a7f1a34733c', 'egypt', 'suez', 1, '762207'),
  (249, 'Rowida Anis', 'rowida.anis@gmail.com', 'scrypt:32768:8:1$kSIDiPhaafPKcXdD$9642efc97dabb4750c6f5ddf491e890c958036ab9a34614d092ea071d5e3dfea36ac5af3bed18bd493650076f377e97c9756856197800cb7898a3ebe2ee165fb', 'egypt', 'suez', 1, '529127'),
  (250, 'Wael Metwaly', 'wael.metwaly@gmail.com', 'scrypt:32768:8:1$SU0NGx1BEysVvqpo$7cf9a0d0c791af45c0b5eab90cba1fcfa5d361ef3832e84940ace0d0601ed727df05550d868b172b314de9cbd3ebb90a141b6271d96fea01d5ce3d63401bc227', 'egypt', 'suez', 1, '767147'),

  (904, 'Mariam Boutros', 'mariam.boutros78@gmail.com', 'scrypt:32768:8:1$b5489af64e524682$3443a6d1333556ca2532c9418bede4ab0dc589e179543d47fe663420c88e149f5c7f43006f322002430ba1e41b58773f2af39861df88a14c0d3e3cc5ad2b4a36', 'egypt', 'cairo', 1, '786767'),
  (905, 'Rana Salem', 'rana.salem95@gmail.com', 'scrypt:32768:8:1$bfe322f5a45c329f$a099623a10615670fd9fd7e6afc2742fcbac8b10c8d7fe44a1de4eb07b03a4ae8342349ffb95ddb9e57cb0a2d2c398fb13dc51d7afe187c088871bb36b187465', 'egypt', 'cairo', 1, '561529'),
  (906, 'Ibrahim Abdelaziz', 'ibrahim.abdelaziz22@gmail.com', 'scrypt:32768:8:1$cb458c581c2228ae$f88aab56aa3879888d5c6f4611d23fc58ccf1262bd8eb91e3b2e853ca136e4c71db70bdcc80a1495a7df7e164c0a570aa1cf195afbfc7c338e45e9b28af47e25', 'egypt', 'cairo', 1, '875180'),
  (907, 'Sara Rizk', 'sara.rizk39@hotmail.com', 'scrypt:32768:8:1$5f47082b58d0f7f7$0a1d115ec2e7f460da1b2c277591d63e9e6612ac3ed0b750be12c253c7ebed162dd01e59578885162bc503e42cf1eec159feaee905efe72e5134069521496d30', 'egypt', 'cairo', 1, '270427'),
  (908, 'Farida Farag', 'farida.farag348@gmail.com', 'scrypt:32768:8:1$5128d8c29f9c7620$acf405645529fe1669f7af75fbeabe34d50c8c10ffbedb18febbf8c379df982bcd7e5ec6bc9711c03942e9a3c9cbd8f41263b1bfe70e6f6c6a24814f2bf27912', 'egypt', 'cairo', 1, '331391'),
  (909, 'Magdy Wahba', 'magdy.wahba379@gmail.com', 'scrypt:32768:8:1$f60086db1a4b71e6$b338c345cda56a638c36c593c0f78c6311bf5a0e2d5893d472aba1e1dc9cabbd68dbeba23fdc170d8edf5da61796ab225bda9b2209939a807a74d818c5f67d72', 'egypt', 'cairo', 1, '254347'),
  (910, 'Rehab Taha', 'rehab.taha410@outlook.com', 'scrypt:32768:8:1$020afd34cfd209f5$362bd55f24f27311a3d512be022bfdfc303cfc105afb3b6cef42e95360812916bc50e2254a21e6fe369da8d18dc15dcd1511724a2240e5d3d300804913328ea0', 'egypt', 'cairo', 1, '374091'),
  (911, 'Marwan Hefny', 'marwan.hefny2003@gmail.com', 'scrypt:32768:8:1$fa47343539b0f3d4$c672a7a55972439a7297c430575aed38ee4d5e24dc622e52eabfda41e7b24a3a02335c823ed77f3cde536028d122cf9aa5f7dce7e821fbdaf587ad8553f5580a', 'egypt', 'cairo', 1, '543204'),
  (912, 'Ramy Naguib', 'ramy.naguib1988@gmail.com', 'scrypt:32768:8:1$b91826176da9aee1$047a85db271cc3ed4b336e494b6020f0fb41ebcfa9023dff649e3cbd208398a35b8be340ba8f5d70517e54a180a391bfa9bf06cece32972c9a3cf7b2a5758be5', 'egypt', 'cairo', 1, '481418'),
  (913, 'Walaa Hosny', 'walaa.hosny@yahoo.com', 'scrypt:32768:8:1$4d784a6e798c22b0$95fbea6a907071774d7d9f3aebb2decb56294bec833f16c61e914ae22dfecdf2481619a462cb0436ba411f224bf6c755f2ee40b7e9f42836c0dd46855b7104da', 'egypt', 'cairo', 1, '943627'),
  (914, 'Nabil Hammad', 'nabil.hammad68@gmail.com', 'scrypt:32768:8:1$f9fc5530ae23ee3f$21d60fbc0e10f33cf983d3db346d6fcb8ae6963f1893db8af31195ed427453d6dcd16104b77747206828819f9bad3c3699ce717d703a56881fa7b648b9f68c8e', 'egypt', 'cairo', 1, '003985'),
  (915, 'Ehab Eltantawy', 'ehab.eltantawy85@gmail.com', 'scrypt:32768:8:1$79af8ae7fe5b1289$d521afa4a58168c83a3d85d8191759b1e8919eac4309937f3817883ec1c6db87e2633e1d13e97acffc78521e4800e1ae47b13f1ed34ff260f90ba733b8fc2308', 'egypt', 'cairo', 1, '858960'),
  (916, 'Mayar Mahmoud', 'mayar.mahmoud12@gmail.com', 'scrypt:32768:8:1$563bfa1a19269bc3$e89e29717685e808aaa27c6043c0458327096c5ec6d624f49bf6690e72329c637ca25fb6972a4159cd1c6cdf286f0058a7be52d00aa4f0f519baf2a31da121e7', 'egypt', 'cairo', 1, '489820'),
  (917, 'Galal Soliman', 'galal.soliman29@hotmail.com', 'scrypt:32768:8:1$a42bc9278332fecf$1f4169db78bc6e02d53d46358d9ba335cfa8dd8c29b6a44839a5b57a3bf34595088b2db0966821064b3b2e9fb70c030dd4a21e6571f87766104a17921bb14b68', 'egypt', 'cairo', 1, '383420'),
  (918, 'Mostafa Nasser', 'mostafa.nasser658@gmail.com', 'scrypt:32768:8:1$65ef3afe0037f548$8f2c046cea00a9315e5823f66849a9741cce55faa044ed633de1e108f5634d4db598b3b49eb8c3d84267c47764507c8038b459668a9e0a827cd249ed0922b90a', 'egypt', 'cairo', 1, '355106'),
  (919, 'Nourhan Eid', 'nourhan.eid689@gmail.com', 'scrypt:32768:8:1$d9a652e44c345eda$2f118efb3d8c3b5f3ed0b26e01029110415d6c8cb938d7e8994551c6d3c88e006c58ea986c6331055e1d0c891b51b0692cd5d9c8872d7f1bc8e262a8ed130c7d', 'egypt', 'cairo', 1, '850411'),
  (920, 'Samuel Wassef', 'samuel.wassef720@outlook.com', 'scrypt:32768:8:1$855696f77b5241ef$a634fbbfdf2118b3a26fddcc37d0c451deec09fab9b8412f64d3b6b6ced52bca3c7b3536dc15faaf14ef0b2060adaa08af872e60c4997144976655b0b706d85b', 'egypt', 'cairo', 1, '564713'),
  (921, 'Ramy Radwan', 'ramy.radwan1985@gmail.com', 'scrypt:32768:8:1$8267861cfb59e63e$1de7aabda5a325c4518cae1e335510c7dbcc48a1374619e0a4f918081bf4019b720497ab030f472778ed8cdeb89c22e6db04c249f0d2201c754e4544fabb76e0', 'egypt', 'cairo', 1, '442800'),
  (922, 'Eman Zayed', 'eman.zayed1992@gmail.com', 'scrypt:32768:8:1$3c1b338b214afcce$e81573f0627d2de3cb6155fd7bb12eee7bb3f9a34802e468c8250ff72ea8722411f39c5610813827789fafb1094daca899a05e3484eea1c3e030d983746b7e6d', 'egypt', 'cairo', 1, '749143'),
  (923, 'Hazem Shawky', 'hazem.shawky@yahoo.com', 'scrypt:32768:8:1$e6071993c36a76a3$d695418b5e3edb09a74a1bc219fb75d6bd231b9b33fa71bf7e6c9cdc360fd90fe03b3aefb791690595fea1ad588760ce934269467fc339e3344adeba78049b3a', 'egypt', 'cairo', 1, '220897'),
  (924, 'Marwa Fahmy', 'marwa.fahmy58@gmail.com', 'scrypt:32768:8:1$8a1d784a25bb5955$034f652cbd775d77145abaae5186da2b8ccc4833a634f619368660ca925edf523ab0b1a600ea6ca9e763ab1683d245cf1e58306be263ca1d9edf81a2c1f4e7a6', 'egypt', 'cairo', 1, '578967'),
  (925, 'Safaa Zidan', 'safaa.zidan75@gmail.com', 'scrypt:32768:8:1$61eda1de706e3938$26b42172421391697b0df65b0df72bae839c2f11577475a1d8706120059d40f8d83649fc249ca53246b9df6cf32f41942c99d0776d143e6336bf964e24ba1954', 'egypt', 'cairo', 1, '707485'),
  (926, 'Salah Elshafei', 'salah.elshafei92@gmail.com', 'scrypt:32768:8:1$c82683d2220e3d37$61185bb0feab94b0c1626e7dc6d8db47f8c912274682f7423d9a61b9ae5f6180c13dcdd343fc3674a3b29537971808fb72f55ba06230255dc60acf02332a63a8', 'egypt', 'cairo', 1, '630205'),
  (927, 'Sherine Abdelhady', 'sherine.abdelhady19@hotmail.com', 'scrypt:32768:8:1$7afa96dde3a2b83f$183ea827d0a5f70705df3efeee0f3ed471f5c1403ef7f1fd07b68fa1f5910288cba266e29fba392bcb8b9bffa3de65deb2bb22ecaae0375cf07246dfceb8b58e', 'egypt', 'cairo', 1, '281199'),
  (928, 'Aliaa Ibrahim', 'aliaa.ibrahim968@gmail.com', 'scrypt:32768:8:1$4040cbc871994ade$1baf6cac1a492760d56dc49b7f466cca9c68ddcacc1cf4172c48a8610194ecb76bc4d272c7c90d45f8063fb3308beb05cdd730b5d53319ec427aefc15f96f501', 'egypt', 'cairo', 1, '095332'),
  (929, 'Labib Darwish', 'labib.darwish999@gmail.com', 'scrypt:32768:8:1$8545e62b1ace07b6$107c1e9df34db41d24e90359a8b11d7d25c9fc3d885182a76da6d244e86be31ba8c3ad9d94dc8d66f67498cc24aa5ee86cd3af48116c7a383f4a0d1e378d89c2', 'egypt', 'cairo', 1, '436246'),
  (930, 'Heba Badawy', 'heba.badawy130@outlook.com', 'scrypt:32768:8:1$645457c712e3fd7b$0d5f45b50a66938d4089eeb86637a0fcd6669c2c8f1ff78905c7077bf831f6db8cbba0de9090e4b772a61e8f4962853ae1143d159c4402b7c4138d64e9595b84', 'egypt', 'cairo', 1, '355380'),
  (931, 'Mohamed Youssef', 'mohamed.youssef1989@gmail.com', 'scrypt:32768:8:1$0134bea4b49b9ed0$f5ad7008bcc505026211e92d185afdc52aafe38937f7fa99a8c96227c1e01df2c7cd4fa4f0da48ae760c0ea8eb5e0c14f901dbd3b17d1fd6d0b897d0da53316b', 'egypt', 'cairo', 1, '145836'),
  (932, 'Karim Fawzy', 'karim.fawzy1996@gmail.com', 'scrypt:32768:8:1$c9423071fcfbf9f3$536566a8528172a1c7627dd217c6bf66874a3dc1af41e6b8c8298985ed20f2f9e8c066593be9866853405b0deece5803d177dfd4fe1d6c8692969ebc04aa32df', 'egypt', 'cairo', 1, '138340'),
  (933, 'Lina Kandil', 'lina.kandil@yahoo.com', 'scrypt:32768:8:1$e9a7fa8872849166$2489e30efaa6e33e7ca63904d095f1e16acf8ef73ccdfdd2cb3143a41df83654217932b1f2495e459df9509fd4f17f6fc906f875b9ec2e423a817ad070e28785', 'egypt', 'cairo', 1, '692480'),
  (934, 'Wael Awad', 'wael.awad48@gmail.com', 'scrypt:32768:8:1$5e4d64eea237bdfd$8c3b970f4701438973add703b5f09ca525c5aa1386426bde889f03d52173e7ee73d1dedea1398d7cd476386842cc1d42293dc06ae58b16550af317280f0623b9', 'egypt', 'cairo', 1, '541908'),
  (935, 'Mark Morcos', 'mark.morcos65@gmail.com', 'scrypt:32768:8:1$556e3573de107128$901c3e00bfa7157467e789393e51d5ead93d6cda4466740851564bd565b91b179ba88f2796ce616e7112a58be9a431702104424d4976e4c988b02049376a4cd0', 'egypt', 'cairo', 1, '340837'),
  (936, 'Ola Elshazly', 'ola.elshazly82@gmail.com', 'scrypt:32768:8:1$20ae8fed1d0a334b$c04eed57d741a47210791aba583d8d06215e9fa7c7aca44801eda94c9d122cfcf916cd177a1db597bdafbaf82a2ca4d22b46ee652be3f96e007e6f73a3fb3def', 'egypt', 'cairo', 1, '623748'),
  (937, 'Abdelrahman Gouda', 'abdelrahman.gouda99@hotmail.com', 'scrypt:32768:8:1$da033139f0dadf9d$694629e21ad71d08abed4fd38dcd3950b1549a3d2fad398240eecfbdbaf7a05b7b534e0bcc301aa37c6392e5aebd256c06d7365affef5f22b42c6279538c28c5', 'egypt', 'cairo', 1, '711757'),
  (938, 'Seif Ragheb', 'seif.ragheb378@gmail.com', 'scrypt:32768:8:1$e9f5fb8739340783$9cdfa664a8bc90d41707c79a0f47b5db099ae265053f934feaa7bc62d7c2740aa3cb849cd5b9ff3b24961345b9d91e7a1808ed78e3310a3deb7df89cdf960fe5', 'egypt', 'cairo', 1, '846403'),
  (939, 'Ghada Abdelfattah', 'ghada.abdelfattah409@gmail.com', 'scrypt:32768:8:1$38fb51829b645f7d$ecf22cf9997feee75bccef30085a99ddd4d59c3657a4bf321bea96cf20a74101b0887ec2bd398eded441c3a38c2cf52984b8b8512ee1a1e988a93d0b2c707a77', 'egypt', 'cairo', 1, '542299'),
  (940, 'Hamada Mansour', 'hamada.mansour440@outlook.com', 'scrypt:32768:8:1$d490d2aff28ce99c$ec0666065eefa00db3c9169cd31aa8bd2bcdeecc5639d44d2b5256106f86d24142cc70c940744d360e1621988e044f930d4d1b36e1ad02a3b24ec02aed1cf9ef', 'egypt', 'cairo', 1, '502391'),
  (941, 'Emad El-Gendy', 'emad.elgendy1993@gmail.com', 'scrypt:32768:8:1$acf2f453d2e1a3e9$1e3a9ce44b1337f1db968a9972b351465a6cd9340074964e6e1bdd935cab7ef7834691c33c8849d930a94e351df1495e3b5b9eb01097c796c348df0bddcb838a', 'egypt', 'cairo', 1, '784266'),
  (942, 'Esraa Sabry', 'esraa.sabry2000@gmail.com', 'scrypt:32768:8:1$4b9b7fe8c92422b3$407dcdae714143f844fa82a31e46f9d40f94f6a828f43a1a85439e26259b86de8f78656b445484d62538ce58ad0468a70a5267f0602df31eab27f5888fea59d3', 'egypt', 'cairo', 1, '046935'),
  (943, 'Hany Shenouda', 'hany.shenouda@yahoo.com', 'scrypt:32768:8:1$a3373546a316158d$f36c1e97a81cf736fefda25071056c51fad396fd8e49ba16c30935a2a3de5d6c85d0d9e0c086483d53eb76961bed17c2d97c3b7d0aeaeaf487a5f2d7ba7ad7c3', 'egypt', 'cairo', 1, '556673'),
  (944, 'Mai Mounir', 'mai.mounir38@gmail.com', 'scrypt:32768:8:1$dbfaaad121ed6764$3dcb1ac16f822d768299fc5be7444b0ca11f84042ee685b7346386ca174e363af27642a6a05243c7cbffe86f9ca37f9030cba6fbceed11e225895efeaab01989', 'egypt', 'cairo', 1, '158776'),
  (945, 'Malak Metwally', 'malak.metwally55@gmail.com', 'scrypt:32768:8:1$1324d7100f5b262e$b8a8af985ada0cbaa48ddfc0b1aa9b5abf07898f4c64ad5b3fdc735d0f75233ae745edd70ebe56609b84908134d0fbe58ce87311a1cb3aacd8e357bfa3fe14df', 'egypt', 'cairo', 1, '351673'),
  (946, 'Ali Ashour', 'ali.ashour72@gmail.com', 'scrypt:32768:8:1$b1acedda39987eab$0c7c11d41b9a2bd5f7cab7f019e92f4746af910380c84fdb488ca94f801f6843c234237b091d5a7c9a6f15118b91075e3f87a6d9e58d79788a563298db0aaa8a', 'egypt', 'cairo', 1, '538188'),
  (947, 'Shorouk Rashad', 'shorouk.rashad89@hotmail.com', 'scrypt:32768:8:1$88c2e3646013dfb5$1a437cf89dc4cad23cf13adfd1889abe887b7e91d12e18c9271913b2d0cf2142781f9212d9cbbe44213ffc3ee899b88ba3e293b3f46a778378154c571fdc62bb', 'egypt', 'cairo', 1, '636474'),
  (948, 'Dalia Elbanna', 'dalia.elbanna688@gmail.com', 'scrypt:32768:8:1$7e554fa1bf043a1c$f8ec0c6a26c05eba3976b1727e16df3f7a91d5a6798e8d76241477fac682542fc8f99c3909a13d19cf71afa6d17bc3d57c6bbf350cf3ee9efadb710f0283a6d6', 'egypt', 'cairo', 1, '317927'),
  (949, 'Sameh Selim', 'sameh.selim719@gmail.com', 'scrypt:32768:8:1$24ea86c877501824$69f446036a34e88c65df17aeea7d0eb9f67639285703458a3238419e28e226d6192f74133cd87c2258447b93affcbed19b865da2baccecc0d026ffef0f7e237b', 'egypt', 'cairo', 1, '181779'),
  (950, 'Rowan Hanafy', 'rowan.hanafy750@outlook.com', 'scrypt:32768:8:1$453caa6ef41ad034$ae0acb04e93e49e6183b753b7f19a883252ba8115958d8c8f280e3f012073adcbeaac2694d2ed86b592c3be13a96133015b434b32ec48a18f50e88225db0aac2', 'egypt', 'cairo', 1, '703125'),
  (951, 'Fady Hassan', 'fady.hassan1997@gmail.com', 'scrypt:32768:8:1$fbd5d17e73e080b0$0327b6a252cd02536985caa622247023825c4f79c5a100d91ee1c2c36761d0b7f0990bcbe89686d5d41287315df1de3592dc02a8ab9d69b715e4f087d0a7c935', 'egypt', 'cairo', 1, '568137'),
  (952, 'Gamal Gaber', 'gamal.gaber2004@gmail.com', 'scrypt:32768:8:1$59dc28f3a686e17a$440beda1365b1b0560f2741ab3aad096414836a4a77c4753155240955fac55d3d589f7b73cbeef8f983986bd3985a51de8f44933ed1233c540631b6f62950cee', 'egypt', 'cairo', 1, '475850'),
  (953, 'Mariam Zaki', 'mariam.zaki@yahoo.com', 'scrypt:32768:8:1$32890794c2df1a7b$aa73ff5cda927eeba08c5f619047e2a8f5303fd4bf0a5f1fc922c78209f8116cdc917f531658c16214661769c492d4e516184bd30533481a6724965c30737419', 'egypt', 'cairo', 1, '671752'),
  (954, 'Bassem Mekawy', 'bassem.mekawy28@gmail.com', 'scrypt:32768:8:1$edfc57eaca6f958e$0d41daa583f9e43240774797cb8ef2547b448a0027f6733c9094ad56b4b848ad1c7e84b4ce985242cd3ec05472b0c28a6125074c55ffaf088a19a17d17366da0', 'egypt', 'cairo', 1, '260900'),
  (955, 'Hesham Ghoneim', 'hesham.ghoneim45@gmail.com', 'scrypt:32768:8:1$eb278e59fe90888f$a673304e72b02ae8d8e824c952a7fbb82df019290aab406577d0cb92a93f7e100021ed8ef6d2855686dad6d929b5388a45127c48dc1409f6639a4d985d6cafd2', 'egypt', 'cairo', 1, '083297'),
  (956, 'Menna Fekry', 'menna.fekry62@gmail.com', 'scrypt:32768:8:1$04b2f2698952980a$f61c5ec263f56f65d785649667961f4decfeb5ea215d141f290f13ee59e6bae350e6d7d3e5ff34c4bbcbcae2ea2f4170d6518d5c149c9c376514aa47e11bc9cf', 'egypt', 'cairo', 1, '835092'),
  (957, 'Helmy Helal', 'helmy.helal79@hotmail.com', 'scrypt:32768:8:1$5e671ed314a46d99$2ac7921f441cda235e8a5f3b97e20b3de5d3caed15a24272e05f4531e8289de211af19a33b5f1cc2811aaf747e86af93e7940657bf8959581c503087b81c7e14', 'egypt', 'cairo', 1, '446204'),
  (958, 'Kerolos Iskander', 'kerolos.iskander998@gmail.com', 'scrypt:32768:8:1$7f34938f2cf35c65$32d59827360c4584399fb9fb969c6d56b4149616f91505831224b5255df9473c6ad74003617294191ed8bb738087b508cfbc50f53e480cae50d8282036fafab7', 'egypt', 'cairo', 1, '394868'),
  (959, 'Samar Sherif', 'samar.sherif129@gmail.com', 'scrypt:32768:8:1$9bf572c7ff7a2acd$3b93b908a5a07ab9aa61d1976261576bef85a4bdde4ecb87b283de2dc5e4a5e30b78e8c06602d166d8bdfcfe9b4013c69031f66acfe0877e354a08f3df0c29b5', 'egypt', 'cairo', 1, '353578'),
  (960, 'Tarek Younis', 'tarek.younis160@outlook.com', 'scrypt:32768:8:1$c52197ec629452f3$db4ce065f562151438ece214724b60a6400f2f01697a18fad4e47e6e4b5a14edb994b5829f0291f97ae698e9c43d6d560a5fd54365cd3b7374266fe2a83fdc65', 'egypt', 'cairo', 1, '683753'),
  (961, 'Walid Abdelmaksoud', 'walid.abdelmaksoud2001@gmail.com', 'scrypt:32768:8:1$63888870394a7c84$8e71dc76280412d41a7b021fc2094ba7a92ad02c9f9df5b6acf5110522bd2811cf05c283eadff4dd54bfee45086af388a896fba20bb09387ad73e54180de87ee', 'egypt', 'cairo', 1, '074913'),
  (962, 'Yara Elsherif', 'yara.elsherif1986@gmail.com', 'scrypt:32768:8:1$4cd52edf537f8343$6df87a1c7c7c4e524daab5621c8dbb11172348c13a4fea4ffad647ce70febbcb2389c95382f8dec12a8595e603951d0d43de007c3d2ba32d83fb8f2e05319331', 'egypt', 'cairo', 1, '369797'),
  (963, 'Tamer Abdelrahman', 'tamer.abdelrahman@yahoo.com', 'scrypt:32768:8:1$bc5987c73b24707b$e1dabc23ceb53e71b120043f0d99e7cf92f13df18011272c43f6aa9ab6a65756367dc22a6bf015b0ba3135dea5d74e34072cc240cce571519189083ca3d96989', 'egypt', 'cairo', 1, '579970'),
  (964, 'Enas Hegazy', 'enas.hegazy18@gmail.com', 'scrypt:32768:8:1$7ccf0efe68645241$5fc2506cf4a4a992b9539e51a6704975917b75d11fde2ff0c3b5feb704ec60e4e12149f9881875b0301a2ac6209abda3183aabe0de69899bdd996dbf0372e3ba', 'egypt', 'cairo', 1, '455244'),
  (965, 'Fatma Tawfik', 'fatma.tawfik35@gmail.com', 'scrypt:32768:8:1$6b745723334d2142$e0dba97adaa0f0a5a15c417eb0d94cec13741608cf3fa32e94bd38b5ecb03918f74a7e293de7ab879911bf931c9c3713d077fa502df4a3634d4a16ef335c7427', 'egypt', 'cairo', 1, '970230'),
  (966, 'Peter Rizkalla', 'peter.rizkalla52@gmail.com', 'scrypt:32768:8:1$54e055486c1a4c2c$d110e4474c224f2511bb33b6504427aacf20ce4a03b183f026ecf98ae6224dd07d2eae40de038c4b67c677b927d46b5133fb0fcacb274895a1849e742205865d', 'egypt', 'cairo', 1, '703475'),
  (967, 'Mona Ezzat', 'mona.ezzat69@hotmail.com', 'scrypt:32768:8:1$45b8a6ff5146f6d1$b9b1f01f85404553f7df54c20ed675c52f278cc91198f73aee9e9eb0e6cc8ec3b37bb7d87ec91eadd061e8efa375b9e277bfc836fee6b1cdb70af85bd8558513', 'egypt', 'giza', 1, '473253'),
  (968, 'Sara Gad', 'sara.gad408@gmail.com', 'scrypt:32768:8:1$3220b93e14491cc5$7e77556372feb29c40ed203ce7f075f8ca67417cbae8b0a71152c656d46504ca4003e0b5bd5c4d9fe843ce6f827e5b677c6a7313adfd6fd8121c40ad070af025', 'egypt', 'giza', 1, '775646'),
  (969, 'Rafik Barakat', 'rafik.barakat439@gmail.com', 'scrypt:32768:8:1$6e08e1f050ef838c$84fc6b9ffd6168b2328f3e7b6bb6e560eb1f566dc914cee6206a87cfae90f0b73fb8fbf824fdb48d44c8ec84947375bbc9cc5a12715ffb861947523745f723cc', 'egypt', 'giza', 1, '932111'),
  (970, 'Hadeer Samy', 'hadeer.samy470@outlook.com', 'scrypt:32768:8:1$a1fce4d4b16c5b4f$5c0f5b261dc4030c041375e7accda8fc899321417e01f0586c835b718407639943f739a189900e8e8f22046d331de549492309521e59e25b714520d0bd65536f', 'egypt', 'giza', 1, '513155'),
  (971, 'Ahmed Abouzeid', 'ahmed.abouzeid2005@gmail.com', 'scrypt:32768:8:1$fb706af062c06755$afed07b08842cd51038734666619cf2b13c1300dc8d2e3612ae6629befd1ecb70e1207d02a258ac87633f8dc0a28c8ba96687f813895a9c6864f8f07865dca24', 'egypt', 'giza', 1, '697415'),
  (972, 'Youssef Nagy', 'youssef.nagy1990@gmail.com', 'scrypt:32768:8:1$ee8ed67834548616$c23ce549e531cecb971e610053425ab935d56c3e7024fc0888d08246bc8becb7f9db5bf87a35b27fa5041e8c9139f4c5bf13996aae1679d03f0f5904766294aa', 'egypt', 'giza', 1, '531878'),
  (973, 'Rasha Elfeky', 'rasha.elfeky@yahoo.com', 'scrypt:32768:8:1$f1671d97133e704a$e68f946e949f2196a6f302e490312b4a3285fe822002a17e7f980f44a2131c8a46fcc842579cf0a58059b35a3dd8d2b0f86df02b225d5cf22bfd3a4d1e044321', 'egypt', 'giza', 1, '685259'),
  (974, 'Sherif Khattab', 'sherif.khattab98@gmail.com', 'scrypt:32768:8:1$f81a8fc551d0461f$2f4504cb6427f7aa0ba37168bbcce6e16f566e643e1bacb30e25d81fde9961c9a64167f9402e0e737926a27cc49e6677e6be85462a424274012a8ac0f32b2525', 'egypt', 'giza', 1, '940574'),
  (975, 'Essam Fathy', 'essam.fathy25@gmail.com', 'scrypt:32768:8:1$e8b5e73e90014ee6$fd68dfd131651e2a7c30c57b9ceaede2ab67ee8950d427fa473ff59640dbc125a7cebd068516883a8030b2f5eea96a29b672aadc348de96e6e1ec60b9c6c93dc', 'egypt', 'giza', 1, '270315'),
  (976, 'Amany Shalaby', 'amany.shalaby42@gmail.com', 'scrypt:32768:8:1$33a6de104ed1b3a9$702d278123bf60b5b4e0e97ab13edc59e308d7754498a80c3f3a198763dde64d11eb5d10ff0f5179bff00a8a1a2834bf086c36ec58c156e292036ca2e15768c3', 'egypt', 'giza', 1, '698854'),
  (977, 'Yehia Hamdy', 'yehia.hamdy59@hotmail.com', 'scrypt:32768:8:1$7f1b9a17d9144bfe$2c67f57f362b4bec126b01fbe3ad7e760e77eb5fe84e27512df97df0ae553a866eaf9e2c958da7646264aee7ce4db0ed2f3efdd25fdf61c90b0a2c29c6597c1d', 'egypt', 'giza', 1, '380099'),
  (978, 'Marwan Khalil', 'marwan.khalil718@gmail.com', 'scrypt:32768:8:1$db3e63a529d7519a$30391200716807bedad167f03a3d420e7da1f42dae3ab74987b82258b4a2a89f2e88087c86779a1f12b650acb37743b2fafde6d26dbdc76721473f1210c02a2d', 'egypt', 'giza', 1, '162741'),
  (979, 'Dina Lashin', 'dina.lashin749@gmail.com', 'scrypt:32768:8:1$553ced3f2545846f$c50f887a734dbfcc668610a0b953ff590f1d515b244efc211fd10c3d74c79b2437d09a689c50933c2c32a4d00f45924cddd90a34ff4745f4a080154b91e5a98b', 'egypt', 'giza', 1, '436374'),
  (980, 'Sayed Shehata', 'sayed.shehata780@outlook.com', 'scrypt:32768:8:1$0956fb558757c2d0$2a67f2a95e1eff799506ba3465dc931f16c60cbc079c36bf4cb60d893f2661bf8e524789275becd5324867e8a5717b125d43f1dff03e28544fae9196ce23fba2', 'egypt', 'giza', 1, '425499'),
  (981, 'Remon Nagib', 'remon.nagib1987@gmail.com', 'scrypt:32768:8:1$009f0f8146b08b10$061082e3450178fbcd2e37b8445b91ae59f9f8a4b91888ee95121f4aba978a02fb2af11fc8f5dd15b39dddc956772c2267f37ef51880e1da628b583fe9365b51', 'egypt', 'giza', 1, '210314'),
  (982, 'Habiba Anwar', 'habiba.anwar1994@gmail.com', 'scrypt:32768:8:1$1fd669a906e8fba3$52cd0ccecfffd65268c00c9ee5766bcd03575ddeadf6b7aa31b17c38de8cd988157a0b7c87903e904de88db3e88e34b4aba77d861aba837f7cb43f39f6e35099', 'egypt', 'giza', 1, '843982'),
  (983, 'Fathy Sakr', 'fathy.sakr@yahoo.com', 'scrypt:32768:8:1$c01fde7098ed9057$86d0dba2f43922dea35f8f385adeb153f8fd9fb70eefdcb93a17642c78a1b5dc24aa769c33a09120453f73f39bb3706824c76803150956293e166dc40ef72a79', 'egypt', 'giza', 1, '216798'),
  (984, 'Hagar Elmasry', 'hagar.elmasry88@gmail.com', 'scrypt:32768:8:1$8b7f5ae293e53537$d8ed0f083433c0d07cd3776d848d6eee5665b91334581662947c36681a951aa7226615146891f39fc85657c843b9312b5fb8f7528d35fefb31caeb8fb4943827', 'egypt', 'giza', 1, '971884'),
  (985, 'Marwa Zahran', 'marwa.zahran15@gmail.com', 'scrypt:32768:8:1$9ca683d669bb12f6$4286131f77b72e37402fd2bbac5f4fe77adee5f648cc133ce3e8a3d6593f06b2ed92c50a1253219604faa124cbe5b39e1eaff08e32072a00c3bbf5756087c225', 'egypt', 'giza', 1, '096327'),
  (986, 'Hussein El-Sayed', 'hussein.elsayed32@gmail.com', 'scrypt:32768:8:1$61e42724c76e755b$df65df36c074a34255001cd87b5585dc8ebb04844a507dcdd4fbe5e6537f2ba92c0d0059fbdba2184ac7b3f859e5c748c7937e8cd7910827fc1bf4958fc79d7a', 'egypt', 'giza', 1, '057567'),
  (987, 'Soha Salem', 'soha.salem49@hotmail.com', 'scrypt:32768:8:1$3f51d74ea2caeedb$429a9ad128022eb89b0db95c26626979e8d7469534c898c8bf815308a36b81dbfdb0c59492e29cad3d1887c7e46732fa9c99d25039361a62d6495428d1859db7', 'egypt', 'giza', 1, '491027'),
  (988, 'Sherine Abdelaziz', 'sherine.abdelaziz128@gmail.com', 'scrypt:32768:8:1$84d16fcf009dc9c8$e84f0934340b0079d0f69962a1e42f6897a4c004608a8e7c2d8e6cc532e8f4d66aa8a9e7e25bb6064a9dba79af39ba25bada936d30ceb3bf7d709a5682bd7fd9', 'egypt', 'giza', 1, '389352'),
  (989, 'Michael Girgis', 'michael.girgis159@gmail.com', 'scrypt:32768:8:1$4478960b0687e802$79755725259d566b88affeb370027f56c58d3d1fb9a17374077e232fec86cbe572324450cc47ac1451b3ed169b43b43f7e3608e929443e3d8d3cf867d5886477', 'egypt', 'giza', 1, '629566'),
  (990, 'Salma Farag', 'salma.farag190@outlook.com', 'scrypt:32768:8:1$4791d8e4a319b639$d00a1ecc1cf78bd3b695f858850a73f12244dc7cc70f98ef5e532c292f76eb15059e7b0295e00413ae00a6914856ace0744a5ee981b4739bf95d324f1dab99b9', 'egypt', 'giza', 1, '198402'),
  (991, 'Eslam Wahba', 'eslam.wahba1991@gmail.com', 'scrypt:32768:8:1$411f7855c239befb$102e3c227852ab1017a68068117037aec429b65ba6a58c4ffb6538fc2ae0dfcdfbb4dfc58fd336fa3ea4ab847537c59f8dc4ab910dd24789e1046af5d589337a', 'egypt', 'giza', 1, '386208'),
  (992, 'Adham Taha', 'adham.taha1998@gmail.com', 'scrypt:32768:8:1$47bbf72570555bd7$452d4843861bca708950438c13247b4920b1fcda74994359046e1d5e30bbd0a813b3fa2debd21210528a82ffab05e8ccc1655f773cd25f41e5e67f2440942c85', 'egypt', 'giza', 1, '344381'),
  (993, 'Reem Hefny', 'reem.hefny@yahoo.com', 'scrypt:32768:8:1$4a6d6e240c9c635e$01be74fe3f21c371509a27bfd1ad51e2feec0bec274bf53cdf043cdbe1bfcca4ddeea305e19934225fb2ce16524ec857711c3f2e02aa5b176c7d73058f87dcf8', 'egypt', 'giza', 1, '213424'),
  (994, 'Anas Maher', 'anas.maher78@gmail.com', 'scrypt:32768:8:1$6b59838e035f8ce0$fada76917e125b9ba8778a5b7e86fa7a4be0b7137a65cc3f2313852e7ef3ed66b3813fbc6639b933eb7fce880ab26e203ee143dc7f0dd1ede85f66e85ce8bdf3', 'egypt', 'giza', 1, '732641'),
  (995, 'Shady Hosny', 'shady.hosny95@gmail.com', 'scrypt:32768:8:1$3a7101d1a9b4de47$dc2f33dbb92d29e48b1faa347adc16f26a94e5cad7f4b02294440a40dfc3e912e242a561c665f71ab6e3dcca91f96bde6bbf208206509b67dfb8c8be100721e0', 'egypt', 'giza', 1, '744261'),
  (996, 'Sondos Hammad', 'sondos.hammad22@gmail.com', 'scrypt:32768:8:1$a70622927cad0f32$9e9955d8bc537aa62a35e930320ad1c931319f15af102321bc852ed85669d7d01165f6fef6185e40acfd869467e7ddb3ffea2a7224eed284f0645b97760eb199', 'egypt', 'giza', 1, '084179'),
  (997, 'Bishoy Hanna', 'bishoy.hanna39@hotmail.com', 'scrypt:32768:8:1$6661dc926a57849e$8ef696d7794c7d543b90df486755f1aed4ce2fdb7c2806fd80af5d769515f5532aff9ff662340803525492e64e28d8048420c6421a1ce80898cecb992ac5ff6d', 'egypt', 'giza', 1, '773869'),
  (998, 'Mohamed Mahmoud', 'mohamed.mahmoud438@gmail.com', 'scrypt:32768:8:1$512563d7289bf98f$69138f0aca05d217617ecdef526d1108ac7ac5d8a31e95b9cdac0c31b2d6eef19d71417f56a0b4e4d96ea27d6154f313c8930e6fcce1e6fbfeed0627ca66424e', 'egypt', 'giza', 1, '112685'),
  (999, 'Laila Soliman', 'laila.soliman469@gmail.com', 'scrypt:32768:8:1$f85a84354abcdbd6$a7a663eef3915599b5f94adab80c0b7c14a1ff91246b4e8a558c786f8d80f3639ba3b9068dd9c0534bac76d45c1e9662c710c8c9e0b8c400d6d0fe78f6ecf52f', 'egypt', 'giza', 1, '117929'),
  (1000, 'Khaled Nasser', 'khaled.nasser500@outlook.com', 'scrypt:32768:8:1$82d17a405ddf2891$61cbcde84821c5a1cfe73bf35d1c2887cfe41ec94a10d17a412a53f498caee6ff320ad8f5fe00993f0a6490f73a9625113874b11d87ff1929c4bab0290d65c95', 'egypt', 'giza', 1, '286530'),
  (1001, 'Wael Eid', 'wael.eid1995@gmail.com', 'scrypt:32768:8:1$a4f1eddb78927358$16bd80d13d4efa95e144554e7a9dc9389889bfdd6de533e3034356344c44ccdd79c58d4177f86ad8d07e38869c8a0529973c7e949ecdb3f6f9c071e2f8da2b1c', 'egypt', 'giza', 1, '852531'),
  (1002, 'Nour Okasha', 'nour.okasha2002@gmail.com', 'scrypt:32768:8:1$6d4cea63ca66ee05$69d62361f367ad1ae11c90672a2b2cf7e86d49e942e1049d88aeb08e9ae9d3e92b1cf600dcefd0ed6413f2f8e114d1a66b9cedfb2d70b8a0a9375ad7d3be0a09', 'egypt', 'giza', 1, '999977'),
  (1003, 'Nader Radwan', 'nader.radwan@yahoo.com', 'scrypt:32768:8:1$b33c66b5e7c6821d$47b461815ea3331b252665049b17e94ec549250800c096ad9eb4765662a74bf5fb11403cd00bdfa24cf450bc3aa345f582b37f42e1a79a4c06416bd116804ff8', 'egypt', 'giza', 1, '323802'),
  (1004, 'Veronica Awad', 'veronica.awad68@gmail.com', 'scrypt:32768:8:1$ee0b5f2135b8549f$de11948741f3a4434830a22ff193f22f8592bfd2ac5ea6b94a42c43da9936649d648c47da4f82926cf10cbb7fa3c6ed73cd2211ad968ad43821344903e7e8033', 'egypt', 'giza', 1, '282057'),
  (1005, 'Mai Shawky', 'mai.shawky85@gmail.com', 'scrypt:32768:8:1$b2bfa9202a73459d$49a726508e73f25872a9733b301232ba6b4e5fdc54fd189153862e8853ac18e4bbbe49bb7a3d4bdd84e532648cb3b3d409772a7c699f2b31d74fbb6cb81d4524', 'egypt', 'giza', 1, '704585'),
  (1006, 'Medhat Fahmy', 'medhat.fahmy12@gmail.com', 'scrypt:32768:8:1$226f666fad048483$2507d4b87e15460d5caaaa0a6b106e0063f937d793f8eb85943a388eb5b6a228701b0c35e180bf30e0f8f9c66d5a927ece468194b8ba4d9f5210fc91a63f4044', 'egypt', 'giza', 1, '584196'),
  (1007, 'Shaimaa Zidan', 'shaimaa.zidan29@hotmail.com', 'scrypt:32768:8:1$457a66124167f1a0$db349fba20e2a3ffa78eb6471f487476ee9510def7dc0c21ed6b0f2d4f4ac5a634a3170efea709489c9b97ef54ca4ef55ab647b926913808b4923c20dfbf9209', 'egypt', 'alexandria', 1, '650115'),
  (1008, 'Shorouk Elshafei', 'shorouk.elshafei748@gmail.com', 'scrypt:32768:8:1$b4b79301d48d7aa1$0f57aa96821fd91baab4b4ab30457e94fbb0548dfc8f315f7ce9de9438cf7c1eed3fef223c0eb74dae73fa20dd3662473d4a9eb16de3e173bd58bc38b09a812d', 'egypt', 'alexandria', 1, '180263'),
  (1009, 'Ragab Abdelhady', 'ragab.abdelhady779@gmail.com', 'scrypt:32768:8:1$4ed7a6b84a6925d1$9b49ddf15b35e5eb5085dc685a2e7c5c2d0e54356c5e64a21783ccaf492fa6c18e1b031b00141b5efea0ccdab37f0fbdfb97a4bad294c47801faa3743ee74123', 'egypt', 'alexandria', 1, '882098'),
  (1010, 'Gihan Ibrahim', 'gihan.ibrahim810@outlook.com', 'scrypt:32768:8:1$b4f4f8497c868a2a$4e4dae08d701be9c7a9a1320d03b7a6076352ff3ee2b911f7c674e35a30d6e330052ef5428be03f0c7d9b0c4c31bb4618f3cb9e7ff4cfab0c0f03e48243e9d44', 'egypt', 'alexandria', 1, '818886'),
  (1011, 'Said Darwish', 'said.darwish1999@gmail.com', 'scrypt:32768:8:1$5c7cb289d40922e0$a8d3183a3ad1f7fe9afbe7185d77b146162f7aa8125f5044f9df7c3af944a0522789cef225264f9953a2617479a841bea7ac94fbdde9f8e69b78f4b064d47b96', 'egypt', 'alexandria', 1, '228062'),
  (1012, 'Beshoy Habib', 'beshoy.habib1984@gmail.com', 'scrypt:32768:8:1$c48c86a646af1774$7227940d977c591040af91094519a9735dcf90adb6859fa789bc6095740abc751c7678850f209084acfa113a0177012a0c6239ba6cdf32fad852b4dc88816dcb', 'egypt', 'alexandria', 1, '407748'),
  (1013, 'Reham Youssef', 'reham.youssef@yahoo.com', 'scrypt:32768:8:1$90e83bca69221d72$3a89490dbfc59d167b4e9846186ac39fc568da0bd4925c897c6332dadd54c20d861ac0d1f08e506c92f5695e3fece69b1381a6bc9ff245d94d7641879471708f', 'egypt', 'alexandria', 1, '603363'),
  (1014, 'Hany Fawzy', 'hany.fawzy58@gmail.com', 'scrypt:32768:8:1$239dda5c6e6738b9$07b5d4a921920f5f801f7fef535baf066bfe58457c1f7fb3d1e1cd51bc1ad10895a40a0ecc5d35402e85a38201c60f22198f9cea0de0216122aea58a25214307', 'egypt', 'alexandria', 1, '023151'),
  (1015, 'Hossam Kandil', 'hossam.kandil75@gmail.com', 'scrypt:32768:8:1$a5bf5a1eb5872d73$bc8c00362db653fd7e3ba63be491ef2dc4b9f0eb138a881a6bd2e6945d317d92ab0a240db9e55f393e3ed043216916fe95c12111179b86e63c43333a407b15b7', 'egypt', 'alexandria', 1, '719740'),
  (1016, 'Amira Awad', 'amira.awad92@gmail.com', 'scrypt:32768:8:1$52731074fea7f8f6$3c1c182a49efc8923d1873e6e1f1306902504f4b25396aedb0c22847918e9af394acbb8f288df46196b8821f81bd6b437ccadd64ce5be2730912663c882384c5', 'egypt', 'alexandria', 1, '763107'),
  (1017, 'Mazen Kamel', 'mazen.kamel19@hotmail.com', 'scrypt:32768:8:1$9726f38c2a8fc7eb$4a86765e58f1dcc1611d169468eba10c2618460943a08f007af3ab580e39dfd70a2f10357256de91c139ef57cab930aa067ca67a6bcfb767454ac16bbc6aa7ae', 'egypt', 'alexandria', 1, '808805'),
  (1018, 'Fady Elshazly', 'fady.elshazly158@gmail.com', 'scrypt:32768:8:1$b7862cbe58eb11dd$7204e2d7d64c97e4edf73037442ed6b956b9ce4db1fde6e4cb476d541a430e766646f012cf7bbc12c0f08034ce7242be347bb4e409bbe5be25176019d854ec95', 'egypt', 'alexandria', 1, '928055'),
  (1019, 'Doaa Gouda', 'doaa.gouda189@gmail.com', 'scrypt:32768:8:1$f8ba833266909d6a$fd2fe03bf1dc6160afd2ba4a1b7de86d392e042a66e145175064a11a242778ff0969282f63a6d054d06c0d4eb3f08195f2cb8a25b1367aa104fd2b62b1a8ece0', 'egypt', 'alexandria', 1, '995124'),
  (1020, 'Andrew Wahba', 'andrew.wahba220@outlook.com', 'scrypt:32768:8:1$28dc592cb8dea55c$fe1f8fae574a88c4fe938a49e69da64d25537caaf9c6b7ead981bc78c103da9f397b8049ac0538b2bcbeade35d4185d4729938ee0c62e44828ebb7856e40ea9b', 'egypt', 'alexandria', 1, '884814'),
  (1021, 'Bassem Abdelfattah', 'bassem.abdelfattah2003@gmail.com', 'scrypt:32768:8:1$42c94ab6702079eb$81291795010d7436bfde4a238155d92247864a3ac5a247525f6f4709e807d0d20a0216481ca9087fbda756ff02f26033f537db9a1b3c8a3c8379726260181149', 'egypt', 'alexandria', 1, '845038'),
  (1022, 'Heidi Mansour', 'heidi.mansour1988@gmail.com', 'scrypt:32768:8:1$e00749f73a72e1a5$e03103dc30c2c2d4ebf61ef4ba74986852d335e3944f8402268982d9c6c4f139f40bf4cef71b644b9211ec6d42fb7e20c967b75083d3cf98432a9b57156d2c3e', 'egypt', 'alexandria', 1, '087269'),
  (1023, 'Zakaria El-Gendy', 'zakaria.elgendy@yahoo.com', 'scrypt:32768:8:1$23a35f7251bf6903$184d63fc528380db252d34580ea9552d2069b633e4eeef6cd9cc662ebf409b998c84fc9bf47e426dc5b3fbf681f3211e245120d5eab6f64c35272944b6d755ab', 'egypt', 'alexandria', 1, '197670'),
  (1024, 'Hoda Sabry', 'hoda.sabry48@gmail.com', 'scrypt:32768:8:1$9a63be1407c20fa4$acc8e540cf2638aa6efaae05cc268d242a54b3c47c06ecc49fc3df4a31941b07f27c5bc18f55fb9158937283760246c9162e8b5ce6c28899c437fde0f3b28fc3', 'egypt', 'alexandria', 1, '358077'),
  (1025, 'Enas Aboelnaga', 'enas.aboelnaga65@gmail.com', 'scrypt:32768:8:1$90cd99ea2d427ae9$a901d0e4f2ba73506700bb3a49337c9ccd653ca87e638b3b37f0eeb592a15243ebfed984cc884abbccad7057b3e00c4f7712de1821ed62867aeb41400a3f513d', 'egypt', 'alexandria', 1, '755059'),
  (1026, 'Hassan Mounir', 'hassan.mounir82@gmail.com', 'scrypt:32768:8:1$de9ae559686df8ec$aa2893ebeb2acf8cfc2a84060f863c57b5ba29562f3242acfcf59c3dd7ea4f6f1df3d48a323f38d09aa74db2fee6f868903bf8024b4e30370f64b08b9faf2117', 'egypt', 'alexandria', 1, '469530'),
  (1027, 'Rana Metwally', 'rana.metwally99@hotmail.com', 'scrypt:32768:8:1$1487c4c73a729561$29b90061121659694fb264b43e0071f0cd511a7e5db038f98841283eac73a9f3c16dbd86a969c7b929945235ae9f9154810273cc4e64bf9dee479b1436d337c2', 'egypt', 'alexandria', 1, '938093'),
  (1028, 'Mona Ashour', 'mona.ashour468@gmail.com', 'scrypt:32768:8:1$8e9de67f2a35567e$c7099b660c7afaca854b45079cac3da4f2ee857e0f95b139fe8cbbbaa2783c90201a1612305b697676b8a2ad240f64ea38e7139959c5996f9a34bbd5c4a40778', 'egypt', 'alexandria', 1, '980288'),
  (1029, 'Adel Rashad', 'adel.rashad499@gmail.com', 'scrypt:32768:8:1$a7c871b37330f35f$8079e2fc03ee4e705ebb52721b5b8bc274d0c2213337fef599e7724a1619cf83ab3c42c67f2fe476932a655fc539a4dcc7a88f0570c82bda4ffe853066677ff1', 'egypt', 'alexandria', 1, '063124'),
  (1030, 'Farida Elbanna', 'farida.elbanna530@outlook.com', 'scrypt:32768:8:1$752e0dec9442dc45$f0ba4ace12fa8dc82ac410f5560b731e669e0989996ba825782fffeb4316770a69fc4fec31f98ad61af022feeae85cd94c432213bc774d0e867314231e16afb5', 'egypt', 'alexandria', 1, '593926'),
  (1031, 'Abdallah Selim', 'abdallah.selim1985@gmail.com', 'scrypt:32768:8:1$e0914aea7c08c0fe$0a6e2303cb577d9ccae86fd9f20866869c4aa84aa1c9e9f32bb07e242ddee97ae5198370487118a278b0eab5936581cf1e6a13d984203c770ea437f83195ed94', 'egypt', 'alexandria', 1, '866792'),
  (1032, 'Ziad Hanafy', 'ziad.hanafy1992@gmail.com', 'scrypt:32768:8:1$3164ffa2fcaf44da$ee7006cd51ee05f1ae8050ed17d93c5c1f215cb95e9b2be750985e6ab58a48915c348ce9a3fda3aec81b41c3fe4ea5ad5a286f4c1924b2071d57f7bbd31a58d5', 'egypt', 'alexandria', 1, '462837'),
  (1033, 'Basma Hassan', 'basma.hassan@yahoo.com', 'scrypt:32768:8:1$98d2656fe796a1e3$13025059a49268c6a110963e7ae4c604429b361396f7b1842cb84b8432b62982dea66c00fedd9ce92692bed3d0fd83f77a3ed2757d85b99d4fa6bce0cc784d2b', 'egypt', 'alexandria', 1, '100469'),
  (1034, 'Moataz Gaber', 'moataz.gaber38@gmail.com', 'scrypt:32768:8:1$6c1939d5172668a2$62eb2993857799394c77d3cef5357aa9b49ab5678ef6a34e2e3bc702184ecd88ad1dc1d5109ef63d0931d9dedd23dd9eabbadaf8bdc64ed5d0b4a22fa8ee3b8e', 'egypt', 'alexandria', 1, '751348'),
  (1035, 'Fady Sidhom', 'fady.sidhom55@gmail.com', 'scrypt:32768:8:1$978679a810fadee6$5ae09f986cc5afc1e9ed9bbf22e35e4c480f7e95095406d7e73303eb6f4f423de4963797bf9e2df3dcdb014bba5bc98d138dac4e3a9494f5d2eb2957212b0fbc', 'egypt', 'alexandria', 1, '840772'),
  (1036, 'Noha Mekawy', 'noha.mekawy72@gmail.com', 'scrypt:32768:8:1$dcc8450b5f933bab$9d0672dc5cabbf99af6c1738cc6a1cfe41c7033ff890ba65fbb0d3328f455d574e1aa20714ee16ad8c93c9c075c1c00a48e5ba47c532e970c10bacb237b2b108', 'egypt', 'alexandria', 1, '555427'),
  (1037, 'Mounir Ghoneim', 'mounir.ghoneim89@hotmail.com', 'scrypt:32768:8:1$741499d3b9507365$0b16a1b63e0b64dfab1e1c50b2512ec8654de71ac6af51484ea9893c7c5ae2b283b694e405ff8138f16746a542cac18e723c557cf4558fd3178b8f12ecea6789', 'egypt', 'alexandria', 1, '446028'),
  (1038, 'Ahmed Fekry', 'ahmed.fekry778@gmail.com', 'scrypt:32768:8:1$1bda8e16be31c863$7b9e995c5b1a996230feb9c70c1da5a016d030df0b1a38588079caae5c6458824d13fcd978dd403e009bd0d4294bcd60a94ad2d1d4ec4fcc362cf2d4ed4f414a', 'egypt', 'alexandria', 1, '854805'),
  (1039, 'Hana Helal', 'hana.helal809@gmail.com', 'scrypt:32768:8:1$fd3a4b107dc4678c$0ed5d69bdbcba76ce1bf9c994aeac3a64f7b5704acec97622f9975c38b505e906d10c28971028c84fe2020851383b58d9b9b57c92f0c6b7a3b80b89634fd275b', 'egypt', 'alexandria', 1, '887065'),
  (1040, 'Ibrahim Amin', 'ibrahim.amin840@outlook.com', 'scrypt:32768:8:1$c2e6eca18f92e9a9$7ec1cf7b7d5fa199545edc69154631ee23267c4fbba29794ce852428db3406fbda2a6cf06eadc879019673f363dc9d15cf87398b6ca7db0fec15867c902ab04d', 'egypt', 'alexandria', 1, '822287'),
  (1041, 'Sherif Sherif', 'sherif.sherif1989@gmail.com', 'scrypt:32768:8:1$4f089f774b5f0b60$242756b0bb83f832417b08dfc7c659857babca7a0109403d3965c76d96ac831b66763ea30700e7a71546c8bf2b542616668479c493bc3f3d8f1e06e12c397ec9', 'egypt', 'alexandria', 1, '161962'),
  (1042, 'Rawan Younis', 'rawan.younis1996@gmail.com', 'scrypt:32768:8:1$5b806dad96cba345$5ab61a4cdb189615a64c1c21f881419711494852029f2361118d44599190994ade85a61ee0f1c021b1791ffbb2a189a8b5a874904331a53b981103bb0336733d', 'egypt', 'alexandria', 1, '762288'),
  (1043, 'Emad Louis', 'emad.louis@yahoo.com', 'scrypt:32768:8:1$dcce9fdd7e581b92$0fe1960d9b0193c954649ac8edfac2fd21b397e33b7321e2a721441cb50f87ad6a719abc4deb06f9b5813069204de4aa39f7c9fa1cf280dd0090e867034c8f7d', 'egypt', 'alexandria', 1, '703503'),
  (1044, 'Eman Elsherif', 'eman.elsherif28@gmail.com', 'scrypt:32768:8:1$60189ca84f7605ea$07d2946f72d476076ad0c8e999fd48637f29cfb7fd65bd7b73eb85e5e2626e5ef23f4c40097955adf30ddba09b3314dfd50b717167949338348595db5f53816d', 'egypt', 'alexandria', 1, '624056'),
  (1045, 'Hagar Abdelrahman', 'hagar.abdelrahman45@gmail.com', 'scrypt:32768:8:1$1b9d23523a26f927$51220b0eec7c210a441095638654c58a0ab96844df4e2bba4f649ff77e544d3469c34059fdb90efa8a27804a0b128c47b27a250102a20002e03511c6829fa659', 'egypt', 'qalyubia', 1, '522596'),
  (1046, 'Osama Hegazy', 'osama.hegazy62@gmail.com', 'scrypt:32768:8:1$3139ac45cf3c9ae8$e35b24f576ad2e168a1f4c36721e86ba1d9b4c19d56855cc05f131c1c1a949943aec215883bf018b968aae2f6a93bfe452894772b202f8ee407a8a1030c6ecc8', 'egypt', 'qalyubia', 1, '783609'),
  (1047, 'Safaa Tawfik', 'safaa.tawfik79@hotmail.com', 'scrypt:32768:8:1$f56b3d100067ed99$fb2e12aee7fdb9e77be1d60c806937bd11e64069873b9d136f208e9051d8c6e6952113f9712285920287c6f774b888fa9374f110854f977a2c3f501a3bbee125', 'egypt', 'qalyubia', 1, '918230'),
  (1048, 'Soha Elkady', 'soha.elkady188@gmail.com', 'scrypt:32768:8:1$c0b405ae3810b5ff$44572f69c5afc83ed293f9b0aab09546ea0c61f30a81317dcb84b17ba4c2c12070dc5b83256493437b2ad5bd9a1051b82a65103616a2aba1e5a2113f3afd67c7', 'egypt', 'qalyubia', 1, '134843'),
  (1049, 'Ehab Ezzat', 'ehab.ezzat219@gmail.com', 'scrypt:32768:8:1$81ea201c9af9ea8f$f3351b6446f49d660f2806b73d6f991ac9105836b76e61cb3393d823db43468a10b9c3fda12eacfc54f76772786121453c40d1272cea8ced95597d3cc1529900', 'egypt', 'qalyubia', 1, '261391'),
  (1050, 'Aliaa Gad', 'aliaa.gad250@outlook.com', 'scrypt:32768:8:1$7d779a7b9cc8984a$2dd95ac2e47b94becc7ee6d7d355586c583a4b68b6ac1c77c84eec5473fa03e229eb2e74b21e2ff33969207ad324012bbb6396ddca1b2afe1451c762752d4528', 'egypt', 'qalyubia', 1, '398272'),
  (1051, 'Galal Barakat', 'galal.barakat1993@gmail.com', 'scrypt:32768:8:1$7ab6709bd0e02ff1$ab82e61beaaf17b289821043266c4f97ea7b8b8020a903774a28badb8452499390a57c72dd07f6272ca35861fa6e9aae83437349be56afbec06504fee6522633', 'egypt', 'qalyubia', 1, '194605'),
  (1052, 'Mostafa Samy', 'mostafa.samy2000@gmail.com', 'scrypt:32768:8:1$0240edd9d78abba5$ea6d7a7299cfda68bedfadd457e2e748818d2ebac7f68e8582006bfdf9a118817c555bf8cb1f985383e137907779534fe0c35e052d026417328c7e9192e0fa11', 'egypt', 'qalyubia', 1, '768044'),
  (1053, 'Nada Abouzeid', 'nada.abouzeid@yahoo.com', 'scrypt:32768:8:1$ffcff3031fe9a623$0324f41a683ba4571ff68227d953aa763505b97ba0574cc3c37e6035faae4718d20d0eb250c8ea4ed2c62b75a244639cbe59f12d0caa43954044699c09f7f49a', 'egypt', 'qalyubia', 1, '548138'),
  (1054, 'Amr Nagy', 'amr.nagy18@gmail.com', 'scrypt:32768:8:1$7d5ac22f16addc0d$332dfbb69aa1811a8ccf9cb55059d0ffd59be22343b219d616010424850a163d46213ca627ac366f4493a41b5fd03ad9869c4db63f79df3a51d3ed32bc0000de', 'egypt', 'qalyubia', 1, '060139'),
  (1055, 'Ramy Elfeky', 'ramy.elfeky35@gmail.com', 'scrypt:32768:8:1$d4359fef35706fa8$a956d14902e55367213090bb73b8aef05846f2af9e4cccc4bdbc95da9f84bce69ad1661710f216c3430c99b1ebe23cff6d0a6ade9eed8ea8952ff89cf5a56b83', 'egypt', 'qalyubia', 1, '047149'),
  (1056, 'Asmaa Khattab', 'asmaa.khattab52@gmail.com', 'scrypt:32768:8:1$cd73b16a372818e2$2ce5a8d57783d9f6ffa2fdbe3f4014ba36891851a0de985ac6620b343234a52b494a51904599dfc44fa53e0438f3bc5dbac7f177a4c21093087dc0aa94e6cfcf', 'egypt', 'qalyubia', 1, '881746'),
  (1057, 'Hazem Fathy', 'hazem.fathy69@hotmail.com', 'scrypt:32768:8:1$84193f91727e0085$4de183705a198fd10585d635e5c722a39507077eb25b5ac5ccb31b88cc68ff5d9b39e34ef4d72ae701f77597bd5ce7a84d8970fa7e7aacb02a96fc118def403c', 'egypt', 'qalyubia', 1, '777831'),
  (1058, 'Mina Boutros', 'mina.boutros498@gmail.com', 'scrypt:32768:8:1$c9cc5a0922aec3ac$381a9310a9eb8aa38457801b0f06a9de1eb6a47358e1a5d2d72f9a69d70e3a6184a95f3186b2ae3136850a5074c377d82f80ac6df1b4fe1e8bc7709f48e39f4d', 'egypt', 'dakahlia', 1, '469293'),
  (1059, 'Nagwa Hamdy', 'nagwa.hamdy529@gmail.com', 'scrypt:32768:8:1$e9eab7d4b2b202a7$ba00b00255383cc2dd3c5556fbf69969582c1da65daba7fb32b3038fc83964fe675598c688c8d7018c702edc195904c7a29ca95a0d3fee91ebe250c8bd8939c7', 'egypt', 'dakahlia', 1, '549289'),
  (1060, 'Salah Khalil', 'salah.khalil560@outlook.com', 'scrypt:32768:8:1$be20153806f740b0$f8a9a24be49e31cbc70c0aba1d60cb9b748f20ce5da4fb7c03249e0b3a87514c02f4b5c2fcb7e6036e22dc11764a2206ff362b970c2a4c993f8253af9e0609c5', 'egypt', 'dakahlia', 1, '630731'),
  (1061, 'Anas Lashin', 'anas.lashin1997@gmail.com', 'scrypt:32768:8:1$40a1073ea3beb52f$edac2fcb88991ad8e94f9e1f2c139af1f98ead0235707ef0c232755458e65422e54e5499b6377ef6a02ca15fc81114dcf290d187eaa36ef7b1ecdb748ad3b914', 'egypt', 'dakahlia', 1, '159991'),
  (1062, 'Radwa Shehata', 'radwa.shehata2004@gmail.com', 'scrypt:32768:8:1$e47c4572542dc148$3fbc25a4c1bf1dd95de5471a9096ac01d339158274105aaf5450079fde97f342626c88f23406bffdd13e6e922ef6fc7019cc5d6d80c099d8a6c2f33074046a38', 'egypt', 'dakahlia', 1, '247078'),
  (1063, 'Labib Saad', 'labib.saad@yahoo.com', 'scrypt:32768:8:1$88932775de12b030$0ef2a66f3d67e4680b0b6e6a1bc6ec85d3bf1c42df2548dd29e1a0e336f4d7e25866c1f3bb3522a7e8eafa82ce5734869800f4aec7a5934adbf8e1d65e02d690', 'egypt', 'dakahlia', 1, '361070'),
  (1064, 'Esraa Anwar', 'esraa.anwar98@gmail.com', 'scrypt:32768:8:1$2d41810d4b2a9f26$c1f5b91c9feefe882effcdcc317e26ae4418aa4920a47bcd4accc6ee725ed5246fa5a13e79d6bdbd821f25bfb8e36c4f0bd1ca399c984d6f5fcb036e1a9daaf7', 'egypt', 'dakahlia', 1, '292960'),
  (1065, 'Yasmin Sakr', 'yasmin.sakr25@gmail.com', 'scrypt:32768:8:1$c5650d988aeb722f$1f093a89699e4b3249085a6b89678abb45c864c7baec2b4351f3bca40974bb8af00e9d8c527c81ca1182b2d24a769ca105e653efc43fcc96f53f7b60f5d54365', 'egypt', 'dakahlia', 1, '694722'),
  (1066, 'Karim Elmasry', 'karim.elmasry42@gmail.com', 'scrypt:32768:8:1$c15caa9da488b6f1$6233c2986a8de409e32b583cc0a777b74bd4c941edd3148bdf9d9f5a7db77472d2dd4f20504a6094f3868a392320569ef7d9de87fa944c186df1f66c45bb64ed', 'egypt', 'dakahlia', 1, '341294'),
  (1067, 'Malak Zahran', 'malak.zahran59@hotmail.com', 'scrypt:32768:8:1$d221c3a5b4c57619$eadef2e31173b725535cce1304351bf1374539e1355409d92dd9dca3295cbc1a93f6f09192fd22618da2a4f139a35b1f09ed6b3343cabf430c3c28800a35ed85', 'egypt', 'dakahlia', 1, '519359'),
  (1068, 'Shaimaa El-Sayed', 'shaimaa.elsayed808@gmail.com', 'scrypt:32768:8:1$58a7641978f7b6a8$a93ea5314a46a987fa4f8476fbd44274853bddffd1d30735b28ad23518c9e7ba6b4556d9ed519d5ba8a7c033b8ac120c06a430864ca8333e28afa963e7918d79', 'egypt', 'dakahlia', 1, '758637'),
  (1069, 'Ayman Salem', 'ayman.salem839@gmail.com', 'scrypt:32768:8:1$5101fbb4c4e35b11$2de64dc31da158c67bab7432746db2e323b11dd90a93394ee3efddace77f19e9aac5221cb378ced5e2ba57f74d147628be2adcb60b2c4d73b71251c260de9d4f', 'egypt', 'dakahlia', 1, '591968'),
  (1070, 'Dalia Abdelaziz', 'dalia.abdelaziz870@outlook.com', 'scrypt:32768:8:1$5d8b2deea2bd0fba$e563d85514040b54cd59a7f52f0ea36b97fe324bc50b5c4f35cc4ab2e06859ebd24daa9fe8e5b120d7f3b8617ec2743fbf0a684968652bf58348c880260f0f0b', 'egypt', 'sharqia', 1, '947063'),
  (1071, 'Abdelrahman Rizk', 'abdelrahman.rizk2001@gmail.com', 'scrypt:32768:8:1$bce277173ffe8ae0$cf9e572b930678eb4e2c9f1625587cceb758472f49ff04f8dd031f14e5fee8ad85c256a628f0b269b89cff693c51ff2ad3e1e20872f8370ad58ea7c72d8b6bee', 'egypt', 'sharqia', 1, '922849'),
  (1072, 'Seif Farag', 'seif.farag1986@gmail.com', 'scrypt:32768:8:1$490c6ae09f90183f$a7a01a1a1d0c99ca73fcd494753711aafe4c51a96bc7e108d6a91cb248a49bfa893c0ba739c66b821085def4067ff3810b8e75c6c076247e99887f94a8463822', 'egypt', 'sharqia', 1, '137471'),
  (1073, 'Randa Wahba', 'randa.wahba@yahoo.com', 'scrypt:32768:8:1$049ee5705b246286$72b1445118b9582e7a8b68d31480c71b075fd67ae68486366f87e76ed166f370467770940cf3ca4f811b1556596727f222ff41e37bbc7052f215fb7445c81c82', 'egypt', 'sharqia', 1, '521840'),
  (1074, 'Hamada Taha', 'hamada.taha88@gmail.com', 'scrypt:32768:8:1$4c6b557b6fbc3ba1$af5c13e5530483d9a96f9e154443b7bfe8dc02f7754d3d56a891782d374b290283a16bf36556a32c8a15ad82c1828eedf52fee0e47f8dd3ff1bfe8e73f06545d', 'egypt', 'sharqia', 1, '393371'),
  (1075, 'Emad Hefny', 'emad.hefny15@gmail.com', 'scrypt:32768:8:1$9cba642a74af2f86$2f62d515d69562f66ebc84e358a299744495ba3615b58523875ae1af2e738db019411dc55f2a858650740f0daaa5b2fb8719020ae0f0c0d0a521546b807d925f', 'egypt', 'sharqia', 1, '459781'),
  (1076, 'Aya Maher', 'aya.maher32@gmail.com', 'scrypt:32768:8:1$358792e1c72322de$586737ed061adc0af06a39faede6a7e88a98ed83f93e26c7799e471ef4924a96dd62b55953bb7b07bf9ab5589f12e6c602e5a9ad6b500158ab49ddfc7d710876', 'egypt', 'sharqia', 1, '573508'),
  (1077, 'Waleed Hosny', 'waleed.hosny49@hotmail.com', 'scrypt:32768:8:1$788bb2777ec673f2$98572149f4d61d11da79e5ddfaffce91cb5fe68141a953c1035dedff1d236c65475c410780283343d76b119a769f044d5dc5e4bd6fa876b92666569ac8aa439b', 'egypt', 'sharqia', 1, '542964'),
  (1078, 'Said Hammad', 'said.hammad218@gmail.com', 'scrypt:32768:8:1$6e33deb2076e4c42$49d860acccb64d37245d1dc7edb186ad5d9b4bf331be0112cb40aa5b66b04352f00aef26313bb303b958e45bf8969d49ef8d593dbff1e29400fd6bed34428118', 'egypt', 'sharqia', 1, '390935'),
  (1079, 'Jana Eltantawy', 'jana.eltantawy249@gmail.com', 'scrypt:32768:8:1$062b815b52f7b56c$be97fc7ff047b4646a4752e5039239901e8b52bf74b06a0781831311aaba1078999fdf4ab4ac0dfa68f547d679b2de418fbec5f8e1d25df384dee9caffc6e12d', 'egypt', 'sharqia', 1, '294577'),
  (1080, 'Ali Mahmoud', 'ali.mahmoud280@outlook.com', 'scrypt:32768:8:1$38905fb35a6b2b2f$9afa6ab989eeed7f9ab236bb5a040d0d27f8813df65d25268c6fe214e56d82d931d28bb5db896b4e6c53dd8195ade729d290e8b0381647086b8bbad899faf1eb', 'egypt', 'sharqia', 1, '321321'),
  (1081, 'Bishoy Samuel', 'bishoy.samuel2005@gmail.com', 'scrypt:32768:8:1$20f856ae0b6b6532$f9c112ad3f7bb538f0746848a2bea93ab15cb77a018aec0b210607b6f04db833c3080352da3d32a2695cd9d8a0209f43d85c2040d6fb9d152126729fc0ad4af2', 'egypt', 'sharqia', 1, '602860'),
  (1082, 'Nermeen Nasser', 'nermeen.nasser1990@gmail.com', 'scrypt:32768:8:1$e08665dd7d6fe340$f926055794566ec4723a70e0af22f2176900916a6a54aa210cb24aaa6fc72fa93096d0e5e23cefcad46f404a7b3c9717fb0175758c0f2f2298793dac1193b44c', 'egypt', 'gharbia', 1, '088234'),
  (1083, 'Sameh Eid', 'sameh.eid@yahoo.com', 'scrypt:32768:8:1$f6de3a300a295ec2$db5ea6be716fe81cadfe05f10783227255a89ccd1cd45febb52a39016c926d217506469b5e0519b92e344d9d167f5034b95439e8b208c577c7c1c6daa06f6e98', 'egypt', 'gharbia', 1, '572029'),
  (1084, 'Yara Okasha', 'yara.okasha78@gmail.com', 'scrypt:32768:8:1$dc8c24148219016b$03d575092aaacd0d7a0f56488285c8b30da6b6c21c7c6eba6304da4f6b6fcead1cb4528514d9562434102b1d78b2b45eb449b18f67389513edc00633b3df7b0d', 'egypt', 'gharbia', 1, '873672'),
  (1085, 'Hoda Radwan', 'hoda.radwan95@gmail.com', 'scrypt:32768:8:1$bb395365f1bd45de$0a928fc921e246c97372e3f3c4dfcb0f1ef02b73934e7c0620b494f0e70c371b887d0402311154ce7856b68549aad1c1e8bee65c0d58177bffe1ea88def95902', 'egypt', 'gharbia', 1, '568226'),
  (1086, 'Gamal Zayed', 'gamal.zayed22@gmail.com', 'scrypt:32768:8:1$e870e05b0076f965$d1ce9012f585948b0fcbeece3121d3620d10bfc97678bb2ef6826b768d95d8235be6549dc33d4261c85dfc9a4228b47d2aa6d5763a8f8fd0126537ed5f045c6a', 'egypt', 'gharbia', 1, '915468'),
  (1087, 'Fatma Shawky', 'fatma.shawky39@hotmail.com', 'scrypt:32768:8:1$f34fa6519dec2ddd$9651e42059248e0738a72668b30eefe4741d1b0ecbb1aca71ddf56e920149416cb6428cee06024d8cb9f94a98b8ca82bcf1c014164dd565af014c1c620f3dc15', 'egypt', 'gharbia', 1, '174891'),
  (1088, 'Rana Fahmy', 'rana.fahmy528@gmail.com', 'scrypt:32768:8:1$681341c55438e9d2$be51577cc87ace6f70d4ed31399ffa6e28a8bfcb2b4adf41e39de20d2019dbe4a85e36a4b3fd56e4fb4f907268181e69d7b6424d105bc8bc560b7e4196bbbd19', 'egypt', 'gharbia', 1, '203316'),
  (1089, 'Hesham Zidan', 'hesham.zidan559@gmail.com', 'scrypt:32768:8:1$78dd0115558e510c$71e03fd9c9f1000d05a9b7a1840308fdc7fce4ceb57ea90932a4bccd47fb247c22fd7d1ab28186779f8007c7172549ad6d7ffa86984f3f26379e6c22c3b04e10', 'egypt', 'gharbia', 1, '220265'),
  (1090, 'Sara Elshafei', 'sara.elshafei590@outlook.com', 'scrypt:32768:8:1$b5c816233a4902eb$8fdb207f59fd543163cbf414e4c349f46de7af75a5e44597cb98ec787749964e9b68f907de81d8ac2695bb97ff1b433ea9346b9a786bc315d28ea0faf428fcf4', 'egypt', 'gharbia', 1, '266643'),
  (1091, 'Helmy Abdelhady', 'helmy.abdelhady1987@gmail.com', 'scrypt:32768:8:1$e59f254206b2558f$f3936eb96c12e11d12f240fc0601dcedb115f45ce2fcafdda2a41c90b0559525c64b8f58f6e73a5d0931de1e13dc178252bc9e1bf2cb32b3f2e9f5a3e3c22967', 'egypt', 'gharbia', 1, '912248'),
  (1092, 'Mahmoud Ibrahim', 'mahmoud.ibrahim1994@gmail.com', 'scrypt:32768:8:1$de72166671d77d3a$dad400262c79f107dd05452285ea2a6a801b0d6523875c5d6efea8745c6bc3736fb50d7963086ddf8d17f47b175b9a65ba4ab2b5c50fd1918f0f6e3bfd05db51', 'egypt', 'monufia', 1, '261618'),
  (1093, 'Rehab Darwish', 'rehab.darwish@yahoo.com', 'scrypt:32768:8:1$3dfba34b9a75cc73$803d3150deacad691bc7734b5b22cbcb0f2048571fe4df9540ba7ba0a9ebd4f9fc8e5c7d6d48db2f4f92f48282d0facd7680ade541c0dcf5c6a1877ebfebea03', 'egypt', 'monufia', 1, '427733'),
  (1094, 'Tarek Badawy', 'tarek.badawy68@gmail.com', 'scrypt:32768:8:1$f8c99e85b58e342e$6667bea4b7c867c1a44ebd907445400f18cb5912c06ec2ba28aa3470e77254dae2108728bc8978353034980b38217566befb45a6aba8f05409f374ab12c19a36', 'egypt', 'monufia', 1, '254879'),
  (1095, 'Walid Youssef', 'walid.youssef85@gmail.com', 'scrypt:32768:8:1$d8366d63d80dd2b9$0e7af58c0c22b0f5528fd1addeab375845c60b5a3920a1abb49e8db3cee5e6cea31b59ac01cc07ec71b63401269fe08aa1863085a5f9b9457e08b521342c7103', 'egypt', 'monufia', 1, '817777'),
  (1096, 'Walaa Fawzy', 'walaa.fawzy12@gmail.com', 'scrypt:32768:8:1$0d7dd020d34aaa09$0bcf8aaf1461dc0664b0500d9423fd5a79360b9a14609d40c250bb4d0fa3e49dd5d906f85814bda1b824369d0812c829c402e0eb36229c9f8be6b56feba4e0b8', 'egypt', 'monufia', 1, '546357'),
  (1097, 'Tamer Kandil', 'tamer.kandil29@hotmail.com', 'scrypt:32768:8:1$fdd9bd3e1fdf87cc$1e7e66b19c3aa26e735681f5f2aece2758337f0ab02632f785f86d54e892227d77e616b20b5c9adadd470449eca03ede6cb98d1b7d2ab7f2fdb9dc3822726569', 'egypt', 'monufia', 1, '324581'),
  (1098, 'Abdallah Awad', 'abdallah.awad838@gmail.com', 'scrypt:32768:8:1$3e28d6b002f51aa9$ef481e325f619842f35aac9b4315e3b13997e5a399ed7009a9eb27579ad99b3571fce302bec43f4096c6034fdff9d3f494423eeb7b1af155854d63055d779073', 'egypt', 'monufia', 1, '687527'),
  (1099, 'Mayar Kamel', 'mayar.kamel869@gmail.com', 'scrypt:32768:8:1$b93ff1bab32f6c05$5167ab87854a9eb8a1d689eb859b0815b859c28c14286f0227e0e665f58c1e97d231011b64675b4bbd4c7f894df68adfdc26fd6e1b78fa4fe8fbae6e0fd929b9', 'egypt', 'beheira', 1, '726917'),
  (1100, 'Maged Elshazly', 'maged.elshazly900@outlook.com', 'scrypt:32768:8:1$2963665001d4ae6e$c90221bc20ad9e5ca52b206a70fd7ae5697b759a777e3f1f1fe3548af011735bf0d0d93a671604c6403636fc01f125c548a991b5a29401dc50c2080f3873c1d8', 'egypt', 'beheira', 1, '104437'),
  (1101, 'Moataz Gouda', 'moataz.gouda1991@gmail.com', 'scrypt:32768:8:1$eecfa15ae1fb4ccc$e494897c3e049cdefa7527d976dc63ad0c7220151b09ebf02b2cf847cb435330c5226522f98863da99a7a468b07a57acd1341d77ed3314d3957570f4cbcdce4c', 'egypt', 'beheira', 1, '072287'),
  (1102, 'Nourhan Ragheb', 'nourhan.ragheb1998@gmail.com', 'scrypt:32768:8:1$42df4dc66b09ad10$fc92555136075745374a46968b699e5ae652c9a19f33434447ecb2428c4408ee9d97c1b38b3245a8c74bc1b734c9402f084e7de20c980839b639cd303da06639', 'egypt', 'beheira', 1, '860808'),
  (1103, 'Rafik Abdelfattah', 'rafik.abdelfattah@yahoo.com', 'scrypt:32768:8:1$c87f5444dcdb3210$9d8f1da0e71bdcf060abdb885400169f679466742f192e22cf721dc0cdb4e66d74489d03f01abe485e70cf6c058ae5ff1a853e1306230c2fcaabbac14a8b4abf', 'egypt', 'beheira', 1, '494334'),
  (1104, 'Nancy Gerges', 'nancy.gerges58@gmail.com', 'scrypt:32768:8:1$f654e85cc43c51fe$b2ef9c46e09d0989330d6f3e5c8c5ee7914d21e6f7550c9d7d898ca8d4a852c9e5ca5205c56df54f4b2febf22d41b3d2b9f4b1c00295a542723b1fe52de7c7cf', 'egypt', 'beheira', 1, '985035'),
  (1105, 'Eman El-Gendy', 'eman.elgendy75@gmail.com', 'scrypt:32768:8:1$b4dc1d6da0050b3a$187e52eb93a6d6e5459d4ec946ab301c34fba9ac0e572385afe12668f37c5b8a8568f19da1740ce2fdcb65d05a3aa55f3e30503d7c484dab1b375e1d8cfa7b62', 'egypt', 'beheira', 1, '257048'),
  (1106, 'Youssef Sabry', 'youssef.sabry92@gmail.com', 'scrypt:32768:8:1$409142fab1e9b584$c5aa2e5d263949b9fe70c00dfdb6e7aaa882e4d8d241a8678c6c5cafd7072aad88bd03d8fa880f16cf2d6e50d4cb9b54d5953ae26a349ddbdd3ad589473a855a', 'egypt', 'asyut', 1, '346559'),
  (1107, 'Marwa Aboelnaga', 'marwa.aboelnaga19@hotmail.com', 'scrypt:32768:8:1$d9056d52af9349ba$1c55ba0219d25209732542660cdeb428eef3eadc698043c5e6cb76d3f3db4b82ca7147cbd4ecffff134fc2900cef070e15d4cd40a634386801b1df4aa886d743', 'egypt', 'asyut', 1, '045639'),
  (1108, 'Safaa Mounir', 'safaa.mounir248@gmail.com', 'scrypt:32768:8:1$1138e659d3610b5e$cd6f2b83008d39f0e0a77e50e433dbb5c4892f8d5c8468fb77807f8d0cb01b17e8cf60d24f87dee7e746aea134566bda64c30de6eee74d22dbcd986f61dd9e07', 'egypt', 'asyut', 1, '561337'),
  (1109, 'Essam Metwally', 'essam.metwally279@gmail.com', 'scrypt:32768:8:1$30dfd4c1be764f4e$1c39ed368860c35c058457232e57fb951b2d73f65784814fa2e5504d2cbe39907a83b82761179a917399b4be3a73d73072024b6f699dcf43edcc5b61993512a5', 'egypt', 'asyut', 1, '344528'),
  (1110, 'Sherine Ashour', 'sherine.ashour310@outlook.com', 'scrypt:32768:8:1$49c34ab646ce20db$4c2556302760c610e805a5d0c41d4aab8dcc7e49e12a3a3c84006edf02947928fcefbea45aab4fbb8a27f6ee8e788f0ff630491d72b56917765b90bfc32b3519', 'egypt', 'asyut', 1, '355206'),
  (1111, 'Yehia Rashad', 'yehia.rashad1995@gmail.com', 'scrypt:32768:8:1$8f717732b480baca$f6e8ee914d5e83e5a598406b4551eb2cb8729da787c9380e5c930c45a8de32e3b4f218c10108b68e17194da88c75a0bb141d4b7ef3f68841598dc8bdb4d88516', 'egypt', 'asyut', 1, '544303'),
  (1112, 'Remon Sidhom', 'remon.sidhom2002@gmail.com', 'scrypt:32768:8:1$5a40f1b0c46718f9$5cfaa64af2fe5c9d8e2a0c36c5265e25119a60b8b7533d8f8b3eea3a74c3183b6695d4bea0803bd1867052ca1cda39eb4185513f8d80ca920b5cb4456d03e7e7', 'egypt', 'asyut', 1, '512099'),
  (1113, 'Marina Nagib', 'marina.nagib@yahoo.com', 'scrypt:32768:8:1$8f510b6fe0a58d4f$1356f874d7d7e6b01719a62d59d03c414bb70cb7ebf209d855c833ce05a26182f8c77005e7c2cd285eb4cbb6582a23d97b27fb9ae467ca56764dc9734d31ec0b', 'egypt', 'minya', 1, '679613'),
  (1114, 'Sayed Hanafy', 'sayed.hanafy48@gmail.com', 'scrypt:32768:8:1$1c670839c355796e$b8326ecb7d4fdb4150f3c7cb262f0a599a2b42a292e4106058d06cba581938e5cfd36b8fca8037b62104634502041eb613974adb4a24930a6c273f37039303ec', 'egypt', 'minya', 1, '630742'),
  (1115, 'Nabil Hassan', 'nabil.hassan65@gmail.com', 'scrypt:32768:8:1$812319d31bf41f5a$f16fc633c3777cb672746eccd972c0b0aaa850279fd77da9777bdc484b55c4b95c1719c35ecd66526f40c9868e3a51f256bea5be0ed06b8b634c2902ac0446f3', 'egypt', 'minya', 1, '932114'),
  (1116, 'Lina Gaber', 'lina.gaber82@gmail.com', 'scrypt:32768:8:1$f9f5c44df2919361$feb671dafaedfe0f36d64be7b3f7d5d30a87e58c866a4a4dbca7d8341cf98499b202c07af1fc0452d3e367a602d3c6efb604bc6f1763dfa55fd7396047b5030a', 'egypt', 'minya', 1, '675229'),
  (1117, 'Fathy Zaki', 'fathy.zaki99@hotmail.com', 'scrypt:32768:8:1$8f7f760137dca8b3$3da9c95bbcbfbf376a936a75675aef1de77a1c777b100e9d74e468c14ed7f654a91ff42c247272e8f735b939cad2479c864793f7b75e50e5d400e1df8b854f7f', 'egypt', 'minya', 1, '798737'),
  (1118, 'Galal Mekawy', 'galal.mekawy558@gmail.com', 'scrypt:32768:8:1$b3a811c72b354014$35862e437b4ff56143d718f803beccc2515c0b515b524965921469e178dd8b500029958013861037e137570cec60ab937e46ea9db9933a6da89b2e5a5c86fe82', 'egypt', 'minya', 1, '219782'),
  (1119, 'Ola Ghoneim', 'ola.ghoneim589@gmail.com', 'scrypt:32768:8:1$7b4dd3eb9c3b65a6$0e76a47d5113fabc25b4a714d17ed0c0f2c096a35db12c943e40216791515b706aeb656360eef2585e196d68ad8a0503ea89a164004002dee00bab46709b1e9b', 'egypt', 'sohag', 1, '446038'),
  (1120, 'Michael Louis', 'michael.louis620@outlook.com', 'scrypt:32768:8:1$b8f24eca153833ec$347348c15310b56da3f1d9c77a29d9ccc7e5b666e03534d1568e33444f57d5512b455d2c569f18ffcaa551e0fedd4f9f3dcb44e32a5d958a68c79c88c5bf66c7', 'egypt', 'sohag', 1, '821453'),
  (1121, 'Amr Helal', 'amr.helal1999@gmail.com', 'scrypt:32768:8:1$dfb5301c09751f8c$3d920cb4e58663a501d01353039707da41db16d27515f47084b7cca2f153d9e733d6c07aa46c13220f19f6547ac95044b56b35c649de35267bc52457a6765fc3', 'egypt', 'sohag', 1, '334229'),
  (1122, 'Ghada Amin', 'ghada.amin1984@gmail.com', 'scrypt:32768:8:1$95d60aa655356f19$e046bc21ff6de8a725ee4a2b8b8c3bfa85be4f66205a4817e91addeb514b3d30bcbaced7710b65eacd99b0489d9af9ebc8851108631e5919c5aca1b5eba5f087', 'egypt', 'sohag', 1, '265965'),
  (1123, 'Samir Sherif', 'samir.sherif@yahoo.com', 'scrypt:32768:8:1$3861c4e6a166325e$1d26f651a11f26c8ce0982e2cff18c5cbf7356b95b79d00ef9a96cb0b4b53e067374735a47dabc9f87a7cff3f4c5afff31d65469b5ee207daed5fa1ca9c910a4', 'egypt', 'sohag', 1, '433403'),
  (1124, 'Nour Younis', 'nour.younis38@gmail.com', 'scrypt:32768:8:1$88b088c68836e771$ed252d9b3a2a43c7f4e460e44ea6ba8b6563adeebbd053c25da34228e1e6baccafa361e9abc2530cc62ee8443c050382dfb2722553650a0fb0aac00a0e096c7a', 'egypt', 'sohag', 1, '921171'),
  (1125, 'Esraa Abdelmaksoud', 'esraa.abdelmaksoud55@gmail.com', 'scrypt:32768:8:1$75de31bc3f0221f7$af98186b921fb5e133fb226e4e86db4f4ff59ea01ca016f1002d150f91a69bf4dae0d22c5bdb975af78fa8d3025302a9323d0643dc225805fb0610a39b7b3692', 'egypt', 'qena', 1, '970128'),
  (1126, 'Adham Elsherif', 'adham.elsherif72@gmail.com', 'scrypt:32768:8:1$77ad3940456748f1$5c8d99ffff5f7a8d44e58104547247804ea13fa0cb244fecfd59ad02068f28d94691e088ad576e11d46a4a8eba98f2e83cf3ff9942fe57b64f1cd8f66b241e2d', 'egypt', 'qena', 1, '263046'),
  (1127, 'Mai Abdelrahman', 'mai.abdelrahman89@hotmail.com', 'scrypt:32768:8:1$2ff5bd79a6acb539$11ee9c2a571eb122c3dd83df09c2e0892c2585207065808617623d21d818e1aab96e27d6d1415e8e33da681e415f84cc8933ca1ce9aeec3e223a6ad4fc71e08a', 'egypt', 'qena', 1, '785820'),
  (1128, 'Malak Hegazy', 'malak.hegazy868@gmail.com', 'scrypt:32768:8:1$0c00c47cfce233c0$81a88f8d862f6acb1c7b6e6898110efd27ea7763297a443c6d0d96daf6bcee266bc97916cfc1b0673095e7f5a60ab81bcfa1884af86b08da81740c550a4d8584', 'egypt', 'qena', 1, '457776'),
  (1129, 'Shady Tawfik', 'shady.tawfik899@gmail.com', 'scrypt:32768:8:1$c4e4c1b5afbe96ce$f66cc438e2b932375cf4251ed73d4f130bf397945726f931c98aa86ef1497ae3fe8409cabbfa6ae021d3bccbce9adfc5e10c8947585718ae0bf14c3c4a676d26', 'egypt', 'luxor', 1, '255272'),
  (1130, 'Shorouk Elkady', 'shorouk.elkady930@outlook.com', 'scrypt:32768:8:1$845e24b2cfcdc818$7249f79076d98e92bb1705b434e91bd9a2b7d2b9e55022f33898fed46e14d1914146fafd78406380883baec700688e5be4b0b5386fd939008812a2a05233dbe9', 'egypt', 'luxor', 1, '803747'),
  (1131, 'Atef Ezzat', 'atef.ezzat2003@gmail.com', 'scrypt:32768:8:1$38cde18e5708080e$1732814075c4883a75b22c8f7781ca7ae9a9462acffed6724a7a28d3890d8864168ca2ba503e32eba78be5df8bc34e612bc4381fbef544eeaf4d25acd362ea23', 'egypt', 'luxor', 1, '369445'),
  (1132, 'Mohamed Gad', 'mohamed.gad1988@gmail.com', 'scrypt:32768:8:1$79269d290b9c9fff$7876abe7decb9f59e1b2257b1018e9f590331061e23fff19acdf1428603e97817fdfefe5678aeb159d3bc20cc92dc698d53b5b3a301f407612825ec2a1c9a0b1', 'egypt', 'luxor', 1, '937462'),
  (1133, 'Rowan Barakat', 'rowan.barakat@yahoo.com', 'scrypt:32768:8:1$4df24b4cbb55697a$471823fdbf495f5e7deef023272b2204966aed6c6ac30e128a567ef56ff53f7652af3b596c741355aa163c089fbc94c6fa893f9f44a9009a1f2acb26cda77601', 'egypt', 'luxor', 1, '925907'),
  (1134, 'Khaled Samy', 'khaled.samy28@gmail.com', 'scrypt:32768:8:1$c5b3210ff31dfa06$965bedc83045f8d01a2851401d77d0a0c720b98b4471e62f54ac461e111e4eaa25f37b5f908badf0786f5507de3a7cb7d5b83d03b9f3092d6811ab978e881322', 'egypt', 'luxor', 1, '772813'),
  (1135, 'Samuel Boutros', 'samuel.boutros45@gmail.com', 'scrypt:32768:8:1$b30847a5bb0f5505$198bd2e9049f84cff85fbf779adaf5628b468978f4207a826115fd0532cc71fdaf145c1233977139c66d6b82cff71daedd58e3d9c1e491ce189e21be7495529b', 'egypt', 'luxor', 1, '343033'),
  (1136, 'Mariam Nagy', 'mariam.nagy62@gmail.com', 'scrypt:32768:8:1$af35c8f3e8337da0$eb23938bb594e251a087a1c169202de421e273a860f6b011758da49084135b2f0c66787472fac8aa33c86468a24eb60126c42a23505af45cdb43d90cb57cfd05', 'egypt', 'luxor', 1, '775444'),
  (1137, 'Nader Elfeky', 'nader.elfeky79@hotmail.com', 'scrypt:32768:8:1$e21fab8c643b7414$dfe7d209ad4e905d5a1064c00dd89b7e4366b8f27b5ad3aee23190f4eaeb4885477e7d192c17f1d717f3bf875212b0669502cb7f30a55970fee6a79e23d5cdb5', 'egypt', 'luxor', 1, '438667'),
  (1138, 'Abdelrahman Khattab', 'abdelrahman.khattab278@gmail.com', 'scrypt:32768:8:1$a82e5b5048b0e4a0$31aa63ebd31e594afa197e8684e74327e3cc6fdb81afb58a0346d3825cd66170abbd7b5e4fe2165229a84d742d2e174d8c85f190132b90cf951b163eb47b48ac', 'egypt', 'aswan', 1, '698737'),
  (1139, 'Menna Fathy', 'menna.fathy309@gmail.com', 'scrypt:32768:8:1$46e1f8ab82b51c2e$ee31f5980da4320fcbfd243368defa7de080effad0eceb2a5a919b5d2101b20c6499bf9ad8588cb19ee8df3a291e0521a0485b78e5d985f23f2f9186494ad18c', 'egypt', 'aswan', 1, '977404'),
  (1140, 'Medhat Shalaby', 'medhat.shalaby340@outlook.com', 'scrypt:32768:8:1$626cbc4e73ed05af$6887c1152510f2675ca8a8ec1fe4eef3258def161f1cc4767187c1df16bbb17fd15dcd34633a2eea186612c9213c170e93b617f05aa4f3d3abb364b56ff70c99', 'egypt', 'aswan', 1, '962898'),
  (1141, 'Hamada Hamdy', 'hamada.hamdy1985@gmail.com', 'scrypt:32768:8:1$bba8337b6fb7be66$bcfd1d91b98fe7d95a72b48f49a0b8bcfe272a51bba598c5759cf01f2415dca6d66582de31a207dc957ea5b585577a261e436cec49bc412007cf2e7a1f37d667', 'egypt', 'aswan', 1, '835166'),
  (1142, 'Samar Khalil', 'samar.khalil1992@gmail.com', 'scrypt:32768:8:1$fc37c147c1971144$7e6ad6f41e976d8eb8b4d2e60cebb0b4c98b0068244b8efb3b321efcf46dd58e4c79583a42d054202f71464a06bd2d5c37435f4e3a925228df40831b22459830', 'egypt', 'aswan', 1, '287608'),
  (1143, 'Ragab Lashin', 'ragab.lashin@yahoo.com', 'scrypt:32768:8:1$554be5808859a4cd$c8dbdef288de45b0347e6ccdbabe6e0811740df29aed403c42f1f22ddd3c25036da235d065fe31e8c636af0c2d92d613f29ed6819c656cec2555795420a2bab4', 'egypt', 'aswan', 1, '308320'),
  (1144, 'Heidi Shehata', 'heidi.shehata18@gmail.com', 'scrypt:32768:8:1$0e88429951154e9c$aa644ef2fe4466865709f033a434a474dc263da740f66bd78e32b11b7ca7226f6cb89ee05cce371a49942ccf9abfbe7bd8799c919909a4c49f7c6fb28f2a281c', 'egypt', 'aswan', 1, '049701'),
  (1145, 'Yara Saad', 'yara.saad35@gmail.com', 'scrypt:32768:8:1$5adfc13f98cb0b11$a93b20c3dd748e05a6a56e98c39553d3506b12aec3503cb3a2dd781ecaee8af4e6b380c37fbcbbd500dd7ab3d349e64c8fa417299046cbd7a1509ab21bfdada4', 'egypt', 'aswan', 1, '843866'),
  (1146, 'Omar Anwar', 'omar.anwar52@gmail.com', 'scrypt:32768:8:1$cd40f29d1d172964$aec6f26fd6e61159453019609faba3a1acb614308d9803b82ef3bf7c712dce9054eace7e62a6710d20a57158865bf559ebc0819f4a3897bf86e4df7ba93d0264', 'egypt', 'suez', 1, '984961'),
  (1147, 'Enas Sakr', 'enas.sakr69@hotmail.com', 'scrypt:32768:8:1$48b9fc4a2da0280c$b389239643dabeddfcc974b479eac2743aac5b8acac7df4dfa7b9e2b21f3afc23bb16f54893923e6ee5c856ab3d1920370fb203e77c9c9e245a533594dbbee72', 'egypt', 'suez', 1, '481470'),
  (1148, 'Fatma Elmasry', 'fatma.elmasry588@gmail.com', 'scrypt:32768:8:1$fbfeabea0ee6473a$f3663bf83178a71941e17b43a854b684f1ad79ee14004b128f3069bb814591a9441625b136bf04d6c1be0778248c46b9384ab082b6961d1bd3387e1372e7f34f', 'egypt', 'suez', 1, '396165'),
  (1149, 'Hossam Zahran', 'hossam.zahran619@gmail.com', 'scrypt:32768:8:1$29fd4496af99897a$28d3cb4a6cb4acecc9a4881886648a718d14fc4daa18c88746a2778fb37fde7fd391bd0d950ec6a1eba3322bea45a465b4f3383dd880cbc104e19b7aa512cae9', 'egypt', 'suez', 1, '930832'),
  (1150, 'Mona El-Sayed', 'mona.elsayed650@outlook.com', 'scrypt:32768:8:1$1a6bc461149ee8a4$b06867b196801550778b523047a8d71ba924c8638dceab2926e06ded363ce919b497c6b9ea46bf65374e27016254de0dcfd69ca890af204da0316e91741f8a8f', 'egypt', 'suez', 1, '267520'),
  (1151, 'Mazen Salem', 'mazen.salem1989@gmail.com', 'scrypt:32768:8:1$8c107c11866da159$4c6dc93643387d0b0280966d6dc3d6137b5a1701868b998670213e2a1cc283cbcaf6550c7f5fe75e4fe2dd5b92fc9910e0896b4a955d008ff7daf466fb3f5209', 'egypt', 'suez', 1, '719758'),
  (1152, 'Fady Abdelaziz', 'fady.abdelaziz1996@gmail.com', 'scrypt:32768:8:1$36b95b19661ed501$70d30a3b4a3d18ac7f95c5e9b9bfd107145ace7f2a597a76ef4ecf7adafaba61e8e1c3b1a994987e6276716cca4759b5b898afe96d05267635b60d60e0666cfd', 'egypt', 'port said', 1, '001324'),
  (1153, 'Hadeer Rizk', 'hadeer.rizk@yahoo.com', 'scrypt:32768:8:1$c5e95c33a6a4b7b3$4b81681df73b0200460d17c71ad510e5fdb7dced1a5e225a6c88ca98402ce53ef2299166a82a20868d781d43002753aa6c2cf2fcf0e7f8f9553ea9acc238d2a1', 'egypt', 'port said', 1, '829544'),
  (1154, 'Reda Farag', 'reda.farag98@gmail.com', 'scrypt:32768:8:1$22fe7dacb4f03c9b$dc18e02e696cf70a74a12dfc085171b2068519d5fa1704da9e1709f801d36f28a728da5067bd9435c41ad11cb35a25e41708d53408ffc3e653215a8a509b6609', 'egypt', 'port said', 1, '425503'),
  (1155, 'Bassem Wahba', 'bassem.wahba25@gmail.com', 'scrypt:32768:8:1$85cb4e9a6454e09d$1c69c2774bd9c355fa7c55a928681fec161e07733927cade97b46f2888851bfdade8287ad98eaa4731a2e21a141bc3dd43b51acadec7aecee937ac0ffdbfa0d4', 'egypt', 'port said', 1, '203694'),
  (1156, 'Rasha Taha', 'rasha.taha42@gmail.com', 'scrypt:32768:8:1$8f8b07b5b90bda30$9acb09f484dc5abad98903d097e821428a820006250849fd1a961d16ef19018a117725f848d721963e1779ccc733cb1639e547a2753877180fc1c86379353d11', 'egypt', 'port said', 1, '183819'),
  (1157, 'Zakaria Hefny', 'zakaria.hefny59@hotmail.com', 'scrypt:32768:8:1$811d72f577d9136d$ea2c59bae01d509b7759d90c1f981f3698e4fef99ef9a9809fc1282658089c7e6fad25925336131961ac33125c161192e9a586a82aff0276bb11906d54255e5e', 'egypt', 'port said', 1, '104592'),
  (1158, 'Samuel Awad', 'samuel.awad898@gmail.com', 'scrypt:32768:8:1$59a3926e24337637$43fc2f965374ad4e7c24125585249ec87432d6a60fc4383d996bac9012c4d56ba150c31a8600e8ba0cd9454afd7cf4b05026f5261c4caa3f04c9ea62638998dd', 'egypt', 'port said', 1, '395812'),
  (1159, 'Amany Hosny', 'amany.hosny929@gmail.com', 'scrypt:32768:8:1$bb00256aced91afe$c1eebec43f06a3382d7f6df67b4795ef70bfa6c166c09262c6c92b526c96bb61cd8e03efb18d7b234af5edea31c1ddc263e49b66601849fc1ea811c088ffbf98', 'egypt', 'ismailia', 1, '236221'),
  (1160, 'Hassan Hammad', 'hassan.hammad960@outlook.com', 'scrypt:32768:8:1$043c9562e37ec40a$9590815f65fe78fd87c25304816583c16702cea36cfe75cd763bcdec9aa27459c7219c9f7748c523e572042121cecf53a45430809029c2dab0e23953ec47d0f1', 'egypt', 'ismailia', 1, '415632'),
  (1161, 'Tarek Eltantawy', 'tarek.eltantawy1993@gmail.com', 'scrypt:32768:8:1$671acd9323f3a86c$3da89969a5fe0533e6af547007a6a07863d5ef87e1cdb6efc2ab808606c4ee5c7f16cfc8ba05b181c9b10148c5135f68b90b89125c62e9df74dc804aff17e268', 'egypt', 'ismailia', 1, '965755'),
  (1162, 'Dina Mahmoud', 'dina.mahmoud2000@gmail.com', 'scrypt:32768:8:1$c5912a4319d13c27$f50d98986b8ae900e906e2ec082737fd904f7b7d54694ac86aca02504f9db8bfcacdb13ab7f8255d3b8f5e2e9c7e9aaf989d6194d7ba1dc97824178e9813a429', 'egypt', 'ismailia', 1, '586392'),
  (1163, 'Adel Soliman', 'adel.soliman@yahoo.com', 'scrypt:32768:8:1$671751ee4fd65230$457a51b385e28a689e0307aecb82170a5044b549ef134f451ec120210a25f2520c4c6871289e34372fb170a52a19f395d04050ddc223f51f672da8b7f11e0776', 'egypt', 'ismailia', 1, '905129'),
  (1164, 'Rawan Nasser', 'rawan.nasser88@gmail.com', 'scrypt:32768:8:1$15fbda5237095e7e$e3ebc04c2a82698b62df92c3f51f3db9119c17a6772b7f4d148d8bbc040639b7d512f4d3e1414fdc46247934592980c092b09ac50335ecf9a500ce57bb26e108', 'egypt', 'ismailia', 1, '398112'),
  (1165, 'Habiba Eid', 'habiba.eid15@gmail.com', 'scrypt:32768:8:1$040ec0f436ad393f$668794e50ba2aca52b60d7cd7de47d105c7351fb8676c067b4cf121839f2ef04563e2414265b8ea8e30eb88b5e17f6c4483f6a5874c06c90d0917f6714e84af7', 'egypt', 'ismailia', 1, '933127'),
  (1166, 'Ziad Okasha', 'ziad.okasha32@gmail.com', 'scrypt:32768:8:1$2c485069d750316c$80cb810c8e140742063dbd7075b6d7eb81d3cc85a4a46f28995b249a3b20e79525706ab2a8a309ee04ef5ae928a66cae56b0b5b252e433400635f9e3db1fdd54', 'egypt', 'damietta', 1, '818968'),
  (1167, 'Hagar Radwan', 'hagar.radwan49@hotmail.com', 'scrypt:32768:8:1$f57e5e4412294766$dda8db5324c41439b1eff22c096ca93df2a4f37ee50081ce76ed64589bab3d9c49a78e6b566c07a09b92fc7a688d11e4266af6a0fa11324cac6fad39a36d01f6', 'egypt', 'damietta', 1, '894932'),
  (1168, 'Marwa Zayed', 'marwa.zayed308@gmail.com', 'scrypt:32768:8:1$ce20561859ebc5a1$82ba6a2e4b237b8c1965110a5227ffd5774c141d8e2cbe0e59a173dd16ab1bc803040ed6d3bc762efdd15dc171713cdbff1ce7e6d83b472ac2be0eadc96ad942', 'egypt', 'damietta', 1, '897090'),
  (1169, 'Ashraf Shawky', 'ashraf.shawky339@gmail.com', 'scrypt:32768:8:1$c8f961ededed0a1c$e96a1dde7bea1a78962d4696b0b0dcb8a6179bc5bd719e58a1a97dd98a4f4e65f6a1db646c0c8cd19963c89778f755ca9ccea653d0fda1cc8505b4e425bc5f6f', 'egypt', 'damietta', 1, '521647'),
  (1170, 'Soha Fahmy', 'soha.fahmy370@outlook.com', 'scrypt:32768:8:1$ca859d10a7d2020e$37d357941c26565b4fb6aaaebb94786cf4448d1616c4c6aa68f4ff8c1762475394eda1cb69758ec65d670cba6fbc522bccd022e0c7f01ab43041c7046b3a0729', 'egypt', 'damietta', 1, '044075'),
  (1171, 'Mounir Zidan', 'mounir.zidan1997@gmail.com', 'scrypt:32768:8:1$975e36f2895156f0$b80b42a9665006e957e31564177153852cec212cd77162edcd6b84b73a0e5558eff46ab34d03362d3a7abad1f1ffcf67618596201afb22d25de87ebc65c14c3b', 'egypt', 'kafr el sheikh', 1, '878998'),
  (1172, 'Ahmed Elshafei', 'ahmed.elshafei2004@gmail.com', 'scrypt:32768:8:1$24b079d7c8120699$592bcc8f3aa818d5a9f1a04aa1d0528dfe64b1f834c920b70574ab7a0c8e88409fb375022535bd5d8e219cb2f6f0a06777d37942904010b5ae6f5c724a5251cf', 'egypt', 'kafr el sheikh', 1, '229342'),
  (1173, 'Salma Abdelhady', 'salma.abdelhady@yahoo.com', 'scrypt:32768:8:1$5752d8d5a2f027d0$75a75c1d5fa2c520e6de086448ab8edf5c6dcfc2d1f36602a5ebad542d9c0a33a7c3c68ce2443c50277af551099379e0f42c520da501ed7b127d3261011e42cf', 'egypt', 'kafr el sheikh', 1, '764276'),
  (1174, 'Ibrahim Ibrahim', 'ibrahim.ibrahim78@gmail.com', 'scrypt:32768:8:1$862d9bcf3d3e8e35$55edf0b00bb2eaebd4a2bb290b29939a83838beb412e80ee0297becdca2c9b1f5ea8db4150d3a82347f546b892615a357f32254db247df872f7e0c5851e6a3ad', 'egypt', 'kafr el sheikh', 1, '563481'),
  (1175, 'Sherif Darwish', 'sherif.darwish95@gmail.com', 'scrypt:32768:8:1$52c9e875c9ef4af1$22e8b329f78ca0b536f259f58cbc87687afe4b4d64a5664ac614fe2b881ef93fe1ab4061ad68cfc18b5f75c2590dd73fabbd83f2716312721fde1085dbe36d0e', 'egypt', 'kafr el sheikh', 1, '763074'),
  (1176, 'Reem Badawy', 'reem.badawy22@gmail.com', 'scrypt:32768:8:1$1efcb1da108b1fd4$3fd08148a815ff0f377f56753ab5346167547fd1c04af6ba21692862407f129f84fade36dd77f276830bac61b827e6b110307ea4d190278adb2a5c100763ae71', 'egypt', 'faiyum', 1, '011028'),
  (1177, 'Magdy Youssef', 'magdy.youssef39@hotmail.com', 'scrypt:32768:8:1$cc33d3487219049e$b32791adff5b9302b69a4ca57f3e178c4cd33b14d2bf957ff72379a29c5da865fbcc4a76c3b8d8850441b72f055a3f7eb9344b62adfe87c4feb92bfc0804b97d', 'egypt', 'faiyum', 1, '069292'),
  (1178, 'Yehia Fawzy', 'yehia.fawzy618@gmail.com', 'scrypt:32768:8:1$06035739eac78306$93b2f287992ad60d48d8f7f6cb66636a943736c435180a330458d3a67f78bd6ba849510988bd0313438cb72e39654a90aa0d9f9c59170070afff376eda3c52b4', 'egypt', 'faiyum', 1, '018276'),
  (1179, 'Sondos Kandil', 'sondos.kandil649@gmail.com', 'scrypt:32768:8:1$10885d641e8e53cf$c130efb99076b53ac6cf46ac6028832eaff3e51ede8585a3b539b867137beee26865b64ff0dd1747e119225169327d6aece1aeaf0fbe5d95881cce709dbf6e29', 'egypt', 'faiyum', 1, '732536'),
  (1180, 'Osama Awad', 'osama.awad680@outlook.com', 'scrypt:32768:8:1$2a8cc960f6d333a4$ec59715623a6de8aca28cf5d8a54e2cb3eeb0bd633be7bb66741c6d8b3f2bbe72e5d0f92b10d85ed504cefe7044f0844ab6c43054ae357c24f8f1a1fa79b3702', 'egypt', 'faiyum', 1, '281386'),
  (1181, 'Hany Ghali', 'hany.ghali2001@gmail.com', 'scrypt:32768:8:1$09961214de1cb42f$27383832306935fa31774e6887c33427ba0116856196c9343eb9c2fcaab67826bc616358d6b7264bd44d5175ef5806e8a12b44007bc3fc9e8eef17d0ac56429b', 'egypt', 'beni suef', 1, '558266'),
  (1182, 'Laila Elshazly', 'laila.elshazly1986@gmail.com', 'scrypt:32768:8:1$8854db7dc77e2770$99f6483e8e9a5c1840a2d7fb27a662457042d398d4a9adee4b038987a699ca4f4671067bc6a5e7af5808e3aa48ce862c72e469d4ef00cba7e45005c614935b0f', 'egypt', 'beni suef', 1, '454360'),
  (1183, 'Ehab Gouda', 'ehab.gouda@yahoo.com', 'scrypt:32768:8:1$4761afad03f86729$1fa584eef5a4ec919f2dec30f99e041621bbd828a63ba600f9c68423740d921f9604bc82e20307b162e774ac5e1343efb93878e2845423d762bfdd4a1c6d87af', 'egypt', 'beni suef', 1, '446913'),
  (1184, 'Radwa Ragheb', 'radwa.ragheb68@gmail.com', 'scrypt:32768:8:1$c131595d166b9bfc$c6acc6db516d745775a079d00a1d09c44fcbd2d6991b8dc7e47a75583cd2a3bfa2d9ce68cf34a9d53b93a730e3e97d9d60b64b5f863bb608968f390d5bfb1b9d', 'egypt', 'beni suef', 1, '454459'),
  (1185, 'Nour Abdelfattah', 'nour.abdelfattah85@gmail.com', 'scrypt:32768:8:1$c2b4737bdd75f6e0$2996ebfd836cf802d46b1b37f588d8bcc0d39d805a7d0f86ec7fd65d0d6611561a2dbcab6db3915e074e929a9c0ea9216812799e48c05b57ba05d829ce087a4e', 'egypt', 'red sea', 1, '883096'),
  (1186, 'Mostafa Mansour', 'mostafa.mansour12@gmail.com', 'scrypt:32768:8:1$b65798fb7f6f0ac1$5e5ac57bb08bfea4a1a23c4a885044d0f4b0fe109b2db9fafa47a211be45d2d0212d8655fbf7fcca102ea5b898acc050609d986781bda11416418490f2406f66', 'egypt', 'red sea', 1, '341212'),
  (1187, 'Yasmin El-Gendy', 'yasmin.elgendy29@hotmail.com', 'scrypt:32768:8:1$8ef9b787613bd57a$36624cfc4f9ef3606d4c63adc73b1cce8982cb45480939d2cbdacd926177b03d9e385fd20ff7fa5cb8bd5c28ca0c57d7c0de701ea7ba574d8ace18b8778cda87', 'egypt', 'red sea', 1, '042141'),
  (1188, 'Mai Sabry', 'mai.sabry928@gmail.com', 'scrypt:32768:8:1$16644af0eace9303$55a59a646721a3863864cf5f9c2130b175b2bb830583c0fdde707df5a508536ffc661744fca21a05ca9fcfd7e5fa01000ef66c03dc6febf80c40f864a82b9531', 'egypt', 'red sea', 1, '316419'),
  (1189, 'Ramy Aboelnaga', 'ramy.aboelnaga959@gmail.com', 'scrypt:32768:8:1$7399d5a298386237$4fb84b8b2858e68f7c8051b6867b07a70ff2e5e18e4331dc172e23004a715fb5b50c19c39565d5f164f641b173004af8d3f176e47e5d0069e4aab881dd50a176', 'egypt', 'red sea', 1, '517014'),
  (1190, 'Shaimaa Mounir', 'shaimaa.mounir990@outlook.com', 'scrypt:32768:8:1$ed29369fdd406ba2$a46fe6eb9725f26678a86503e11f23bd0c65ca0860074a04fe44c343a5be28a9f0d7141f8919cdb6e15a78631ca9f5f586dbd16350c22843793c73d3756133ae', 'egypt', 'red sea', 1, '489154'),
  (1191, 'Hazem Metwally', 'hazem.metwally2005@gmail.com', 'scrypt:32768:8:1$b9b582d4ef28e05e$27ce12863b3bfb3c94c49b0b76b9684fc201d2c6c3521d6fcf5095ca63ee79c652b1c5e7ed2d1e385c6aabc7634a8a72e56f15cda4e1cac3ee7ea7500842f175', 'egypt', 'red sea', 1, '719320'),
  (1192, 'Eslam Ashour', 'eslam.ashour1990@gmail.com', 'scrypt:32768:8:1$a72c8ad60f6b9661$4f09c48e16f10b46c3ec14cb63b5436d1e7efd74e154b61fc37a84edcecfa38c0edf32ee5799052fe1c9f5f01b58bf1f5ceffd18dfcdff40fc1926a65d92968a', 'egypt', 'red sea', 1, '186253'),
  (1193, 'Gihan Rashad', 'gihan.rashad@yahoo.com', 'scrypt:32768:8:1$249bf123b15b704a$4ed4118e8eaffe94313018da852a09758c6c935248429cf1793c76d6e47302a6acaee19f1e1ff7a3edd848fa3e7c2225b98fc1a393d63d9d6cc8eb6189638275', 'egypt', 'red sea', 1, '014988'),
  (1194, 'Salah Elbanna', 'salah.elbanna58@gmail.com', 'scrypt:32768:8:1$c7c6d71379c1361d$1fb5de5fc657c783f1befc17db55403e53b0fde4ca0f56898279e46ae8c78b7346ff142f2a58c3c7d00982c87f1f453da45dcf976678e5a8f2e2aaa054112bf1', 'egypt', 'south sinai', 1, '082493'),
  (1195, 'Anas Selim', 'anas.selim75@gmail.com', 'scrypt:32768:8:1$9e5dd33a0f87e44b$2e97364ebc6790f852ca24c52cf9df3bb3cd0179bce12dbb5c4433f3fc9dc2615acd773468c5fc24b796c816d329e553ad543c3b57798c9008a8c0d99591cef0', 'egypt', 'south sinai', 1, '109398'),
  (1196, 'Reham Hanafy', 'reham.hanafy92@gmail.com', 'scrypt:32768:8:1$aabe31d8a48279cc$993ee396d44a7e7ce11b51fd6f5b56ee56ca9ecc7e7a8678bdd284238e45784cd9528973cddcbb78477e29887af55576aad9c2ef0d0a860bf4a56878888e38fa', 'egypt', 'south sinai', 1, '717554'),
  (1197, 'Labib Hassan', 'labib.hassan19@hotmail.com', 'scrypt:32768:8:1$6c99f4ae765be137$73b84de77f4be3da4eabacbeacd14dfe8be34b40f56b8d4695bf7e76a580d562fb39578d8f1bbfe533e99880d5ab9d84828b7f0fb096c52fb808b6116163c32f', 'egypt', 'south sinai', 1, '142985'),
  (1198, 'Atef Gaber', 'atef.gaber338@gmail.com', 'scrypt:32768:8:1$e9fa98d532b85203$c05170dc1df575a3d69be57f7bfe5749e4152e9a003a544156bdcdea7146b932e039d5fbc60659cf2e21702f8b373ec591fe433328b15cc382ab2f3fde0d1c38', 'egypt', 'south sinai', 1, '250651'),
  (1199, 'Amira Zaki', 'amira.zaki369@gmail.com', 'scrypt:32768:8:1$4d9c2f6f4ab4e0b9$19d9e2702bcff637ae035accb97ae00f8816f30e9124f4c971567358771ae35282f88c81ea2854d536c0927beba50e1b0c8009b65e99f59853acb006fea378c4', 'egypt', 'north sinai', 1, '407058'),
  (1200, 'Karim Mekawy', 'karim.mekawy400@outlook.com', 'scrypt:32768:8:1$c24631d6a273f376$e0c64f2b0c8a7637978c3f24cb14791b182ed242d8231ad95bb56173d193d4ab58b3f1fd2bfd7df5e03486f76e2b73268667ece7fa85d2320afa0c084faded26', 'egypt', 'matrouh', 1, '776781'),
  (1201, 'Khaled Ghoneim', 'khaled.ghoneim1987@gmail.com', 'scrypt:32768:8:1$29922be92d9c4bd0$1723af6bbfa81f5ce68ceef03a465ce46d545b49ee695a84875ab033960315463b59f9ceb95afe3669718853a93b780e6e5816014c03dec6f40c1a3d02eb8e37', 'egypt', 'matrouh', 1, '045884'),
  (1202, 'Doaa Fekry', 'doaa.fekry1994@gmail.com', 'scrypt:32768:8:1$96cd7aab19cde082$785830e6580e2895c9a4b2790e7374709e2ab0c713ffaa3fa369d7d4e4789f521d8ce32c996154c70692f29e2b604f9e0efc61599428d2293a130aeb798c875c', 'egypt', 'matrouh', 1, '286204'),
  (1203, 'Ayman Helal', 'ayman.helal@yahoo.com', 'scrypt:32768:8:1$0f36f623e63e8ed2$84f75a66581a1472fb97803b74584e01de0ba7668a0f060b45119787518a15818ad2b1e1179f207853d607d29671b0a5cfb65718b2f83755e85739ba9ce9dded', 'egypt', 'new valley', 1, '352503');

  UPDATE users 
  SET created_at = datetime(
      '2000-01-01 00:00:00', 
      '+' || (ABS(RANDOM()) % (strftime('%s', 'now') - strftime('%s', '2000-01-01 00:00:00'))) || ' seconds', 
      '+3 hours'
  );

-- ==================== SmartLine Seed: Managers (1-180) ====================
  INSERT INTO managers (user_id) VALUES
  (101),
  (236),
  (103),
  (244),
  (118),
  (96),
  (203),
  (116),
  (127),
  (15),
  (168),
  (27),
  (239),
  (111),
  (86),
  (98),
  (115),
  (178),
  (240),
  (16),
  (190),
  (3),
  (243),
  (131),
  (220),
  (218),
  (59),
  (214),
  (183),
  (211),
  (65),
  (133),
  (113),
  (2),
  (152),
  (231),
  (51),
  (234),
  (155),
  (147),
  (7),
  (39),
  (148),
  (94),
  (49),
  (76),
  (136),
  (38),
  (104),
  (208),
  (205),
  (114),
  (75),
  (134),
  (174),
  (24),
  (140),
  (210),
  (126),
  (91),
  (128),
  (242),
  (106),
  (125),
  (195),
  (77),
  (172),
  (232),
  (217),
  (237),
  (19),
  (141),
  (90),
  (151),
  (173),
  (48),
  (99),
  (120),
  (229),
  (158),
  (202),
  (245),
  (215),
  (207),
  (55),
  (165),
  (186),
  (105),
  (18),
  (124),
  (23),
  (54),
  (181),
  (247),
  (159),
  (1),
  (82),
  (40),
  (160),
  (197),
  (108),
  (74),
  (161),
  (246),
  (41),
  (119),
  (192),
  (135),
  (224),
  (199),
  (110),
  (34),
  (84),
  (32),
  (154),
  (50),
  (226),
  (117),
  (153),
  (189),
  -- Egypt
  (904), (905), (906), (907), (908), (909), (910), (911), (967), (968),
  (912),(913),(914),(915),(916),(917),(918),(919),(920),(921),(922),(923),
  (969),(970),(971),(972),(973),
  (1007),(1008),(1009),(1010),(1011),(1012),
  (1048),(1049),(1070),(1071),(1082),(1083),(1092),(1093),(1106),(1107),(1119),(1120),(1113),(1114),(1125),(1126),(1159),(1160),
  (1152),(1146),(1147),(1185),(1186),(1200),(1099),(1129),(1138);

-- ==================== SmartLine Seed: Companies (1-180) ====================
  INSERT INTO companies (manager_id, name, category, country, city, opening_time, closing_time, address, phone, description) VALUES
  (1, 'Delta Computer Institute', 'edu', 'egypt', 'giza', '08:00', '20:00', '32 Tahrir Street, Giza', '+20 10 2535 7973', 'Computer skills and IT courses with hands-on lab sessions.'),
  (2, 'Al-Hayat Specialized Clinic', 'clinics', 'egypt', 'cairo', '16:00', '23:00', '82 El-Merghany Street, South Sinai', '+20 15 7343 7218', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (3, 'Sahara Camping & Tours', 'other', 'egypt', 'giza', '10:00', '22:00', '53 Al-Nasr Street, Giza', '+20 15 5999 4532', 'Guided tours and trip packages for individuals and groups.'),
  (4, 'El-Tahrir Diagnostic Center', 'clinics', 'egypt', 'suez', '09:00', '21:00', '44 El-Thawra Street, Suez', '+20 11 1510 9552', 'Diagnostic tests, lab work and clinic consultations with quick results.'),
  (5, 'Cairo Heritage Bank - Kafr El Sheikh Branch', 'banks', 'egypt', 'kafr el sheikh', '09:00', '17:00', '110 El-Merghany Street, Kafr El Sheikh', '+20 11 5324 9035', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (6, 'Gharbia Tax Authority Office', 'government_offices', 'egypt', 'gharbia', '08:00', '14:00', '99 Al-Geish Street, Gharbia', '+20 11 7871 0071', 'Official services center. Bring a valid ID and the required documents.'),
  (7, 'Qena Tax Authority Office', 'government_offices', 'egypt', 'qena', '07:30', '13:30', '68 Al-Geish Street, Qena', '+20 11 5396 4824', 'Public service counter handling requests, certificates and renewals.'),
  (8, 'Cleopatra Language School', 'edu', 'egypt', 'kafr el sheikh', '14:00', '22:00', '90 El-Horreya Avenue, Kafr El Sheikh', '+20 12 4370 7577', 'Language courses for kids and adults with placement tests and small classes.'),
  (9, 'Delta Telecom Store - Cairo', 'telecom', 'egypt', 'cairo', '00:00', '00:00', '65 Al-Gomhoria Street, cairo', '+20 11 0872 4081', 'Handles new lines, plan upgrades, recharge and router support.'),
  (10, 'Lotus Connect Store - Aswan', 'telecom', 'egypt', 'aswan', '09:00', '23:00', '31 El-Merghany Street, Aswan', '+20 11 9506 5941', 'Handles new lines, plan upgrades, recharge and router support.'),
  (11, 'Falcon Security Services', 'other', 'egypt', 'cairo', '00:00', '00:00', '5 El-Thawra Street, New Valley', '+20 46 7524796', 'Security guard and alarm services for businesses.'),
  (12, 'Cairo Heritage Bank - Asyut Branch', 'banks', 'egypt', 'cairo', '09:00', '16:00', '136 Salah Salem Road, Asyut', '+20 97 5649003', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (13, 'South Sinai Civil Registry Office', 'government_offices', 'egypt', 'south sinai', '08:00', '14:00', '53 El-Galaa Street, South Sinai', '+20 12 2749 1950', 'Public service counter handling requests, certificates and renewals.'),
  (14, 'Cleopatra Language School - Ismailia', 'edu', 'egypt', 'ismailia', '08:00', '20:00', '65 Al-Geish Street, Ismailia', '+20 82 4607739', 'Language courses for kids and adults with placement tests and small classes.'),
  (15, 'Al-Salamah Pediatrics Center', 'clinics', 'egypt', 'cairo', '10:00', '22:00', '121 Al-Nasr Street, Faiyum', '+20 12 0036 5362', 'Child healthcare, vaccinations and check-ups in a child-friendly setting.'),
  (16, 'Horizon Telecom Store - Giza', 'telecom', 'egypt', 'giza', '09:00', '23:00', '57 26th of July Street, Giza', '+20 12 0886 4112', 'Handles new lines, plan upgrades, recharge and router support.'),
  (17, 'Horizon Telecom Store - Ismailia', 'telecom', 'egypt', 'ismailia', '09:00', '21:00', '139 Sudan Street, Ismailia', '19605', 'Handles new lines, plan upgrades, recharge and router support.'),
  (18, 'Habiba Tailoring Atelier', 'other', 'egypt', 'north sinai', '10:00', '22:00', '37 Port Said Street, North Sinai', '+20 57 7207833', 'Tailoring, alterations and made-to-measure clothing.'),
  (19, 'South Sinai Passport & Immigration Office', 'government_offices', 'egypt', 'south sinai', '08:00', '14:00', '29 Tahrir Street, South Sinai', '19238', 'Government service desk for permits, records and citizen inquiries.'),
  (20, 'Koshary El-Tahrir Restaurant', 'other', 'egypt', 'aswan', '10:00', '22:00', '125 Tahrir Street, Aswan', '+20 15 7660 4272', 'Dine-in and takeaway meals prepared fresh daily.'),
  (21, 'Qalyubia Citizens Service Center', 'government_offices', 'egypt', 'qalyubia', NULL, NULL, '21 El-Merghany Street, Qalyubia', '+20 65 5613065', 'Official services center. Bring a valid ID and the required documents.'),
  (22, 'Falcon Security Services - Alexandria', 'other', 'egypt', 'alexandria', '10:00', '22:00', '118 26th of July Street, Alexandria', '+20 55 8788381', 'Security guard and alarm services for businesses.'),
  (23, 'Sphinx Mobile Customer Care - Suez', 'telecom', 'egypt', 'suez', '10:00', '22:00', '76 Omar Ibn Al-Khattab Street, Suez', '19539', 'Retail store and service desk for mobile, internet and device repairs.'),
  (24, 'Pharaoh Gym & Fitness', 'other', 'egypt', 'luxor', '07:00', '23:00', '113 Al-Geish Street, Luxor', '+20 15 3133 3540', 'Gym with free weights, cardio machines and group classes.'),
  (25, 'Thebes English Center', 'edu', 'egypt', 'sharqia', '08:00', '17:00', '121 Port Said Street, Sharqia', '+20 15 8448 6372', 'English courses for kids and adults with placement tests and small classes.'),
  (26, 'Suez Canal Development Bank - Sharqia Branch', 'banks', 'egypt', 'sharqia', '09:00', '16:00', '15 Tahrir Street, Sharqia', '+20 11 3390 4194', 'Full-service branch for accounts, cards, loans and money transfers.'),
  (27, 'Misr Al-Gadida Bank - Cairo Branch', 'banks', 'egypt', 'cairo', '08:00', '14:00', '132 Port Said Street, Cairo', '+20 15 4328 2049', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (28, 'Suez Canal Development Bank - Red Sea Branch', 'banks', 'egypt', 'red sea', '09:00', '16:00', '21 Tahrir Street, Red Sea', '+20 11 6649 7150', 'Branch offering account opening, currency services and customer support.'),
  (29, 'Nefertari Girls'' School', 'edu', 'egypt', 'port said', '08:00', '17:00', '11 26th of July Street, Port Said', '+20 10 9706 4459', 'School enrollment, tours and parent consultations at the front desk.'),
  (30, 'Al-Nour Language Institute', 'edu', 'egypt', 'red sea', '08:00', '17:00', '61 Sudan Street, Red Sea', '+20 10 6833 7425', 'Language courses for kids and adults with placement tests and small classes.'),
  (31, 'Pharaoh National Bank - Dakahlia Branch', 'banks', 'egypt', 'dakahlia', '09:00', '17:00', '129 El-Thawra Street, Dakahlia', '19051', 'Counter and ATM services with a dedicated desk for business clients.'),
  (32, 'Nile Care Polyclinic', 'clinics', 'egypt', 'luxor', '09:00', '21:00', '13 El-Thawra Street, Luxor', '+20 15 6129 1726', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (33, 'Al-Ahram Savings Bank - Ismailia Branch', 'banks', 'egypt', 'ismailia', '08:30', '15:00', '81 Omar Ibn Al-Khattab Street, Ismailia', '+20 2 5290353', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (34, 'Al-Amana Auto Service', 'other', 'egypt', 'alexandria', '10:00', '22:00', '97 Al-Geish Street, Alexandria', '+20 15 2682 7759', 'Car maintenance, oil changes and diagnostics while you wait.'),
  (35, 'Pharaoh Gym & Fitness - Monufia', 'other', 'egypt', 'monufia', '09:00', '21:00', '17 26th of July Street, Monufia', '+20 11 9852 4531', 'Gym with free weights, cardio machines and group classes.'),
  (36, 'Delta Telecom Customer Care - Sohag', 'telecom', 'egypt', 'sohag', '09:00', '23:00', '105 El-Galaa Street, Sohag', '+20 10 6560 1973', 'Customer care for bill payment, line activation and technical help.'),
  (37, 'Sphinx Dental Clinic', 'clinics', 'egypt', 'cairo', '09:00', '21:00', '17 Salah Salem Road, Cairo', '+20 82 9538796', 'Dental clinic for check-ups, fillings, cleaning and orthodontics by appointment.'),
  (38, 'Al-Mahrousa Event Planning', 'other', 'egypt', 'south sinai', NULL, NULL, '2 Sudan Street, South Sinai', '+20 11 2623 3735', 'Event planning and decoration for weddings and parties.'),
  (39, 'Misr Al-Gadida Bank - Monufia Branch', 'banks', 'egypt', 'monufia', '09:00', '17:00', '11 Salah Salem Road, Monufia', '+20 15 3076 6415', 'Branch offering account opening, currency services and customer support.'),
  (40, 'Delta Auto Parts', 'other', 'egypt', 'minya', '09:00', '21:00', '96 Omar Ibn Al-Khattab Street, Minya', '+20 48 1414996', 'Spare parts and accessories for most car makes.'),
  (41, 'Nile Care Polyclinic - Alexandria', 'clinics', 'egypt', 'alexandria', '10:00', '22:00', '116 Salah Salem Road, Alexandria', '+20 15 4210 0313', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (42, 'Dar Al-Hekma Clinic', 'clinics', 'egypt', 'beheira', '08:00', '16:00', '3 El-Galaa Street, Beheira', '+20 12 9725 3856', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (43, 'Cleopatra Women''s Health Center', 'clinics', 'egypt', 'minya', '09:00', '21:00', '29 Corniche El-Nile, Minya', '+20 62 7005912', 'Women''s health, antenatal care and gynecology consultations with female doctors.'),
  (44, 'Al-Wafaa Real Estate Office', 'other', 'egypt', 'gharbia', '07:00', '23:00', '92 Port Said Street, Gharbia', '+20 10 0300 7543', 'Property listings, rentals and sales consultations.'),
  (45, 'El-Salam Pharmacy', 'other', 'egypt', 'beni suef', '10:00', '22:00', '63 26th of July Street, Beni Suef', '+20 12 3816 1523', 'Prescriptions, over-the-counter medicine and health products.'),
  (46, 'Falcon Security Services - Damietta', 'other', 'egypt', 'damietta', NULL, NULL, '78 Sudan Street, Damietta', '+20 48 3979978', 'Security guard and alarm services for businesses.'),
  (47, 'Al-Noor Eye Clinic', 'clinics', 'egypt', 'matrouh', '16:00', '23:00', '12 Port Said Street, Matrouh', '+20 10 2928 9605', 'Eye exams, vision correction and treatment of common eye conditions.'),
  (48, 'Beheira Social Insurance Office', 'government_offices', 'egypt', 'beheira', '09:00', '15:00', '126 El-Galaa Street, Beheira', '+20 11 2898 4670', 'Official services center. Bring a valid ID and the required documents.'),
  (49, 'Cleopatra Women''s Health Center - Giza', 'clinics', 'egypt', 'giza', '10:00', '22:00', '57 Omar Ibn Al-Khattab Street, Giza', '+20 15 6141 3766', 'Women''s health, antenatal care and gynecology consultations with female doctors.'),
  (50, 'Abu Simbel Neurology Center', 'clinics', 'egypt', 'red sea', '09:00', '21:00', '98 Tahrir Street, Red Sea', '+20 95 8815059', 'Neurology consultations, nerve studies and ongoing patient follow-up.'),
  (51, 'Cairo Heritage Bank - Qena Branch', 'banks', 'egypt', 'qena', '08:30', '15:00', '122 Sudan Street, Qena', '+20 65 2066135', 'Branch offering account opening, currency services and customer support.'),
  (52, 'Ismailia Passport & Immigration Office', 'government_offices', 'egypt', 'ismailia', '08:30', '15:30', '129 Tahrir Street, Ismailia', '19051', 'Government service desk for permits, records and citizen inquiries.'),
  (53, 'Al-Wafaa Medical Complex', 'clinics', 'egypt', 'cairo', '09:00', '21:00', '12 Al-Geish Street, Damietta', '+20 15 7623 0090', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (54, 'Matrouh Real Estate Registry Office', 'government_offices', 'egypt', 'matrouh', '08:30', '15:30', '106 Sudan Street, Matrouh', '19054', 'Citizen services office for applications, renewals and official documents.'),
  (55, 'NileLink Customer Care - North Sinai', 'telecom', 'egypt', 'north sinai', '09:00', '21:00', '88 El-Merghany Street, North Sinai', '+20 12 1105 9944', 'Retail store and service desk for mobile, internet and device repairs.'),
  (56, 'Al-Mahrousa Event Planning - Asyut', 'other', 'egypt', 'asyut', '10:00', '22:00', '45 El-Thawra Street, Asyut', '+20 65 1506454', 'Event planning and decoration for weddings and parties.'),
  (57, 'Nile Travel & Tourism', 'other', 'egypt', 'matrouh', '07:00', '23:00', '47 Tahrir Street, Matrouh', '+20 57 1392865', 'Flight tickets, hotel bookings and tour packages.'),
  (58, 'Misr Al-Gadida Bank - Red Sea Branch', 'banks', 'egypt', 'red sea', '09:00', '17:00', '8 El-Horreya Avenue, Red Sea', '+20 11 8703 9509', 'Full-service branch for accounts, cards, loans and money transfers.'),
  (59, 'Misr Al-Gadida Bank - Luxor Branch', 'banks', 'egypt', 'luxor', '09:00', '16:00', '46 Corniche El-Nile, Luxor', '+20 66 7382309', 'Branch offering account opening, currency services and customer support.'),
  (60, 'Delta Union Bank - Gharbia Branch', 'banks', 'egypt', 'gharbia', '08:30', '15:00', '7 Salah Salem Road, Gharbia', '19930', 'Counter and ATM services with a dedicated desk for business clients.'),
  (61, 'Pyramids Math Academy', 'edu', 'egypt', 'luxor', '08:00', '20:00', '46 Al-Geish Street, Luxor', '+20 40 9005730', 'Math and science tutoring with small groups and exam preparation.'),
  (62, 'Al-Rahma Family Clinic', 'clinics', 'egypt', 'suez', '09:00', '21:00', '69 El-Thawra Street, Suez', '+20 65 5077293', 'Family medicine for all ages: consultations, check-ups and follow-up visits.'),
  (63, 'El-Tahrir Diagnostic Center - Giza', 'clinics', 'egypt', 'giza', '16:00', '23:00', '129 El-Thawra Street, Giza', '+20 11 0590 3273', 'Diagnostic tests, lab work and clinic consultations with quick results.'),
  (64, 'Al-Salamah Pediatrics Center - Luxor', 'clinics', 'egypt', 'luxor', '08:00', '16:00', '130 Omar Ibn Al-Khattab Street, Luxor', '+20 15 2020 3704', 'Child healthcare, vaccinations and check-ups in a child-friendly setting.'),
  (65, 'Bright Horizon Academy', 'edu', 'egypt', 'qalyubia', '09:00', '18:00', '41 Al-Nasr Street, Qalyubia', '+20 12 2522 7699', 'Courses and tutoring with certified teachers and small class sizes.'),
  (66, 'Isis Dermatology Clinic', 'clinics', 'egypt', 'damietta', '16:00', '23:00', '104 Al-Nasr Street, Damietta', '+20 11 0082 4431', 'Skin, hair and laser treatments with specialist dermatologists.'),
  (67, 'Al-Nour Language Institute - North Sinai', 'edu', 'egypt', 'north sinai', '08:00', '17:00', '131 Al-Nasr Street, North Sinai', '+20 64 1937002', 'Language courses for kids and adults with placement tests and small classes.'),
  (68, 'Delta Auto Parts - Sohag', 'other', 'egypt', 'sohag', NULL, NULL, '38 Al-Nasr Street, Sohag', '+20 11 8053 7278', 'Spare parts and accessories for most car makes.'),
  (69, 'Koshary El-Tahrir Restaurant - Sharqia', 'other', 'egypt', 'sharqia', '00:00', '00:00', '68 El-Galaa Street, Sharqia', '+20 11 9996 0626', 'Dine-in and takeaway meals prepared fresh daily.'),
  (70, 'Imhotep Science Academy', 'edu', 'egypt', 'south sinai', '08:00', '17:00', '3 26th of July Street, South Sinai', '+20 11 0121 2434', 'Science club and tutoring with hands-on experiments.'),
  (71, 'Future Leaders School', 'edu', 'egypt', 'aswan', '08:00', '17:00', '13 Corniche El-Nile, Aswan', '+20 15 8792 1073', 'School enrollment, tours and parent consultations at the front desk.'),
  (72, 'Al-Azhar Quran Learning Center', 'edu', 'egypt', 'matrouh', NULL, NULL, '84 Al-Nasr Street, Matrouh', '+20 65 4849856', 'Quran memorization and recitation classes for all ages.'),
  (73, 'Al-Hayat Specialized Clinic - Gharbia', 'clinics', 'egypt', 'gharbia', '09:00', '21:00', '70 Sudan Street, Gharbia', '+20 15 0906 7349', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (74, 'Nile International School', 'edu', 'egypt', 'minya', '09:00', '18:00', '62 Al-Nasr Street, Minya', '+20 11 8707 3038', 'School enrollment, tours and parent consultations at the front desk.'),
  (75, 'Alpha Tutoring Center', 'edu', 'egypt', 'north sinai', NULL, NULL, '78 El-Horreya Avenue, North Sinai', '+20 65 8440792', 'Private tutoring and curriculum support with small groups.'),
  (76, 'Dr. Hany Fawzy Clinic', 'clinics', 'egypt', 'beni suef', '10:00', '22:00', '108 Port Said Street, Beni Suef', '+20 64 7450659', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (77, 'Nefertari Girls'' School - Giza', 'edu', 'egypt', 'giza', '08:00', '17:00', '96 26th of July Street, Giza', '+20 62 8116364', 'School enrollment, tours and parent consultations at the front desk.'),
  (78, 'El-Tahrir Diagnostic Center - Kafr El Sheikh', 'clinics', 'egypt', 'kafr el sheikh', '10:00', '22:00', '79 Omar Ibn Al-Khattab Street, Kafr El Sheikh', '+20 10 5722 2757', 'Diagnostic tests, lab work and clinic consultations with quick results.'),
  (79, 'Alpha Tutoring Center - Sohag', 'edu', 'egypt', 'sohag', '08:00', '20:00', '9 Al-Geish Street, Sohag', '+20 15 2376 9350', 'Private tutoring and curriculum support with small groups.'),
  (80, 'Monufia Real Estate Registry Office', 'government_offices', 'egypt', 'monufia', '08:00', '14:00', '107 Al-Geish Street, Monufia', '+20 11 8529 5167', 'Official services center. Bring a valid ID and the required documents.'),
  (81, 'Al-Fanar Cafe', 'other', 'egypt', 'qena', '10:00', '22:00', '129 Port Said Street, Qena', '+20 11 7940 3123', 'Coffee, tea and light bites in a relaxed setting.'),
  (82, 'Al-Wafaa Real Estate Office - Suez', 'other', 'egypt', 'suez', '07:00', '23:00', '59 El-Merghany Street, Suez', '+20 50 9303337', 'Property listings, rentals and sales consultations.'),
  (83, 'Sharqia Tax Authority Office', 'government_offices', 'egypt', 'sharqia', '08:00', '14:00', '130 El-Thawra Street, Sharqia', '19849', 'Government service desk for permits, records and citizen inquiries.'),
  (84, 'Cleopatra Language School - Red Sea', 'edu', 'egypt', 'red sea', '09:00', '18:00', '16 El-Merghany Street, Red Sea', '+20 10 0922 3025', 'Language courses for kids and adults with placement tests and small classes.'),
  (85, 'Al-Azhar Quran Learning Center - Cairo', 'edu', 'egypt', 'cairo', '08:00', '17:00', '62 Salah Salem Road, Cairo', '+20 12 5375 2976', 'Quran memorization and recitation classes for all ages.'),
  (86, 'Delta Telecom Store - New Valley', 'telecom', 'egypt', 'new valley', '10:00', '22:00', '1 Al-Nasr Street, New Valley', '19122', 'Retail store and service desk for mobile, internet and device repairs.'),
  (87, 'Lotus Connect Customer Care - Port Said', 'telecom', 'egypt', 'port said', NULL, NULL, '115 Omar Ibn Al-Khattab Street, Port Said', '19927', 'Customer care for bill payment, line activation and technical help.'),
  (88, 'Al-Ahram Savings Bank - Giza Branch', 'banks', 'egypt', 'giza', '08:30', '15:00', '7 Al-Nasr Street, Giza', '+20 62 1869881', 'Branch offering account opening, currency services and customer support.'),
  (89, 'Al-Fanar Cafe - Aswan', 'other', 'egypt', 'aswan', '00:00', '00:00', '42 Tahrir Street, Aswan', '+20 66 8676963', 'Coffee, tea and light bites in a relaxed setting.'),
  (90, 'TechNile Computer Services', 'other', 'egypt', 'kafr el sheikh', '10:00', '22:00', '46 26th of July Street, Kafr El Sheikh', '+20 11 7777 7855', 'Computer repair, networking and IT support.'),
  (91, 'Al-Wafaa Medical Complex - Asyut', 'clinics', 'egypt', 'asyut', '16:00', '23:00', '53 Omar Ibn Al-Khattab Street, Asyut', '+20 10 6987 3352', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (92, 'Dr. Hany Fawzy Clinic - Cairo', 'clinics', 'egypt', 'cairo', '00:00', '00:00', '112 Corniche El-Nile, Cairo', '+20 12 3931 0988', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (93, 'Al-Hayat Specialized Clinic - Port Said', 'clinics', 'egypt', 'port said', '09:00', '21:00', '82 Salah Salem Road, Port Said', '+20 12 0838 2410', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (94, 'Delta Computer Institute - Suez', 'edu', 'egypt', 'suez', '08:00', '20:00', '135 Sudan Street, Suez', '+20 12 4634 4027', 'Computer skills and IT courses with hands-on lab sessions.'),
  (95, 'Al-Hikma Evening Courses', 'edu', 'egypt', 'monufia', '08:00', '20:00', '9 Omar Ibn Al-Khattab Street, Monufia', '+20 3 2044252', 'Courses and tutoring with certified teachers and small class sizes.'),
  (96, 'Delta Union Bank - Alexandria Branch', 'banks', 'egypt', 'alexandria', NULL, NULL, '40 Al-Geish Street, Alexandria', '19898', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (97, 'NileLink Customer Care - Faiyum', 'telecom', 'egypt', 'faiyum', '10:00', '22:00', '125 Port Said Street, Faiyum', '+20 50 2579391', 'Customer care for bill payment, line activation and technical help.'),
  (98, 'Zamalek Style Salon', 'other', 'egypt', 'beheira', NULL, NULL, '12 Port Said Street, Beheira', '+20 11 3345 4042', 'Hair, beauty and styling services by appointment.'),
  (99, 'Suez Canal Development Bank - Monufia Branch', 'banks', 'egypt', 'monufia', '09:00', '17:00', '61 Al-Gomhoria Street, Monufia', '+20 10 7448 1070', 'Counter and ATM services with a dedicated desk for business clients.'),
  (100, 'Bright Horizon Academy - Qena', 'edu', 'egypt', 'qena', '08:00', '20:00', '128 Salah Salem Road, Qena', '+20 15 5260 7352', 'Courses and tutoring with certified teachers and small class sizes.'),
  (101, 'Al-Hana Bakery', 'other', 'egypt', 'ismailia', '00:00', '00:00', '52 El-Galaa Street, Ismailia', '+20 96 3616503', 'Fresh bread and pastries baked every day.'),
  (102, 'Zamalek Style Salon - Damietta', 'other', 'egypt', 'damietta', '00:00', '00:00', '105 Al-Gomhoria Street, Damietta', '+20 15 1510 5960', 'Hair, beauty and styling services by appointment.'),
  (103, 'Pyramids Math Academy - New Valley', 'edu', 'egypt', 'new valley', '09:00', '18:00', '121 Omar Ibn Al-Khattab Street, New Valley', '+20 10 5091 1626', 'Math and science tutoring with small groups and exam preparation.'),
  (104, 'Al-Wafaa Medical Complex - Suez', 'clinics', 'egypt', 'suez', '10:00', '22:00', '89 Tahrir Street, Suez', '+20 15 2424 5910', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (105, 'Nile Commercial Bank - Beni Suef Branch', 'banks', 'egypt', 'beni suef', '09:00', '17:00', '79 El-Galaa Street, Beni Suef', '19152', 'Counter and ATM services with a dedicated desk for business clients.'),
  (106, 'El-Nasr Language Center', 'edu', 'egypt', 'kafr el sheikh', '09:00', '18:00', '31 Al-Geish Street, Kafr El Sheikh', '+20 11 8312 1815', 'Language courses for kids and adults with placement tests and small classes.'),
  (107, 'Nile Care Polyclinic - Qalyubia', 'clinics', 'egypt', 'qalyubia', '09:00', '21:00', '111 Port Said Street, Qalyubia', '+20 12 5429 0644', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (108, 'Abu Simbel Neurology Center - Matrouh', 'clinics', 'egypt', 'matrouh', '09:00', '21:00', '7 26th of July Street, Matrouh', '+20 57 9928442', 'Neurology consultations, nerve studies and ongoing patient follow-up.'),
  (109, 'Zamalek Style Salon - Sohag', 'other', 'egypt', 'sohag', '10:00', '22:00', '99 El-Merghany Street, Sohag', '+20 10 3419 0588', 'Hair, beauty and styling services by appointment.'),
  (110, 'Al-Hana Bakery - Qena', 'other', 'egypt', 'qena', '09:00', '21:00', '84 El-Merghany Street, Qena', '+20 11 0312 4136', 'Fresh bread and pastries baked every day.'),
  (111, 'NileLink Store - Ismailia', 'telecom', 'egypt', 'ismailia', '09:00', '21:00', '130 Al-Gomhoria Street, Ismailia', '+20 11 7959 2431', 'Store for SIM cards, mobile plans, home internet and device support.'),
  (112, 'Beheira Real Estate Registry Office', 'government_offices', 'egypt', 'beheira', '08:00', '14:00', '66 El-Horreya Avenue, Beheira', '+20 11 9349 7839', 'Government service desk for permits, records and citizen inquiries.'),
  (113, 'Isis Dermatology Clinic - Faiyum', 'clinics', 'egypt', 'faiyum', '08:00', '16:00', '72 Al-Geish Street, Faiyum', '+20 88 5049282', 'Skin, hair and laser treatments with specialist dermatologists.'),
  (114, 'Delta Auto Parts - Beheira', 'other', 'egypt', 'beheira', '07:00', '23:00', '136 Al-Geish Street, Beheira', '+20 2 9459089', 'Spare parts and accessories for most car makes.'),
  (115, 'Pharaoh Net Customer Care - Monufia', 'telecom', 'egypt', 'monufia', '09:00', '21:00', '103 Al-Gomhoria Street, Monufia', '+20 15 2232 3862', 'Handles new lines, plan upgrades, recharge and router support.'),
  (116, 'Pharaoh National Bank - Beni Suef Branch', 'banks', 'egypt', 'beni suef', '08:00', '14:00', '86 El-Merghany Street, Beni Suef', '+20 15 3760 3738', 'Full-service branch for accounts, cards, loans and money transfers.'),
  (117, 'Smart Fix Mobile Repair', 'other', 'egypt', 'sohag', '07:00', '23:00', '89 Tahrir Street, Sohag', '+20 12 1341 7972', 'Phone repairs, screen replacement and accessories.'),
  (118, 'Al-Basma Private Lessons Center', 'edu', 'egypt', 'kafr el sheikh', '08:00', '20:00', '8 El-Merghany Street, Kafr El Sheikh', '+20 15 6668 0141', 'Private tutoring and curriculum support with small groups.'),
  (119, 'Delta Kidney Care Clinic', 'clinics', 'egypt', 'monufia', '09:00', '21:00', '6 El-Merghany Street, Monufia', '+20 82 0145510', 'Kidney care and dialysis follow-up with specialist nephrologists.'),
  (120, 'El-Salam Dental Center', 'clinics', 'egypt', 'qalyubia', '09:00', '21:00', '83 Tahrir Street, Qalyubia', '+20 62 0522788', 'Dental clinic for check-ups, fillings, cleaning and orthodontics by appointment.'),
  (121, 'Al-Ahly Medical Center', 'clinics', 'egypt', 'cairo', '08:00', '22:00', '15 Tahrir Sq, Cairo', '+20 10 1112 2233', 'Comprehensive medical care and specialized outpatient clinics.'),
  (122, 'Banque Misr - Maadi Branch', 'banks', 'egypt', 'cairo', '08:30', '15:00', '9 Road 9, Maadi', '19888', 'Retail banking, personal loans, and corporate financial services.'),
  (123, 'WE Telecom - Mohandiseen', 'telecom', 'egypt', 'giza', '09:00', '21:00', '45 Arab League St', '111', 'Home internet, mobile plans, and technical support.'),
  (124, 'Giza Traffic Department', 'government_offices', 'egypt', 'giza', '08:00', '14:00', 'Faisal Main Road', '+20 2 3765 4321', 'Driver licenses, vehicle registration, and fine settlements.'),
  (125, 'Cleopatra Language School', 'edu', 'egypt', 'cairo', '07:30', '14:30', 'Nasr City, Cairo', '+20 2 2456 7890', 'International curriculum and student affairs office.'),
  (126, 'El-Borg Laboratories', 'clinics', 'egypt', 'cairo', '00:00', '23:59', 'Dokki, Giza', '19044', 'Advanced diagnostic and blood testing laboratory.'),
  (127, 'Vodafone Egypt - Zamalek', 'telecom', 'egypt', 'cairo', '09:00', '23:00', '26th of July Corridor', '888', 'Mobile telecommunications and smart home solutions.'),
  (128, 'Civil Registry - 5th Settlement', 'government_offices', 'egypt', 'cairo', '08:00', '15:00', 'New Cairo Complex', '+20 2 2765 4321', 'Birth certificates, national IDs, and family records.'),
  (129, 'AUC Continuing Education', 'edu', 'egypt', 'cairo', '09:00', '20:00', 'AUC Avenue, New Cairo', '+20 2 2615 1000', 'Professional courses and career development programs.'),
  (130, 'CIB - Smart Village', 'banks', 'egypt', 'giza', '08:30', '15:00', 'Smart Village, Giza', '19666', 'Corporate banking and premium customer service.'),
  (131, 'Nile Dental Studio', 'clinics', 'egypt', 'cairo', '09:00', '21:00', '14 Mohamed Mahmoud St, Downtown, Cairo', '+20 10 2847 5510', 'Dental check-ups, fillings, whitening and orthodontic consultations.'),
  (132, 'Heliopolis Care Pharmacy', 'other', 'egypt', 'cairo', '08:00', '23:00', '22 Baghdad St, Heliopolis, Cairo', '+20 2 2290 1184', 'Prescriptions, medical supplies and home delivery.'),
  (133, 'Nasr City Auto Care', 'other', 'egypt', 'cairo', '09:00', '19:00', '5 Makram Ebeid St, Nasr City, Cairo', '+20 11 2294 0817', 'Car maintenance, oil changes and diagnostics.'),
  (134, 'Nour Al-Qahira Academy', 'edu', 'egypt', 'cairo', '08:00', '20:00', '18 Gameat El-Dewal St, Mohandessin, Cairo', '+20 2 3346 7721', 'Arabic and Quran courses for kids and adults.'),
  (135, 'Maadi Telecom Store', 'telecom', 'egypt', 'cairo', '10:00', '22:00', '40 Road 250, Maadi, Cairo', '+20 10 5520 3389', 'Mobile lines, plan upgrades, recharge and router support.'),
  (136, 'Cairo Gold Exchange', 'banks', 'egypt', 'cairo', '09:00', '17:00', '9 Qasr El-Nil St, Downtown, Cairo', '+20 2 2393 6612', 'Currency exchange, gold and money transfers.'),
  (137, 'Zamalek Pet and Vet Clinic', 'clinics', 'egypt', 'cairo', '10:00', '22:00', '27 Ismail Mohamed St, Zamalek, Cairo', '+20 12 0198 4456', 'Veterinary check-ups, vaccines and grooming.'),
  (138, 'Smart Print Hub', 'other', 'egypt', 'cairo', '09:00', '21:00', '7 Abbas El-Akkad St, Nasr City, Cairo', '+20 15 3340 9012', 'Printing, binding and document services for startups.'),
  (139, 'Wassef Family Eye Center', 'clinics', 'egypt', 'cairo', '09:00', '21:00', '60 Nile Corniche, Maadi, Cairo', '+20 2 2521 8803', 'Eye exams, glasses and contact lens fitting.'),
  (140, 'Heliopolis Civil Registry Office', 'government_offices', 'egypt', 'cairo', '08:00', '15:00', 'Al-Ahram St, Heliopolis, Cairo', '+20 2 2456 7001', 'Birth and marriage certificates, national ID and family records.'),
  (141, 'Lotus Coding Institute', 'edu', 'egypt', 'cairo', '10:00', '21:00', '12 Champollion St, Downtown, Cairo', '+20 10 9034 7712', 'Web and mobile programming bootcamps with project work.'),
  (142, 'Sphinx Mobile Repair', 'other', 'egypt', 'cairo', '10:00', '22:00', '15 Talaat Harb St, Downtown, Cairo', '+20 11 4418 6605', 'Phone screen repair, battery replacement and accessories.'),
  (143, 'Pyramids Kids Kindergarten', 'edu', 'egypt', 'giza', '08:00', '16:00', '18 Al-Haram St, Giza', '+20 2 3385 2290', 'Kindergarten with play-based learning for ages 3 to 6.'),
  (144, 'Giza Fresh Market', 'other', 'egypt', 'giza', '08:00', '23:00', '45 Gameat El-Dowal, Mohandessin, Giza', '+20 2 3760 1184', 'Groceries, fresh produce and household essentials.'),
  (145, 'Mohandessin Medical Lab', 'clinics', 'egypt', 'giza', '07:00', '22:00', '33 Syria St, Mohandessin, Giza', '+20 2 3303 4478', 'Blood tests, imaging referrals and home sample collection.'),
  (146, 'Dokki Tax Office', 'government_offices', 'egypt', 'giza', '08:30', '14:30', 'Tahrir St, Dokki, Giza', '+20 2 3335 9900', 'Tax registration, returns and payment counters.'),
  (147, 'Faisal Mobile Store', 'telecom', 'egypt', 'giza', '10:00', '23:00', '110 Faisal St, Giza', '+20 10 7713 2046', 'Mobile plans, devices and home internet installation.'),
  (148, 'Corniche Language Center', 'edu', 'egypt', 'alexandria', '09:00', '20:00', 'Corniche Road, Sporting, Alexandria', '+20 3 421 5508', 'English and French courses with placement tests.'),
  (149, 'Smouha Family Clinic', 'clinics', 'egypt', 'alexandria', '09:00', '21:00', '12 Smouha St, Alexandria', '+20 3 421 8734', 'Family medicine, vaccinations and minor procedures.'),
  (150, 'Montaza Auto Parts', 'other', 'egypt', 'alexandria', '09:00', '21:00', '80 Abu Qir St, Alexandria', '+20 3 548 2291', 'Spare parts and accessories for most car makes.'),
  (151, 'Alexandria Port Customs Office', 'government_offices', 'egypt', 'alexandria', '08:00', '14:00', 'Port Authority Area, Alexandria', '+20 3 486 0021', 'Customs clearance and import document services.'),
  (152, 'Mediterranean Telecom Store', 'telecom', 'egypt', 'alexandria', '10:00', '22:00', '25 Fouad St, Alexandria', '+20 10 2810 4467', 'Mobile, internet and device support.'),
  (153, 'Eastern Bank - Smouha Branch', 'banks', 'egypt', 'alexandria', '08:30', '15:00', '6 Victor Emmanuel St, Smouha, Alexandria', '+20 3 422 7760', 'Retail accounts, cards and personal loans.'),
  (154, 'Shubra Kheit Pediatric Clinic', 'clinics', 'egypt', 'qalyubia', '09:00', '21:00', 'Shubra Kheit Main St, Qalyubia', '+20 13 3462 1180', 'Child healthcare and vaccinations.'),
  (155, 'Benha Evening Startup Academy', 'edu', 'egypt', 'qalyubia', '14:00', '22:00', '4 Abdel Salam Aref St, Benha, Qalyubia', '+20 13 3322 6109', 'Evening English and coding classes for teens.'),
  (156, 'Zagazig Mobile Hub', 'telecom', 'egypt', 'sharqia', '09:00', '22:00', 'Al-Gomhoria St, Zagazig, Sharqia', '+20 55 231 7745', 'Mobile plans, device sales and recharge.'),
  (157, 'Sharqia Civil Registry Office', 'government_offices', 'egypt', 'sharqia', '08:00', '14:00', 'Al-Mahatta Sq, Zagazig, Sharqia', '+20 55 233 0198', 'Official records, IDs and certificate issuance.'),
  (158, 'Tanta Diabetes and Endocrine Center', 'clinics', 'egypt', 'gharbia', '09:00', '21:00', 'Al-Geish St, Tanta, Gharbia', '+20 40 335 6612', 'Diabetes, thyroid and hormone consultations.'),
  (159, 'Tanta Bright Tutors', 'edu', 'egypt', 'gharbia', '15:00', '22:00', 'Al-Bahr St, Tanta, Gharbia', '+20 40 332 9045', 'Private tutoring for secondary school students.'),
  (160, 'Shebin Commercial Bank', 'banks', 'egypt', 'monufia', '09:00', '15:00', 'Tahrir St, Shebin El-Kom, Monufia', '+20 48 226 1184', 'Branch services, cards and savings accounts.'),
  (161, 'Shebin Sports and Fitness Club', 'other', 'egypt', 'monufia', '07:00', '23:00', 'Al-Thawra St, Shebin El-Kom, Monufia', '+20 48 228 7790', 'Gym, swimming and group fitness classes.'),
  (162, 'Asyut Public Services Office', 'government_offices', 'egypt', 'asyut', '08:30', '14:30', 'Al-Gomhoria St, Asyut', '+20 88 232 4410', 'Bill payments and service requests.'),
  (163, 'Asyut Coffee and Desserts', 'other', 'egypt', 'asyut', '10:00', '23:00', 'Al-Thawra St, Asyut', '+20 10 4451 7820', 'Coffee, desserts and light meals.'),
  (164, 'Sohag Community Health Center', 'clinics', 'egypt', 'sohag', '08:00', '20:00', 'Al-Geish St, Sohag', '+20 93 231 6604', 'Primary care, vaccinations and maternity follow-up.'),
  (165, 'Nile Valley Software Studio', 'other', 'egypt', 'sohag', '10:00', '19:00', 'Al-Mahatta St, Sohag', '+20 10 6027 3185', 'Website and small business software development.'),
  (166, 'Minya Sun Driving School', 'edu', 'egypt', 'minya', '09:00', '20:00', 'Corniche El-Nil, Minya', '+20 86 236 4017', 'Driving lessons and theory test preparation.'),
  (167, 'Minya Telecom Center', 'telecom', 'egypt', 'minya', '10:00', '22:00', 'Al-Gomhoria St, Minya', '+20 86 234 1187', 'Mobile plans, internet and device care.'),
  (168, 'Qena Medical Supplies', 'other', 'egypt', 'qena', '09:00', '21:00', 'Al-Nasr St, Qena', '+20 96 532 9158', 'Medical equipment and home care supplies.'),
  (169, 'Qena Kids Language Club', 'edu', 'egypt', 'qena', '16:00', '21:00', 'Al-Mahatta St, Qena', '+20 96 530 7741', 'English and reading clubs for children.'),
  (170, 'Ismailia Canal Dental Clinic', 'clinics', 'egypt', 'ismailia', '09:00', '21:00', 'Canal St, Ismailia', '+20 64 332 6128', 'Dental check-ups, cleaning and cosmetic treatments.'),
  (171, 'Ismailia Tax Authority Office', 'government_offices', 'egypt', 'ismailia', '08:00', '14:00', 'Al-Thawra St, Ismailia', '+20 64 331 9902', 'Tax registration and filing services.'),
  (172, 'Port Said Shipping Agency', 'other', 'egypt', 'port said', '09:00', '17:00', 'Port Fouad Waterfront, Port Said', '+20 66 322 8145', 'Shipping and cargo documentation services.'),
  (173, 'Suez Gulf Insurance Agency', 'other', 'egypt', 'suez', '09:00', '17:00', 'Al-Geish St, Suez', '+20 62 333 5520', 'Car, home and health insurance policies.'),
  (174, 'Suez Language and Computer School', 'edu', 'egypt', 'suez', '08:00', '20:00', 'Port Tawfik St, Suez', '+20 62 331 7790', 'Language and computer courses for teens and adults.'),
  (175, 'Hurghada Dive Academy', 'edu', 'egypt', 'red sea', '09:00', '18:00', 'Sheraton Road, Hurghada', '+20 65 344 2187', 'Scuba diving courses and marine safety training.'),
  (176, 'Hurghada Marina Clinic', 'clinics', 'egypt', 'red sea', '00:00', '00:00', 'Marina Area, Hurghada', '+20 65 344 9010', 'Round-the-clock urgent care and first aid for visitors.'),
  (177, 'Marsa Matrouh Real Estate', 'other', 'egypt', 'matrouh', '10:00', '21:00', 'Corniche St, Marsa Matrouh', '+20 46 493 2280', 'Property listings, rentals and sales.'),
  (178, 'Damanhour Kids Dental Care', 'clinics', 'egypt', 'beheira', '10:00', '20:00', 'El-Horreya St, Damanhour, Beheira', '+20 45 332 4470', 'Pediatric dental care and preventive treatments.'),
  (179, 'Luxor Sunrise Tours', 'other', 'egypt', 'luxor', '07:00', '20:00', 'Corniche El-Nil, Luxor', '+20 95 237 1190', 'Temple tours, hot-air balloon bookings and day trips.'),
  (180, 'Aswan Nubian Crafts', 'other', 'egypt', 'aswan', '09:00', '21:00', 'Souq Al-Fustat, Aswan', '+20 97 231 5536', 'Handmade jewelry, textiles and souvenirs.');

-- ==================== SmartLine Seed: Providers (1-156) ====================
  INSERT INTO providers (user_id, manager_id, invite_code) VALUES
  (137, 411, 'C39ZU63V'),,
  (160, 111, 'XKZH92GJ'),
  (7, 109, '3BAD9VT7'),
  (76, 257, 'KNYFJPUY'),
  (235, 58, 'PD3ZZJZG'),
  (155, 384, '7DSPJV2Y'),
  (154, 372, 'JVX3G3F9'),
  (74, 12, 'XZ72ZDUY'),
  (152, 427, 'UV66ZGAM'),
  (119, 438, 'AAC8YWKE'),
  (114, 107, 'A8MRG46G'),
  (236, 35, 'ZT2FU5GU'),
  (158, 132, 'L3GJK8LX'),
  (197, 16, '7EG4SU5T'),
  (196, 434, 'T65FWLHX'),
  (243, 370, '235C7NVW'),
  (72, 390, 'HHJQTRV9'),
  (176, 285, 'WS649KB6'),
  (80, 377, 'Z4EQYUWU'),
  (60, 352, 'VFV63RPG'),
  (226, 412, 'JADLUAP4'),
  (96, 277, 'XZG8VFQS'),
  (186, 88, '2H38NE2Q'),
  (91, 277, 'N3VR49KE'),
  (48, 161, 'GEJ2RSBX'),
  (118, 349, 'Y326LPK3'),
  (190, 253, 'PCPM8HTG'),
  (189, 404, 'EBZEW9CR'),
  (206, 315, 'LW44S65U'),
  (36, 182, 'YVTWG8L8'),
  (100, 2, 'D4XS8GCV'),
  (79, 195, 'C3VATV99'),
  (2, 72, 'MWPQQ5ZJ'),
  (230, 387, '9AVEFY2G'),
  (140, 177, '3AEYCNMF'),
  (84, 43, 'M7RYHXC9'),
  (218, 312, 'B6ANVVFA'),
  (174, 259, 'TVYFMXRQ'),
  (173, 218, 'F79NP53N'),
  (143, NULL, 'CHXVELB6'),
  (172, 56, 'ZQ4F2PMY'),
  (52, 83, 'KPT3WU9U'),
  (229, 115, 'E23W9TD8'),
  (141, 227, 'SAN2TYEZ'),
  (238, 122, 'EVZVCQNM'),
  (164, 322, 'L7HMS4H8'),
  (117, 296, 'KT9CZ8N5'),
  (21, NULL, '5F8HNYHS'),
  (127, 102, 'V695MTNQ'),
  (65, NULL, 'HFHLKNFD'),
  (40, 146, 'BGWLMDRG'),
  (18, 269, 'NSEC3VJJ'),
  (124, 397, 'YSUAB8ZB'),
  (231, 404, '7SMZYUA3'),
  (202, 385, 'USZTS7BH'),
  (17, 21, 'SFAAGT96'),
  (207, 89, 'SXVL99B7'),
  (64, NULL, '3QA73DVA'),
  (159, 304, 'V7DNR5RT'),
  (167, 22, '3G3APLN8'),
  (77, 167, 'ETWNRXBF'),
  (210, 21, 'BWT5E6QL'),
  (101, 46, 'KSTU8GPN'),
  (183, 329, 'BPM3CYYG'),
  (247, 76, 'YMPX85DQ'),
  (244, 311, 'Q3UGMVJM'),
  (69, 90, 'FLNK4LN6'),
  (6, 375, '3CCRKFYN'),

  (27, 351, 'W9QG5TRK'),
  (29, 29, 'F6AS2N2G'),

  (168, 391, 'F8N6YBE8'),

  (115, 417, 'SLXM265J'),
  (49, 394, 'G2M3LVP4'),

  (198, 413, 'J7TUH27C'),

  (129, 243, 'GZRV26L7'),

  (113, 50, 'WJXQ3U9Y'),

  (61, 390, 'P6N26T7U'),

  (171, 9, 'XXMFEPZU'),
  (246, 9, 'XXMFEPZU'),
  (35, 426, 'RFJMQG6S'),
  (220, 82, '9666SGQQ'),
  (39, 421, '6JFPWR6B'),

  (83, 43, 'T86UYFZW'),

  (82, 50, 'G7DLZZPE'),
  (15, 66, '6N4FX53N'),

  (178, 285, 'BU5RS936'),
  (55, 116, 'NDLSXM7S'),
  (204, 306, 'MRQYYXRU'),
  (195, 69, 'J73DLP9L'),

  (151, 438, 'S75SNNEQ'),
  (94, 199, 'YZK9KD2W'),
  (24, 29, 'SHB9KVGK'),
  (20, 21, 'LL7R64KZ'),
  (81, 295, 'F9CJMY67'),
  (54, 363, 'QGADW2WB'),
  (223, NULL, 'NXKKXWR8'),
  (9, 109, 'Q7T7TVCL'),
  (16, 346, 'SHD7Y9DY'),
  (232, 297, 'T2HKQD2X'),
  (120, 17, 'WKPCY73S'),
  (156, 443, 'P3Y66V2Z'),
  (237, NULL, 'QHX3RXVB'),
  
  (136, 271, '6FME389L'),
  (192, 450, 'AVNAXZHB'),
  (111, 194, '266ZBSK3'),
  (30, 223, 'UAW83ZQR'),
  (224, 434, 'F5AGP9HL'),

  (147, 283, 'KK38H974'),
  (56, 318, 'TEESULJN'),
  (3, 144, 'PK6BL46Q'),

  (73, NULL, 'CJH6U2XK'),

  (214, 233, 'KXWXSCZL'),

  (222, 81, 'PXY4UV8N'),
  (134, 421, 'PL548Y3M'),

  (131, 239, 'E5UT7WY5'),
  (126, 251, '2DYHW5S3'),
  
  (99, 8, 'MYPGX5PZ'),

  (87, 377, 'HHGKSS2D'),
  (221, 297, 'WWCT3RY2'),
  (239, 6, 'ZLEUFULE'),
  (75, NULL, 'EQ28XR9Z'),
  (86, 423, 'A9ZLPCQC'),

  (22, 306, 'QG4NGNRX'),
  (89, NULL, 'B4449XPZ'),
  (217, 81, '8UZ365NZ'),

  (98, 184, 'HGXQ4Q5U'),
  (19, 21, 'PK5W2XN5'),

  (11, NULL, 'EPEZH8AU'),

  (215, 266, '2HNWGADA'),

  (104, 249, 'NNTP37U6'),
  (95, 15, '6EQRGWVD'),

  (211, 188, 'PQDZ7FMH'),

  (50, 286, 'AFGGPCAG'),

  (1, 9, 'X6AXTHVZ'),
  (208, 87, 'JZ8L62C9'),

  (92, 242, 'LCGVSSCG'),

  (180, 363, 'XRN5G53J'),

  (97, 157, 'AARTA9YX'),

  (26, NULL, '5L7KYZYA'),

  (148, 283, 'VVB637GB'),

  (90, 269, '6MJ27H9T'),





  (227, 260, 'W3XDM7JN'),
  (110, 40, 'BEAZAQXX'),

  (23, NULL, 'XKHJ6PMR'),

  (249, 244, 'SLMTVK2G'),
  (57, 318, '7NJ9W4BL'),

  (128, 239, 'FTQB6RDQ'),

  (59, 190, '4URVCS2F'),
  (145, 155, 'UWGZ23QB'),

  (34, 379, 'V54B6TXL'),
  (153, 427, 'YW6C75NL'),

  (41, 430, 'C5TV2K55'),
  (38, 218, 'QUWLFVGT'),
  (133, 19, 'U6A3KYL9'),

  (150, 139, '8627DZTM'),

  (125, 78, '2LT9RJD3'),

  (14, 346, 'UKL85SDZ');

-- ==================== created_at (relative to users.created_at) =====================
  -- 1) managers: after the user's created_at. If the user's provider row is a "provider first" case
    --    (providers.id % 20 < 17, ~85% of users who are both), the manager date is pushed later
    --    (at least 25% of the way to now) so the provider date fits before it.
    CREATE TEMP TABLE _m AS
    SELECT m.id AS manager_id,
          CAST(strftime('%s', u.created_at) AS INTEGER) AS u_epoch,
          CAST(strftime('%s', 'now', '+3 hours') AS INTEGER) AS now_epoch,
          CASE WHEN EXISTS (SELECT 1 FROM providers p WHERE p.user_id = m.user_id AND p.id % 20 < 17)
                THEN 0.25 ELSE 0.0 END AS lo,
          ABS(RANDOM() % 1000000) / 1000000.0 AS r
    FROM managers m JOIN users u ON u.id = m.user_id;

    UPDATE managers SET created_at = (
        SELECT datetime(MIN(t.now_epoch, t.u_epoch + MAX(60, CAST((t.now_epoch - t.u_epoch) * (t.lo + (1 - t.lo) * t.r) AS INTEGER))), 'unixepoch')
        FROM _m t WHERE t.manager_id = managers.id);

  -- 2) companies: exactly the manager's created_at (one-to-one)
    UPDATE companies SET created_at = (SELECT m.created_at FROM managers m WHERE m.id = companies.manager_id);

  -- 3) providers
    CREATE TEMP TABLE _p AS
    SELECT p.id AS provider_id,
          CAST(strftime('%s', u.created_at) AS INTEGER) AS u_epoch,
          CAST(strftime('%s', m.created_at) AS INTEGER) AS m_epoch,
          CAST(strftime('%s', 'now', '+3 hours') AS INTEGER) AS now_epoch,
          (p.id % 20 < 17) AS first_flag,
          ABS(RANDOM() % 1000000) / 1000000.0 AS r
    FROM providers p
    JOIN users u ON u.id = p.user_id
    LEFT JOIN managers m ON m.user_id = p.user_id;

    UPDATE providers SET created_at = (
        SELECT datetime(CASE
            -- not a manager: any time after the user was created
            WHEN t.m_epoch IS NULL
                THEN MIN(t.now_epoch, t.u_epoch + MAX(60, CAST((t.now_epoch - t.u_epoch) * t.r AS INTEGER)))
            -- manager too, provider first: strictly before the manager date
            WHEN t.first_flag
                THEN t.u_epoch + 60 + CAST(MAX(t.m_epoch - t.u_epoch - 120, 0) * t.r AS INTEGER)
            -- manager too, provider later: after the manager date
            ELSE MIN(t.now_epoch, t.m_epoch + MAX(60, CAST((t.now_epoch - t.m_epoch) * t.r AS INTEGER)))
        END, 'unixepoch')
        FROM _p t WHERE t.provider_id = providers.id);

  DROP TABLE _m;
  DROP TABLE _p;

-- ==================== Focus fix: Egypt company 9 (manager user 127) ====================
  UPDATE companies
  SET description = 'Main Cairo branch: new lines, plan upgrades, recharge, router setup and customer care for locals and visitors.',
      opening_time = '09:00',
      closing_time = '21:00'
  WHERE id = 9;

  -- Key provider of company 9 (user 171), only if not already a provider
  INSERT INTO providers (user_id, manager_id, invite_code, created_at)
  SELECT 171, m.id, 'K3WX7RQ9', datetime(u.created_at, '+60 days')
  FROM managers m, users u
  WHERE m.user_id = 127 AND u.id = 171
    AND NOT EXISTS (SELECT 1 FROM providers WHERE user_id = 171);

  -- Key provider of company 9 (user 1), only if not already a provider
  INSERT INTO providers (user_id, manager_id, invite_code, created_at)
  SELECT 1, m.id, 'K3WX7RQ9', datetime(u.created_at, '+60 days')
  FROM managers m, users u
  WHERE m.user_id = 127 AND u.id = 1
    AND NOT EXISTS (SELECT 1 FROM providers WHERE user_id = 1);

-- ==================== SmartLine Seed: providers from new users (904-1203) ====================
  WITH RECURSIVE n(x) AS (
    SELECT 904
    UNION ALL
    SELECT x + 1 FROM n WHERE x < 1203
  ),
  pu AS (
    SELECT x AS uid FROM n WHERE x % 4 <> 0
  ),
  alphabet AS (
    -- 32-character unambiguous alphabet (same style as existing invite codes)
    SELECT '23456789ABCDEFGHJKLMNPQRSTUVWXYZ' AS chars
  ),
  pool AS (
    SELECT mgr, ROW_NUMBER() OVER (ORDER BY mgr) - 1 AS k
    FROM (
      -- Egypt (50)
      SELECT 912 AS mgr UNION ALL
      SELECT 913 UNION ALL
      SELECT 914 UNION ALL
      SELECT 915 UNION ALL
      SELECT 916 UNION ALL
      SELECT 917 UNION ALL
      SELECT 918 UNION ALL
      SELECT 919 UNION ALL
      SELECT 920 UNION ALL
      SELECT 921 UNION ALL
      SELECT 922 UNION ALL
      SELECT 923 UNION ALL
      SELECT 969 UNION ALL
      SELECT 970 UNION ALL
      SELECT 971 UNION ALL
      SELECT 972 UNION ALL
      SELECT 973 UNION ALL
      SELECT 1007 UNION ALL
      SELECT 1008 UNION ALL
      SELECT 1009 UNION ALL
      SELECT 1010 UNION ALL
      SELECT 1011 UNION ALL
      SELECT 1012 UNION ALL
      SELECT 1048 UNION ALL
      SELECT 1049 UNION ALL
      SELECT 1070 UNION ALL
      SELECT 1071 UNION ALL
      SELECT 1082 UNION ALL
      SELECT 1083 UNION ALL
      SELECT 1092 UNION ALL
      SELECT 1093 UNION ALL
      SELECT 1106 UNION ALL
      SELECT 1107 UNION ALL
      SELECT 1119 UNION ALL
      SELECT 1120 UNION ALL
      SELECT 1113 UNION ALL
      SELECT 1114 UNION ALL
      SELECT 1125 UNION ALL
      SELECT 1126 UNION ALL
      SELECT 1159 UNION ALL
      SELECT 1160 UNION ALL
      SELECT 1152 UNION ALL
      SELECT 1146 UNION ALL
      SELECT 1147 UNION ALL
      SELECT 1185 UNION ALL
      SELECT 1186 UNION ALL
      SELECT 1200 UNION ALL
      SELECT 1099 UNION ALL
      SELECT 1129 UNION ALL
      SELECT 1138 UNION ALL

      -- Extra slots for bigger companies (26)
      SELECT 916 UNION ALL
      SELECT 917 UNION ALL
      SELECT 921 UNION ALL
      SELECT 922 UNION ALL
      SELECT 972 UNION ALL
      SELECT 973 UNION ALL
      SELECT 1010 UNION ALL
      SELECT 1011 UNION ALL
      SELECT 1012 UNION ALL
      SELECT 1092 UNION ALL
    )
  )
  INSERT INTO providers (user_id, manager_id, invite_code, created_at)
  SELECT pu.uid,
         m.id,
         -- 4 random chars + 4 deterministic unique chars derived from pu.uid (Zero collision risk)
         substr(a.chars, (abs(random()) % 32) + 1, 1) ||
         substr(a.chars, (abs(random()) % 32) + 1, 1) ||
         substr(a.chars, ((pu.uid * 7) % 32) + 1, 1) ||
         substr(a.chars, (abs(random()) % 32) + 1, 1) ||
         substr(a.chars, ((pu.uid / 32) % 32) + 1, 1) ||
         substr(a.chars, (abs(random()) % 32) + 1, 1) ||
         substr(a.chars, (pu.uid % 32) + 1, 1) ||
         substr(a.chars, ((pu.uid * 13 + 5) % 32) + 1, 1),
         datetime(u.created_at, '+60 days')
  FROM pu
  CROSS JOIN alphabet a
  JOIN users u ON u.id = pu.uid
  JOIN pool ON pool.k = pu.uid % 136
  JOIN managers m ON m.user_id = pool.mgr
  WHERE NOT EXISTS (SELECT 1 FROM providers p WHERE p.user_id = pu.uid);

-- ==================== 1. Create the pool and insert EXACTLY 100 services per standard category (500 total) ====================
  CREATE TEMP TABLE _service_pool (cat_key TEXT, service_name TEXT);

  INSERT INTO _service_pool (cat_key, service_name) VALUES
  -- ================= BANKS (100 Services) =================
  ('banks', 'Open Savings Account'), ('banks', 'Open Current Account'), ('banks', 'Youth Account Setup'), ('banks', 'Senior Citizen Account'), ('banks', 'Salary Account Opening'),
  ('banks', 'Personal Loan Application'), ('banks', 'Auto Loan Inquiry'), ('banks', 'Mortgage Consultation'), ('banks', 'SME Business Loan'), ('banks', 'Corporate Financing'),
  ('banks', 'Credit Card Issuance'), ('banks', 'Debit Card Replacement'), ('banks', 'Prepaid Card Setup'), ('banks', 'Card PIN Reset'), ('banks', 'Report Lost/Stolen Card'),
  ('banks', 'Cash Deposit'), ('banks', 'Cash Withdrawal'), ('banks', 'Cheque Deposit'), ('banks', 'Chequebook Request'), ('banks', 'Certified Cheque Issuance'),
  ('banks', 'Local Money Transfer'), ('banks', 'International Wire Transfer'), ('banks', 'Western Union Transfer'), ('banks', 'Foreign Currency Exchange'), ('banks', 'Traveler Cheques'),
  ('banks', 'Certificate of Deposit (CD)'), ('banks', 'Investment Funds Subscription'), ('banks', 'Treasury Bills Inquiry'), ('banks', 'Wealth Management Consult'), ('banks', 'Stock Trading Account'),
  ('banks', 'Update Personal Information (KYC)'), ('banks', 'Signature Update'), ('banks', 'Account Closure'), ('banks', 'Dormant Account Activation'), ('banks', 'Bank Statement Request'),
  ('banks', 'Balance Inquiry'), ('banks', 'IBAN Letter Request'), ('banks', 'Clearance Letter Issuance'), ('banks', 'Liability Letter Request'), ('banks', 'Credit Score Inquiry'),
  ('banks', 'Online Banking Setup'), ('banks', 'Mobile App Activation'), ('banks', 'Token/OTP Device Issuance'), ('banks', 'E-Wallet Registration'), ('banks', 'Reset Online Password'),
  ('banks', 'VIP/Priority Banking Service'), ('banks', 'Safe Deposit Box Access'), ('banks', 'Safe Deposit Box Rental'), ('banks', 'Bancassurance/Insurance Plans'), ('banks', 'Life Insurance Premium'),
  ('banks', 'Student Loan Application'), ('banks', 'Debt Rescheduling'), ('banks', 'Early Loan Settlement'), ('banks', 'Credit Card Limit Increase'), ('banks', 'Card Dispute Resolution'),
  ('banks', 'Corporate Account Opening'), ('banks', 'Letter of Credit (LC)'), ('banks', 'Letter of Guarantee (LG)'), ('banks', 'Payroll Service Setup'), ('banks', 'POS Machine Request'),
  ('banks', 'Merchant Account Support'), ('banks', 'Corporate Online Banking'), ('banks', 'Trade Finance Consultation'), ('banks', 'Business Credit Card'), ('banks', 'Company Fleet Financing'),
  ('banks', 'Tax Payment Service'), ('banks', 'Customs Payment'), ('banks', 'Utility Bill Payment'), ('banks', 'School/University Fees Payment'), ('banks', 'Traffic Fines Payment'),
  ('banks', 'Customer Care / General Inquiry'), ('banks', 'Submit a Complaint'), ('banks', 'Follow up on Complaint'), ('banks', 'Special Needs Assistance'), ('banks', 'Financial Advisory'),
  ('banks', 'Islamic Banking: Murabaha'), ('banks', 'Islamic Banking: Ijarah'), ('banks', 'Islamic Banking: Musharaka'), ('banks', 'Waqf/Charity Transfer'), ('banks', 'Zakat Calculation Service'),
  ('banks', 'Premium Credit Card Upgrade'), ('banks', 'Supplementary Card Request'), ('banks', 'Card Rewards/Points Redemption'), ('banks', 'Installment Program Setup'), ('banks', 'Stop Cheque Payment'),
  ('banks', 'Salary Advance Request'), ('banks', 'Freelancer Account Setup'), ('banks', 'Joint Account Setup'), ('banks', 'Minor Account Opening'), ('banks', 'Club/Association Account'),
  ('banks', 'Pension Transfer Inquiry'), ('banks', 'Inheritance Account Processing'), ('banks', 'Power of Attorney Registration'), ('banks', 'Expatriate Banking Services'), ('banks', 'Non-Resident Account'),
  ('banks', 'ATM Dispute Claim'), ('banks', 'Failed Transaction Inquiry'), ('banks', 'Currency Order (Large Amount)'), ('banks', 'Coin Exchange Service'), ('banks', 'Damaged Banknote Replacement'),

  -- ================= TELECOM (100 Services) =================
  ('telecom', 'New Prepaid SIM Activation'), ('telecom', 'New Postpaid Line Activation'), ('telecom', 'eSIM Activation'), ('telecom', 'SIM Replacement / Swap'), ('telecom', 'Data-Only SIM Purchase'),
  ('telecom', 'Postpaid Plan Upgrade'), ('telecom', 'Postpaid Plan Downgrade'), ('telecom', 'Migrate Prepaid to Postpaid'), ('telecom', 'Migrate Postpaid to Prepaid'), ('telecom', 'Line Ownership Transfer'),
  ('telecom', 'Prepaid Recharge / Top-up'), ('telecom', 'Postpaid Bill Payment'), ('telecom', 'Installment Bill Payment'), ('telecom', 'Home Internet Bill Payment'), ('telecom', 'Late Fee Settlement'),
  ('telecom', 'Fiber Internet New Request'), ('telecom', 'ADSL/VDSL Setup'), ('telecom', 'Home Internet Plan Upgrade'), ('telecom', 'Router Configuration / Setup'), ('telecom', 'Router Replacement'),
  ('telecom', 'Landline New Subscription'), ('telecom', 'Landline Relocation'), ('telecom', 'Landline Feature Activation'), ('telecom', 'Cancel Landline'), ('telecom', 'Landline Fault Reporting'),
  ('telecom', 'Smartphone Purchase'), ('telecom', 'Smartphone Installment Plan'), ('telecom', 'Mobile Accessories Sales'), ('telecom', 'Smartwatch/Wearable Sales'), ('telecom', 'Router/MiFi Sales'),
  ('telecom', 'Mobile Number Portability (MNP)'), ('telecom', 'Port-in Request Follow-up'), ('telecom', 'Port-out Dispute'), ('telecom', 'Choose Vanity/Premium Number'), ('telecom', 'Number Reservation'),
  ('telecom', 'Roaming Service Activation'), ('telecom', 'International Calling Package'), ('telecom', 'Data Roaming Add-on'), ('telecom', 'Tourist SIM Activation'), ('telecom', 'Roaming Issue Support'),
  ('telecom', 'Technical Support (Mobile)'), ('telecom', 'Technical Support (Internet)'), ('telecom', 'Network Coverage Complaint'), ('telecom', 'Sim Card PUK Unlock'), ('telecom', 'Device Warranty Claim'),
  ('telecom', 'Cancel/Suspend Mobile Line'), ('telecom', 'Cancel Home Internet'), ('telecom', 'Reactivate Suspended Line'), ('telecom', 'Temporary Line Suspension'), ('telecom', 'Contract Termination'),
  ('telecom', 'Corporate Line Activation'), ('telecom', 'Fleet Management Setup'), ('telecom', 'B2B Internet Solutions'), ('telecom', 'PBX / Cloud Phone System'), ('telecom', 'Corporate Account Manager Meeting'),
  ('telecom', 'Value Added Services (VAS)'), ('telecom', 'Caller Ring Back Tone Setup'), ('telecom', 'Subscribe to Entertainment (IPTV)'), ('telecom', 'Unsubscribe from VAS/Ads'), ('telecom', 'Mobile Wallet Registration'),
  ('telecom', 'Mobile Wallet Cash-in'), ('telecom', 'Mobile Wallet Cash-out'), ('telecom', 'Smart Home Solutions (IoT)'), ('telecom', 'Security Camera Setup Inquiry'), ('telecom', 'Gaming Data Package'),
  ('telecom', 'Update Customer ID/Iqama'), ('telecom', 'Fingerprint/Biometric Verification'), ('telecom', 'Name/Address Update'), ('telecom', 'Password/PIN Reset'), ('telecom', 'Detailed Call History Printout'),
  ('telecom', 'Customer Complaints'), ('telecom', 'Billing Dispute Resolution'), ('telecom', 'Refund Request'), ('telecom', 'Follow up on Open Ticket'), ('telecom', 'Senior Citizen Assistance'),
  ('telecom', 'Student Discount Package'), ('telecom', 'Family Plan Setup'), ('telecom', 'Add Member to Family Plan'), ('telecom', 'Remove Member from Plan'), ('telecom', 'Data Sharing Setup'),
  ('telecom', '5G Upgrade Inquiry'), ('telecom', 'Static IP Request'), ('telecom', 'Wi-Fi Extender Purchase'), ('telecom', 'Smart TV Box Setup'), ('telecom', 'Gaming Router Config'),
  ('telecom', 'Loyalty Points Redemption'), ('telecom', 'Special Promotions Inquiry'), ('telecom', 'Trade-in Old Device'), ('telecom', 'Device Repair Drop-off'), ('telecom', 'Device Repair Pickup'),

  -- ================= CLINICS (100 Services) =================
  ('clinics', 'General Practitioner Consultation'), ('clinics', 'Medical Check-up / Routine Exam'), ('clinics', 'Follow-up Appointment'), ('clinics', 'Sick Leave Certificate Issuance'), ('clinics', 'Medical Report Request'),
  ('clinics', 'Dental Examination'), ('clinics', 'Teeth Cleaning & Scaling'), ('clinics', 'Dental Fillings'), ('clinics', 'Tooth Extraction'), ('clinics', 'Orthodontic Consultation (Braces)'),
  ('clinics', 'Pediatric Consultation (Child)'), ('clinics', 'Child Vaccination (Routine)'), ('clinics', 'Child Growth Assessment'), ('clinics', 'Newborn Screening'), ('clinics', 'Pediatric Follow-up'),
  ('clinics', 'Dermatology Consultation'), ('clinics', 'Acne Treatment Session'), ('clinics', 'Laser Hair Removal (Face)'), ('clinics', 'Laser Hair Removal (Body)'), ('clinics', 'Skin Tag/Wart Removal'),
  ('clinics', 'Cardiology Consultation'), ('clinics', 'ECG (Electrocardiogram)'), ('clinics', 'Echocardiogram'), ('clinics', 'Blood Pressure Monitoring'), ('clinics', 'Holter Monitor Setup'),
  ('clinics', 'Gynecology Consultation'), ('clinics', 'Pregnancy Follow-up (Antenatal)'), ('clinics', 'Ultrasound Scan (Obstetrics)'), ('clinics', 'Pap Smear Test'), ('clinics', 'Family Planning Consultation'),
  ('clinics', 'Orthopedic Consultation'), ('clinics', 'Joint Pain Assessment'), ('clinics', 'Plaster Cast Application/Removal'), ('clinics', 'Sports Injury Evaluation'), ('clinics', 'Physiotherapy Assessment'),
  ('clinics', 'Physiotherapy Session'), ('clinics', 'Massage Therapy (Medical)'), ('clinics', 'Chiropractic Adjustment'), ('clinics', 'Post-Surgery Rehabilitation'), ('clinics', 'Acupuncture Session'),
  ('clinics', 'Ophthalmology (Eye) Consultation'), ('clinics', 'Vision Test for Glasses'), ('clinics', 'Cataract Assessment'), ('clinics', 'Glaucoma Screening'), ('clinics', 'Contact Lens Fitting'),
  ('clinics', 'ENT (Ear, Nose, Throat) Consult'), ('clinics', 'Ear Cleaning / Washing'), ('clinics', 'Hearing Test (Audiometry)'), ('clinics', 'Sinus Evaluation'), ('clinics', 'Allergy Testing'),
  ('clinics', 'Internal Medicine Consultation'), ('clinics', 'Diabetes Management'), ('clinics', 'Thyroid Disorder Evaluation'), ('clinics', 'Gastroenterology Consult'), ('clinics', 'Endoscopy Booking'),
  ('clinics', 'Blood Test (CBC)'), ('clinics', 'Lipid Profile (Cholesterol)'), ('clinics', 'Liver/Kidney Function Test'), ('clinics', 'Vitamin D Test'), ('clinics', 'PCR / Swab Test'),
  ('clinics', 'Urine / Stool Analysis'), ('clinics', 'Hormone Profile Test'), ('clinics', 'Pre-Marital Screening'), ('clinics', 'Food Intolerance Test'), ('clinics', 'Lab Results Collection'),
  ('clinics', 'X-Ray Imaging'), ('clinics', 'MRI Scan'), ('clinics', 'CT Scan'), ('clinics', 'Bone Density Scan (DEXA)'), ('clinics', 'Mammogram'),
  ('clinics', 'Nutrition & Diet Consultation'), ('clinics', 'Weight Loss Program Setup'), ('clinics', 'Bariatric Surgery Consult'), ('clinics', 'Body Composition Analysis'), ('clinics', 'Diet Follow-up'),
  ('clinics', 'Psychiatry Consultation'), ('clinics', 'Psychology / Counseling Session'), ('clinics', 'Couples Therapy'), ('clinics', 'Child Behavioral Assessment'), ('clinics', 'Stress Management Session'),
  ('clinics', 'Urgent Care / First Aid'), ('clinics', 'Wound Dressing / Stitches'), ('clinics', 'Burn Treatment'), ('clinics', 'IV Fluid Administration'), ('clinics', 'Asthma Nebulizer Session'),
  ('clinics', 'Urology Consultation'), ('clinics', 'Neurology Consultation'), ('clinics', 'Pulmonology Consultation'), ('clinics', 'Rheumatology Consultation'), ('clinics', 'Oncology Screening'),

  -- ================= EDU (100 Services) =================
  ('edu', 'New Student Enrollment/Admissions'), ('edu', 'Placement Test (English)'), ('edu', 'Placement Test (Math/Science)'), ('edu', 'Transfer Student Registration'), ('edu', 'School Tour / Info Session'),
  ('edu', 'Tuition Fee Payment'), ('edu', 'Installment Plan Setup'), ('edu', 'Financial Aid Application'), ('edu', 'Scholarship Interview'), ('edu', 'Refund Request'),
  ('edu', 'Academic Advising'), ('edu', 'Course Registration'), ('edu', 'Add/Drop Courses'), ('edu', 'Major Declaration / Change'), ('edu', 'Graduation Audit'),
  ('edu', 'Transcript Request'), ('edu', 'Enrollment Certificate Issuance'), ('edu', 'Student ID Card Printing'), ('edu', 'Lost ID Replacement'), ('edu', 'Alumni Services Registration'),
  ('edu', 'Parent-Teacher Meeting'), ('edu', 'Principal/Director Meeting'), ('edu', 'Student Counseling Session'), ('edu', 'Behavioral Intervention Meeting'), ('edu', 'Special Education Needs (SEN) Consult'),
  ('edu', 'General English Course (Adults)'), ('edu', 'General English Course (Kids)'), ('edu', 'Conversation Club Registration'), ('edu', 'IELTS Preparation Course'), ('edu', 'TOEFL Preparation Course'),
  ('edu', 'French Language Course'), ('edu', 'German Language Course'), ('edu', 'Arabic for Non-Native Speakers'), ('edu', 'Spanish Language Course'), ('edu', 'Language Certification Exam'),
  ('edu', 'Coding & Programming Bootcamp'), ('edu', 'Web Development Course'), ('edu', 'Data Science & AI Workshop'), ('edu', 'Graphic Design Course'), ('edu', 'Digital Marketing Certification'),
  ('edu', 'Robotics & STEM for Kids'), ('edu', 'Mental Math (UCMAS) Class'), ('edu', 'Chess Club Registration'), ('edu', 'Art & Drawing Workshop'), ('edu', 'Music Instrument Lesson'),
  ('edu', 'Private Tutoring (Math)'), ('edu', 'Private Tutoring (Science)'), ('edu', 'Private Tutoring (Languages)'), ('edu', 'Homework Help Session'), ('edu', 'Exam Revision Camp'),
  ('edu', 'Library Card Issuance'), ('edu', 'Book Borrowing/Return'), ('edu', 'Research Consultation'), ('edu', 'Study Room Reservation'), ('edu', 'Thesis Binding Service'),
  ('edu', 'School Bus Registration'), ('edu', 'Transport Route Inquiry'), ('edu', 'Cafeteria Meal Plan Setup'), ('edu', 'Uniform Purchase/Exchange'), ('edu', 'Locker Assignment'),
  ('edu', 'Extracurricular Activity Sign-up'), ('edu', 'Summer Camp Registration'), ('edu', 'Sports Team Tryouts'), ('edu', 'Drama/Theater Club'), ('edu', 'Debate Team Registration'),
  ('edu', 'IT Support for Students'), ('edu', 'E-Learning Portal Password Reset'), ('edu', 'Student Email Activation'), ('edu', 'Tablet/Laptop Configuration'), ('edu', 'Campus Wi-Fi Setup'),
  ('edu', 'University Application Assistance'), ('edu', 'Career Counseling'), ('edu', 'CV/Resume Writing Workshop'), ('edu', 'Mock Interview Session'), ('edu', 'Internship Placement Interview'),
  ('edu', 'Teacher Training Workshop'), ('edu', 'Curriculum Consultation'), ('edu', 'Administrative Inquiry'), ('edu', 'Submit a Complaint/Grievance'), ('edu', 'Lost and Found Claim'),

  -- ================= GOVERNMENT OFFICES (100 Services) =================
  ('government_offices', 'National ID Card Issuance'), ('government_offices', 'National ID Card Renewal'), ('government_offices', 'Lost ID Card Replacement'), ('government_offices', 'Update ID Information'), ('government_offices', 'ID Delivery/Collection'),
  ('government_offices', 'Passport Issuance'), ('government_offices', 'Passport Renewal'), ('government_offices', 'Lost Passport Replacement'), ('government_offices', 'Add Dependent to Passport'), ('government_offices', 'Passport Collection'),
  ('government_offices', 'Birth Certificate Extract'), ('government_offices', 'Death Certificate Extract'), ('government_offices', 'Marriage Certificate Extract'), ('government_offices', 'Divorce Certificate Extract'), ('government_offices', 'Family Record / Booklet Issuance'),
  ('government_offices', 'New Vehicle Registration'), ('government_offices', 'Vehicle License Renewal'), ('government_offices', 'Transfer Vehicle Ownership'), ('government_offices', 'Replace Lost Vehicle License'), ('government_offices', 'Customs Clearance for Vehicle'),
  ('government_offices', 'Driving License Test Booking'), ('government_offices', 'Driving License Issuance'), ('government_offices', 'Driving License Renewal'), ('government_offices', 'International Driving Permit'), ('government_offices', 'Replace Lost Driving License'),
  ('government_offices', 'Traffic Fines Inquiry'), ('government_offices', 'Traffic Fines Payment'), ('government_offices', 'Traffic Fine Dispute/Appeal'), ('government_offices', 'Vehicle Plate Replacement'), ('government_offices', 'Release Impounded Vehicle'),
  ('government_offices', 'Commercial Register Issuance'), ('government_offices', 'Commercial Register Renewal'), ('government_offices', 'Modify Commercial Register'), ('government_offices', 'Cancel Commercial Register'), ('government_offices', 'Trade Name Reservation'),
  ('government_offices', 'Tax File Opening'), ('government_offices', 'Income Tax Filing'), ('government_offices', 'Value Added Tax (VAT) Filing'), ('government_offices', 'Tax Clearance Certificate'), ('government_offices', 'Tax Dispute / Grievance'),
  ('government_offices', 'Work Permit Issuance (Expats)'), ('government_offices', 'Work Permit Renewal'), ('government_offices', 'Labor Complaint Submission'), ('government_offices', 'End of Service Settlement'), ('government_offices', 'Domestic Worker Visa App'),
  ('government_offices', 'Social Insurance Registration'), ('government_offices', 'Print Insurance Printout (Kaab Amal)'), ('government_offices', 'Pension Application'), ('government_offices', 'Pension Status Inquiry'), ('government_offices', 'Disability Benefit Claim'),
  ('government_offices', 'Municipal Building Permit'), ('government_offices', 'Shop Signboard License'), ('government_offices', 'Health/Sanitation Certificate'), ('government_offices', 'Land Survey Request'), ('government_offices', 'Municipal Fines Payment'),
  ('government_offices', 'Property Title Deed Transfer'), ('government_offices', 'Title Deed Verification'), ('government_offices', 'Mortgage Registration'), ('government_offices', 'Rent Contract Registration (Ejari)'), ('government_offices', 'Real Estate Dispute Filing'),
  ('government_offices', 'Tourist Visa Extension'), ('government_offices', 'Family Visit Visa Application'), ('government_offices', 'Final Exit Visa Processing'), ('government_offices', 'Residency (Iqama) Renewal'), ('government_offices', 'Sponsorship Transfer'),
  ('government_offices', 'Power of Attorney (POA) Issuance'), ('government_offices', 'Cancel Power of Attorney'), ('government_offices', 'Notarize Contract/Agreement'), ('government_offices', 'Legal Translation Authentication'), ('government_offices', 'Signature Authentication'),
  ('government_offices', 'Criminal Record Check / Clearance'), ('government_offices', 'File a Police Report'), ('government_offices', 'Lost & Found Claim'), ('government_offices', 'Good Conduct Certificate'), ('government_offices', 'Bail Payment'),
  ('government_offices', 'Public Utility (Water) Setup'), ('government_offices', 'Public Utility (Electricity) Setup'), ('government_offices', 'Utility Bill Dispute'), ('government_offices', 'Utility Disconnection Request'), ('government_offices', 'Clearance Certificate (Utilities)'),
  ('government_offices', 'Agricultural Land Permit'), ('government_offices', 'Industrial License Renewal'), ('government_offices', 'Tourism License Issuance'), ('government_offices', 'Environmental Approval'), ('government_offices', 'Chamber of Commerce Certification');

-- ==================== 2. Generate Randomized Services for Standard Categories (excluding 'other') ====================
  CREATE TEMP TABLE _standard_comp AS
  SELECT id AS company_id, category,
      CASE 
          WHEN r < 5  THEN 2  
          WHEN r < 15 THEN 3  
          WHEN r < 30 THEN 4  
          WHEN r < 55 THEN 5  
          WHEN r < 80 THEN 6  
          WHEN r < 95 THEN 7  
          ELSE 8
      END AS target_count
  FROM (
      SELECT id, category, ABS(RANDOM() % 100) AS r 
      FROM companies
      WHERE category != 'other'
  );

  WITH ShuffledStandard AS (
      SELECT 
          c.company_id,
          p.service_name,
          c.target_count,
          ROW_NUMBER() OVER(PARTITION BY c.company_id ORDER BY RANDOM()) as rn
      FROM _standard_comp c
      JOIN _service_pool p ON c.category = p.cat_key
  )
  INSERT INTO services (company_id, name)
  SELECT company_id, service_name
  FROM ShuffledStandard
  WHERE rn <= target_count;

  DROP TABLE _service_pool;
  DROP TABLE _standard_comp;

-- ==================== 3. TAILORED SERVICES FOR 'OTHER' CATEGORY (Inserted 1 by 1 based on strict matching) ====================

  -- 3.1 Printing & Bookstores
  INSERT INTO services (company_id, name) SELECT id, 'Document Printing & Copying' FROM companies WHERE category='other' AND (name LIKE '%Print%' OR name LIKE '%Bookstore%');
  INSERT INTO services (company_id, name) SELECT id, 'Binding & Laminating' FROM companies WHERE category='other' AND (name LIKE '%Print%' OR name LIKE '%Bookstore%');
  INSERT INTO services (company_id, name) SELECT id, 'Stationery Bulk Order' FROM companies WHERE category='other' AND name LIKE '%Bookstore%';
  INSERT INTO services (company_id, name) SELECT id, 'Large Format / Banner Printing' FROM companies WHERE category='other' AND name LIKE '%Print%';

  -- 3.2 Travel & Tours & Safari & Adventures
  INSERT INTO services (company_id, name) SELECT id, 'Flight Ticket Booking' FROM companies WHERE category='other' AND (name LIKE '%Travel%' OR name LIKE '%Tour%' OR name LIKE '%Safari%' OR name LIKE '%Adventures%');
  INSERT INTO services (company_id, name) SELECT id, 'Hotel Reservation' FROM companies WHERE category='other' AND (name LIKE '%Travel%' OR name LIKE '%Tour%' OR name LIKE '%Safari%' OR name LIKE '%Adventures%');
  INSERT INTO services (company_id, name) SELECT id, 'Visa Processing Consultation' FROM companies WHERE category='other' AND (name LIKE '%Travel%' OR name LIKE '%Tour%');
  INSERT INTO services (company_id, name) SELECT id, 'Safari/Camp Trip Booking' FROM companies WHERE category='other' AND (name LIKE '%Safari%' OR name LIKE '%Adventures%');
  INSERT INTO services (company_id, name) SELECT id, 'Guided Group Tour' FROM companies WHERE category='other' AND (name LIKE '%Tour%');

  -- 3.3 Tailoring & Embroidery
  INSERT INTO services (company_id, name) SELECT id, 'Custom Measurement & Fitting' FROM companies WHERE category='other' AND (name LIKE '%Tailor%' OR name LIKE '%Embroidery%');
  INSERT INTO services (company_id, name) SELECT id, 'Dress & Suit Alterations' FROM companies WHERE category='other' AND (name LIKE '%Tailor%' OR name LIKE '%Embroidery%');
  INSERT INTO services (company_id, name) SELECT id, 'Traditional Embroidery Request' FROM companies WHERE category='other' AND name LIKE '%Embroidery%';
  INSERT INTO services (company_id, name) SELECT id, 'Fabric Selection Consult' FROM companies WHERE category='other' AND name LIKE '%Tailor%';

  -- 3.4 Oud, Perfumes, Gifts, Crafts, Dates, Honey, Olive Oil, Prayer Supplies
  INSERT INTO services (company_id, name) SELECT id, 'Gift Wrapping & Packaging' FROM companies WHERE category='other' AND (name LIKE '%Oud%' OR name LIKE '%Gift%' OR name LIKE '%Dates%' OR name LIKE '%Honey%' OR name LIKE '%Olive%');
  INSERT INTO services (company_id, name) SELECT id, 'Perfume/Oud Custom Mix' FROM companies WHERE category='other' AND name LIKE '%Oud%';
  INSERT INTO services (company_id, name) SELECT id, 'Custom Handcrafted Souvenir' FROM companies WHERE category='other' AND (name LIKE '%Craft%' OR name LIKE '%Gift%');
  INSERT INTO services (company_id, name) SELECT id, 'Premium Box / Bulk Order' FROM companies WHERE category='other' AND (name LIKE '%Dates%' OR name LIKE '%Honey%' OR name LIKE '%Olive%');
  INSERT INTO services (company_id, name) SELECT id, 'Prayer Mats & Quran Editions' FROM companies WHERE category='other' AND name LIKE '%Prayer%';

  -- 3.5 Security Services
  INSERT INTO services (company_id, name) SELECT id, 'Security Guard Hire Inquiry' FROM companies WHERE category='other' AND name LIKE '%Security%';
  INSERT INTO services (company_id, name) SELECT id, 'Site Assessment & Quote' FROM companies WHERE category='other' AND name LIKE '%Security%';
  INSERT INTO services (company_id, name) SELECT id, 'Alarm / Camera System Setup' FROM companies WHERE category='other' AND name LIKE '%Security%';

  -- 3.6 Real Estate
  INSERT INTO services (company_id, name) SELECT id, 'Property Viewing Appointment' FROM companies WHERE category='other' AND (name LIKE '%Real Estate%' OR name LIKE '%Estate%');
  INSERT INTO services (company_id, name) SELECT id, 'Lease Contract Signing' FROM companies WHERE category='other' AND (name LIKE '%Real Estate%' OR name LIKE '%Estate%');
  INSERT INTO services (company_id, name) SELECT id, 'Property Appraisal Consultation' FROM companies WHERE category='other' AND (name LIKE '%Real Estate%' OR name LIKE '%Estate%');
  INSERT INTO services (company_id, name) SELECT id, 'Rent Payment Collection' FROM companies WHERE category='other' AND (name LIKE '%Real Estate%' OR name LIKE '%Estate%');

  -- 3.7 Photography
  INSERT INTO services (company_id, name) SELECT id, 'Passport / ID Photoshoot' FROM companies WHERE category='other' AND name LIKE '%Photography%';
  INSERT INTO services (company_id, name) SELECT id, 'Wedding Package Consultation' FROM companies WHERE category='other' AND name LIKE '%Photography%';
  INSERT INTO services (company_id, name) SELECT id, 'Family Portrait Session' FROM companies WHERE category='other' AND name LIKE '%Photography%';
  INSERT INTO services (company_id, name) SELECT id, 'Photo Printing & Framing' FROM companies WHERE category='other' AND name LIKE '%Photography%';

  -- 3.8 Gym, Fitness & Pilates
  INSERT INTO services (company_id, name) SELECT id, 'Monthly Membership Renewal' FROM companies WHERE category='other' AND (name LIKE '%Gym%' OR name LIKE '%Fitness%' OR name LIKE '%Pilates%');
  INSERT INTO services (company_id, name) SELECT id, 'Personal Training Session' FROM companies WHERE category='other' AND (name LIKE '%Gym%' OR name LIKE '%Fitness%' OR name LIKE '%Pilates%');
  INSERT INTO services (company_id, name) SELECT id, 'Group Class Booking' FROM companies WHERE category='other' AND (name LIKE '%Gym%' OR name LIKE '%Fitness%' OR name LIKE '%Pilates%');
  INSERT INTO services (company_id, name) SELECT id, 'Fitness Assessment Test' FROM companies WHERE category='other' AND (name LIKE '%Gym%' OR name LIKE '%Fitness%');

  -- 3.9 Food, Cafe, Restaurants & Delicatessen
  INSERT INTO services (company_id, name) SELECT id, 'Table Reservation (Dine-in)' FROM companies WHERE category='other' AND (name LIKE '%Coffee%' OR name LIKE '%Cafe%' OR name LIKE '%Restaurant%' OR name LIKE '%Delicatessen%');
  INSERT INTO services (company_id, name) SELECT id, 'Takeaway Order Pickup' FROM companies WHERE category='other' AND (name LIKE '%Coffee%' OR name LIKE '%Cafe%' OR name LIKE '%Restaurant%' OR name LIKE '%Delicatessen%');
  INSERT INTO services (company_id, name) SELECT id, 'Event Catering Inquiry' FROM companies WHERE category='other' AND (name LIKE '%Restaurant%' OR name LIKE '%Delicatessen%');
  INSERT INTO services (company_id, name) SELECT id, 'Specialty Coffee Tasting' FROM companies WHERE category='other' AND (name LIKE '%Coffee%' OR name LIKE '%Cafe%');

  -- 3.10 Bakery & Sweets
  INSERT INTO services (company_id, name) SELECT id, 'Fresh Bread Pre-order Pickup' FROM companies WHERE category='other' AND (name LIKE '%Bakery%' OR name LIKE '%Sweet%');
  INSERT INTO services (company_id, name) SELECT id, 'Custom Cake Design & Order' FROM companies WHERE category='other' AND (name LIKE '%Bakery%' OR name LIKE '%Sweet%');
  INSERT INTO services (company_id, name) SELECT id, 'Event Pastry Catering' FROM companies WHERE category='other' AND (name LIKE '%Bakery%' OR name LIKE '%Sweet%');
  INSERT INTO services (company_id, name) SELECT id, 'Sweet Box / Gift Pickup' FROM companies WHERE category='other' AND name LIKE '%Sweet%';

  -- 3.11 Supermarket & Markets
  INSERT INTO services (company_id, name) SELECT id, 'Grocery Order Pickup' FROM companies WHERE category='other' AND (name LIKE '%Supermarket%' OR name LIKE '%Market%');
  INSERT INTO services (company_id, name) SELECT id, 'Bulk Purchase Inquiry' FROM companies WHERE category='other' AND (name LIKE '%Supermarket%' OR name LIKE '%Market%');
  INSERT INTO services (company_id, name) SELECT id, 'Loyalty Card Registration' FROM companies WHERE category='other' AND (name LIKE '%Supermarket%' OR name LIKE '%Market%');

  -- 3.12 Car Wash
  INSERT INTO services (company_id, name) SELECT id, 'Exterior & Interior Wash' FROM companies WHERE category='other' AND name LIKE '%Car Wash%';
  INSERT INTO services (company_id, name) SELECT id, 'VIP Detailing & Polish' FROM companies WHERE category='other' AND name LIKE '%Car Wash%';
  INSERT INTO services (company_id, name) SELECT id, 'Engine Cleaning' FROM companies WHERE category='other' AND name LIKE '%Car Wash%';

  -- 3.13 Auto Service, Repair & Maintenance
  INSERT INTO services (company_id, name) SELECT id, 'Routine Maintenance (Oil Change)' FROM companies WHERE category='other' AND (name LIKE '%Auto Service%' OR name LIKE '%Car Service%' OR name LIKE '%Auto Center%' OR name LIKE '%Auto Care%');
  INSERT INTO services (company_id, name) SELECT id, 'Computer Diagnostics' FROM companies WHERE category='other' AND (name LIKE '%Auto Service%' OR name LIKE '%Car Service%' OR name LIKE '%Auto Center%' OR name LIKE '%Auto Care%');
  INSERT INTO services (company_id, name) SELECT id, 'Brake Inspection & Repair' FROM companies WHERE category='other' AND (name LIKE '%Auto Service%' OR name LIKE '%Car Service%' OR name LIKE '%Auto Center%' OR name LIKE '%Auto Care%');
  INSERT INTO services (company_id, name) SELECT id, 'AC Freon Recharge' FROM companies WHERE category='other' AND (name LIKE '%Auto Service%' OR name LIKE '%Car Service%' OR name LIKE '%Auto Center%' OR name LIKE '%Auto Care%');

  -- 3.14 Auto Parts
  INSERT INTO services (company_id, name) SELECT id, 'Spare Parts Inquiry' FROM companies WHERE category='other' AND name LIKE '%Auto Parts%';
  INSERT INTO services (company_id, name) SELECT id, 'Accessory Installation Booking' FROM companies WHERE category='other' AND name LIKE '%Auto Parts%';
  INSERT INTO services (company_id, name) SELECT id, 'Battery Purchase & Replacement' FROM companies WHERE category='other' AND name LIKE '%Auto Parts%';

  -- 3.15 Car Rental
  INSERT INTO services (company_id, name) SELECT id, 'Vehicle Booking (Daily/Weekly)' FROM companies WHERE category='other' AND name LIKE '%Rental%';
  INSERT INTO services (company_id, name) SELECT id, 'Long-term Lease Consultation' FROM companies WHERE category='other' AND name LIKE '%Rental%';
  INSERT INTO services (company_id, name) SELECT id, 'Vehicle Return & Inspection' FROM companies WHERE category='other' AND name LIKE '%Rental%';

  -- 3.16 Jewelry
  INSERT INTO services (company_id, name) SELECT id, 'Ring Resizing & Polishing' FROM companies WHERE category='other' AND name LIKE '%Jewelry%';
  INSERT INTO services (company_id, name) SELECT id, 'Custom Jewelry Design' FROM companies WHERE category='other' AND name LIKE '%Jewelry%';
  INSERT INTO services (company_id, name) SELECT id, 'Jewelry Valuation & Purchasing' FROM companies WHERE category='other' AND name LIKE '%Jewelry%';
  INSERT INTO services (company_id, name) SELECT id, 'Watch Repair & Battery Change' FROM companies WHERE category='other' AND name LIKE '%Jewelry%';

  -- 3.17 Event Planning
  INSERT INTO services (company_id, name) SELECT id, 'Wedding Planning Consultation' FROM companies WHERE category='other' AND name LIKE '%Event%';
  INSERT INTO services (company_id, name) SELECT id, 'Hall / Venue Reservation' FROM companies WHERE category='other' AND name LIKE '%Event%';
  INSERT INTO services (company_id, name) SELECT id, 'Decoration & Theme Setup' FROM companies WHERE category='other' AND name LIKE '%Event%';

  -- 3.18 Salon
  INSERT INTO services (company_id, name) SELECT id, 'Haircut & Styling' FROM companies WHERE category='other' AND name LIKE '%Salon%';
  INSERT INTO services (company_id, name) SELECT id, 'Hair Coloring & Treatment' FROM companies WHERE category='other' AND name LIKE '%Salon%';
  INSERT INTO services (company_id, name) SELECT id, 'Bridal Makeup Package' FROM companies WHERE category='other' AND name LIKE '%Salon%';
  INSERT INTO services (company_id, name) SELECT id, 'Manicure & Pedicure' FROM companies WHERE category='other' AND name LIKE '%Salon%';

  -- 3.19 Laundry
  INSERT INTO services (company_id, name) SELECT id, 'Dry Cleaning Drop-off' FROM companies WHERE category='other' AND name LIKE '%Laundry%';
  INSERT INTO services (company_id, name) SELECT id, 'Ironing & Pressing' FROM companies WHERE category='other' AND name LIKE '%Laundry%';
  INSERT INTO services (company_id, name) SELECT id, 'Carpet & Heavy Blanket Cleaning' FROM companies WHERE category='other' AND name LIKE '%Laundry%';

  -- 3.20 Tech, Computer & Repair (Mobiles, Electronics, Software)
  INSERT INTO services (company_id, name) SELECT id, 'Device Diagnostic & Repair' FROM companies WHERE category='other' AND (name LIKE '%Repair%' OR name LIKE '%Computer%' OR name LIKE '%Software%');
  INSERT INTO services (company_id, name) SELECT id, 'Screen & Battery Replacement' FROM companies WHERE category='other' AND name LIKE '%Repair%';
  INSERT INTO services (company_id, name) SELECT id, 'Software Installation & Formatting' FROM companies WHERE category='other' AND (name LIKE '%Computer%' OR name LIKE '%Software%');
  INSERT INTO services (company_id, name) SELECT id, 'Custom Software Consultation' FROM companies WHERE category='other' AND name LIKE '%Software%';
  INSERT INTO services (company_id, name) SELECT id, 'IT & Network Support Inquiry' FROM companies WHERE category='other' AND name LIKE '%Computer%';

  -- 3.21 Shipping & Courier
  INSERT INTO services (company_id, name) SELECT id, 'Parcel Drop-off & Shipping' FROM companies WHERE category='other' AND (name LIKE '%Courier%' OR name LIKE '%Shipping%');
  INSERT INTO services (company_id, name) SELECT id, 'Cargo Documentation & Customs' FROM companies WHERE category='other' AND name LIKE '%Shipping%';
  INSERT INTO services (company_id, name) SELECT id, 'Shipment Tracking Inquiry' FROM companies WHERE category='other' AND (name LIKE '%Courier%' OR name LIKE '%Shipping%');

  -- 3.22 Insurance
  INSERT INTO services (company_id, name) SELECT id, 'Policy Inquiry & Quote' FROM companies WHERE category='other' AND name LIKE '%Insurance%';
  INSERT INTO services (company_id, name) SELECT id, 'Insurance Claim Submission' FROM companies WHERE category='other' AND name LIKE '%Insurance%';
  INSERT INTO services (company_id, name) SELECT id, 'Policy Renewal' FROM companies WHERE category='other' AND name LIKE '%Insurance%';

  -- 3.23 Pharmacy, Skincare & Medical Supplies
  INSERT INTO services (company_id, name) SELECT id, 'Prescription Dispensing' FROM companies WHERE category='other' AND name LIKE '%Pharmacy%';
  INSERT INTO services (company_id, name) SELECT id, 'Vitamins & Supplement Consult' FROM companies WHERE category='other' AND (name LIKE '%Pharmacy%' OR name LIKE '%Medical Supplies%');
  INSERT INTO services (company_id, name) SELECT id, 'Blood Pressure / Sugar Check' FROM companies WHERE category='other' AND name LIKE '%Pharmacy%';
  INSERT INTO services (company_id, name) SELECT id, 'Medical Equipment Inquiry' FROM companies WHERE category='other' AND name LIKE '%Medical Supplies%';
  INSERT INTO services (company_id, name) SELECT id, 'Skincare & Cosmetics Consult' FROM companies WHERE category='other' AND (name LIKE '%Pharmacy%' OR name LIKE '%Skincare%');

  -- 3.24 Furniture
  INSERT INTO services (company_id, name) SELECT id, 'Showroom Viewing Appointment' FROM companies WHERE category='other' AND name LIKE '%Furniture%';
  INSERT INTO services (company_id, name) SELECT id, 'Custom Furniture Order' FROM companies WHERE category='other' AND name LIKE '%Furniture%';
  INSERT INTO services (company_id, name) SELECT id, 'Delivery & Installation Scheduling' FROM companies WHERE category='other' AND name LIKE '%Furniture%';

  -- 3.25 Flowers & Florists
  INSERT INTO services (company_id, name) SELECT id, 'Bouquet Custom Order' FROM companies WHERE category='other' AND (name LIKE '%Flower%' OR name LIKE '%Florist%');
  INSERT INTO services (company_id, name) SELECT id, 'Event & Wedding Flower Decor' FROM companies WHERE category='other' AND (name LIKE '%Flower%' OR name LIKE '%Florist%');
  INSERT INTO services (company_id, name) SELECT id, 'Flower Delivery Scheduling' FROM companies WHERE category='other' AND (name LIKE '%Flower%' OR name LIKE '%Florist%');

  -- 3.26 other not Selected
  INSERT INTO services (company_id, name)
  SELECT id, 'General Inquiry' FROM companies
  WHERE id NOT IN (SELECT DISTINCT company_id FROM services WHERE company_id IS NOT NULL);

-- ==================== SmartLine: Realistic queues (history + today's active) ====================
  -- Time base: Cairo (UTC+3), same convention as the seed.

  -- 0) Helpers
  CREATE TEMP TABLE _now AS
  SELECT datetime('now','+3 hours') AS ts,
        date('now','+3 hours')     AS today,
        CAST(strftime('%H','now','+3 hours') AS INT)*60
      + CAST(strftime('%M','now','+3 hours') AS INT)  AS nowm;

  CREATE TEMP TABLE _nums AS
  WITH RECURSIVE r(k) AS (SELECT 1 UNION ALL SELECT k+1 FROM r WHERE k < 1000)
  SELECT k FROM r;

  CREATE INDEX IF NOT EXISTS idx_services_company_active ON services(company_id, is_active);

  -- 1) Company hours (NULL -> 09:00-21:00) and daily share of providers working (35%..90%)
  CREATE TEMP TABLE _co0 AS
  SELECT c.id AS company_id,
    CAST(substr(COALESCE(c.opening_time,'09:00'),1,2) AS INT)*60
      + CAST(substr(COALESCE(c.opening_time,'09:00'),4,2) AS INT) AS open_m,
    CAST(substr(COALESCE(c.closing_time,'21:00'),1,2) AS INT)*60
      + CAST(substr(COALESCE(c.closing_time,'21:00'),4,2) AS INT) AS close_m
  FROM companies c;

  CREATE TEMP TABLE _co AS
  SELECT company_id, open_m,
    CASE WHEN (close_m - open_m + 1440) % 1440 = 0 THEN 1440
        ELSE (close_m - open_m + 1440) % 1440 END AS span,
    35 + ABS(RANDOM()) % 56 AS share_pct
  FROM _co0;

  -- 2) Providers that belong to a company (manager_id -> companies.manager_id)
  CREATE TEMP TABLE _pb AS
  SELECT p.id AS pid, p.created_at AS pstart, c.id AS company_id
  FROM providers p
  JOIN companies c ON c.manager_id = p.manager_id
  WHERE p.manager_id IS NOT NULL;

  -- 3) Per-provider stats
  --    hist_span : full days from provider start up to (not incl.) today, capped at 730
  --    rate_m    : closed queues per month, 15..25
  CREATE TEMP TABLE _pr1 AS
  SELECT b.pid, b.pstart, b.company_id,
    MAX(0, MIN(CAST(julianday(n.today) - julianday(date(b.pstart)) AS INT), 1095)) AS hist_span,
    15 + ABS(RANDOM()) % 11      AS rate_m,
    90 + ABS(RANDOM()) % 21      AS noise,          -- 90..110 %
    co.open_m, co.span, co.share_pct,
    (n.nowm - co.open_m + 1440) % 1440 AS offset_now
  FROM _pb b
  CROSS JOIN _now n
  JOIN _co co ON co.company_id = b.company_id;

  CREATE TEMP TABLE _pr AS
  SELECT *, CAST(hist_span * rate_m / 30.44 * noise / 100.0 + 0.5 AS INT) AS n_closed
  FROM _pr1;

  -- 4) One row per closed queue to create (random day + random minute inside shift)
  CREATE TEMP TABLE _hist AS
  SELECT p.pid, p.company_id, p.pstart, p.open_m, p.span, p.hist_span,
    ABS(RANDOM()) % p.hist_span AS dd,
    ABS(RANDOM()) % p.span      AS mm,
    4 + ABS(RANDOM()) % 22      AS dur            -- service length 4..25 min
  FROM _pr p
  JOIN _nums x ON x.k <= p.n_closed;

  -- 5) Insert closed history
  INSERT INTO queues (provider_id, company_id, status, service_id, created_at, closed_at)
  SELECT h.pid, h.company_id, 'closed',
        (SELECT s.id FROM services s
          WHERE s.company_id = h.company_id AND s.is_active = 1
          ORDER BY RANDOM() LIMIT 1),
        h.ca,
        MIN(datetime(h.ca, '+' || h.life || ' minutes'), h.cap)
  FROM (
    SELECT pid, company_id, cap,
      MIN(60 + ABS(RANDOM()) % 180, span - mm) AS life,
      MIN(MAX(pstart,
              datetime(date(pstart, '+' || dd || ' days'),
                      '+' || (open_m + mm) || ' minutes')),
          cap) AS ca
    FROM _hist, (SELECT datetime(date(ts), '-1 minutes') AS cap FROM _now)
  ) h
  ORDER BY h.ca;

  -- 6) Today's active queues
  --    Only if the company is open right now, and a provider is online with
  --    probability share * ramp (higher at shift start, ~92% cap).
  CREATE TEMP TABLE _act AS
  SELECT pid, company_id, pstart, hist_span, offset_now, span,
    MIN(0.92, share_pct / 100.0 * (1.15 - 0.3 * (1.0 * offset_now / span))) AS pct,
    ABS(RANDOM()) % 1000 AS roll
  FROM _pr;

  CREATE TEMP TABLE _act2 AS
  SELECT pid, company_id, pstart,
        ABS(RANDOM()) % (offset_now + 1) AS back_min
  FROM _act
  WHERE hist_span >= 1
    AND offset_now < span
    AND roll < pct * 1000;

  INSERT INTO queues (provider_id, company_id, status, service_id, created_at, closed_at)
  SELECT a.pid, a.company_id, 'active',
        (SELECT s.id FROM services s
          WHERE s.company_id = a.company_id AND s.is_active = 1
          ORDER BY RANDOM() LIMIT 1),
        MAX(a.pstart, datetime((SELECT ts FROM _now), '-' || a.back_min || ' minutes')),
        NULL
  FROM _act2 a
  ORDER BY a.pid;

  -- 7) Cleanup
  DROP TABLE _now;
  DROP TABLE _nums;
  DROP TABLE _co0;
  DROP TABLE _co;
  DROP TABLE _pb;
  DROP TABLE _pr1;
  DROP TABLE _pr;
  DROP TABLE _hist;
  DROP TABLE _act;
  DROP TABLE _act2;

  -- ==================== Checks ====================
  SELECT status, COUNT(*) AS total FROM queues GROUP BY status;

  -- must be 0: no queue before its provider existed
  SELECT COUNT(*) AS bad_before_provider
  FROM queues q JOIN providers p ON p.id = q.provider_id
  WHERE q.created_at < p.created_at;

  -- must be 0: service belongs to the queue's company
  SELECT COUNT(*) AS bad_service
  FROM queues q JOIN services s ON s.id = q.service_id
  WHERE s.company_id <> q.company_id;

  -- must be 0: no closed queue in the future
  SELECT COUNT(*) AS future_closed
  FROM queues WHERE status = 'closed' AND closed_at > datetime('now','+3 hours');

-- ==================== Generate Realistic Queue Entries ====================
  BEGIN;
  -- 0) Helpers
  CREATE TEMP TABLE _k AS
  WITH RECURSIVE r(k) AS (SELECT 1 UNION ALL SELECT k + 1 FROM r WHERE k < 120)
  SELECT k FROM r;

  -- 1) Average service time per company (seconds), with company personality
  CREATE TEMP TABLE _svc_co AS
  SELECT c.id AS company_id,
    (CASE
      WHEN lower(c.name) LIKE '%bakery%' OR lower(c.name) LIKE '%bak%' OR lower(c.name) LIKE '%sweet%' THEN 300
      WHEN lower(c.name) LIKE '%cafe%' OR lower(c.name) LIKE '%coffee%' THEN 240
      WHEN lower(c.name) LIKE '%restaurant%' OR lower(c.name) LIKE '%koshary%' THEN 360
      WHEN lower(c.name) LIKE '%bookstore%' OR lower(c.name) LIKE '%print%' THEN 300
      WHEN lower(c.name) LIKE '%pharmacy%' THEN 360
      WHEN lower(c.name) LIKE '%car wash%' THEN 900
      WHEN lower(c.name) LIKE '%salon%' OR lower(c.name) LIKE '%tailor%' THEN 1500
      WHEN lower(c.name) LIKE '%photography%' THEN 1200
      WHEN lower(c.name) LIKE '%rental%' THEN 1200
      WHEN lower(c.name) LIKE '%auto%' OR lower(c.name) LIKE '%car %' THEN 1200
      WHEN lower(c.name) LIKE '%repair%' THEN 900
      WHEN lower(c.name) LIKE '%travel%' OR lower(c.name) LIKE '%tour%' THEN 1200
      WHEN lower(c.name) LIKE '%jewelry%' THEN 900
      WHEN c.category = 'banks' THEN 600
      WHEN c.category = 'telecom' THEN 720
      WHEN c.category = 'clinics' THEN 900
      WHEN c.category = 'edu' THEN 720
      WHEN c.category = 'government_offices' THEN 1200
      ELSE 600
    END) * (80 + ABS(RANDOM()) % 46) / 100.0 AS svc_sec
  FROM companies c;

  -- 2) Per-queue config: daily variation on service time, queue length in seconds
  CREATE TEMP TABLE _q AS
  SELECT q.id AS qid, q.provider_id, q.status, q.created_at AS qstart,
    COALESCE(q.closed_at, datetime('now', '+3 hours')) AS qend,
    s.svc_sec * (85 + ABS(RANDOM()) % 31) / 100.0 AS svc_q,
    CASE WHEN q.provider_id IN (273, 28) THEN 1 ELSE 0 END AS heavy_p
  FROM queues q
  JOIN _svc_co s ON s.company_id = q.company_id;

  CREATE TEMP TABLE _q2 AS
  SELECT qid, provider_id, status, qstart, heavy_p, svc_q,
    (julianday(qend) - julianday(qstart)) * 86400.0 AS lsec
  FROM _q;

  -- 3) Number of entries per queue, and index of the currently served entry (active only)
  CREATE TEMP TABLE _q3 AS
  SELECT qid, provider_id, status, qstart, heavy_p, svc_q, lsec,
    CAST(lsec / svc_q AS INT) + 1 AS kcur,
    CASE
      WHEN status = 'closed' THEN
        MIN(120, MAX(1, CAST(lsec / svc_q *
              CASE WHEN heavy_p = 1 THEN 0.92 + (ABS(RANDOM()) % 9) / 100.0
                  ELSE 0.55 + (ABS(RANDOM()) % 41) / 100.0 END AS INT)))
      ELSE
        MIN(120, CAST(lsec / svc_q AS INT) + 1
              + ABS(RANDOM()) % CASE WHEN heavy_p = 1 THEN 7 ELSE 5 END)
    END AS n_total
  FROM _q2;

  -- 4) Users pool (excluding the heavy demo users)
  CREATE TEMP TABLE _uids AS
  SELECT ROW_NUMBER() OVER (ORDER BY id) AS rn,
        id AS uid,
        lower(replace(name, ' ', '_')) AS uname
  FROM users
  WHERE id NOT IN (63, 127, 729, 1);

  -- 5) One row per entry to generate
  CREATE TEMP TABLE _ent AS
  SELECT q.qid, q.status, q.qstart, q.lsec, q.kcur, q.n_total, k.k,
    q.lsec / q.n_total AS gap,
    (ABS(RANDOM()) % 100 < 25) AS is_guest,
    (ABS(RANDOM()) % (SELECT COUNT(*) FROM _uids)) + 1 AS uidx,
    (ABS(RANDOM()) % 800) / 1000.0 AS jit
  FROM _q3 q
  JOIN _k k ON k.k <= q.n_total;

  -- 6) joined_at (sequential inside the queue lifetime) and status
  CREATE TEMP TABLE _ent2 AS
  SELECT e.qid, e.k, e.uidx, e.is_guest,
    datetime(e.qstart, '+' || CAST((e.k - 1) * e.gap + e.jit * e.gap AS INT) || ' seconds') AS joined_at,
    CASE
      WHEN e.status = 'closed' THEN 'done'
      WHEN e.k < e.kcur THEN 'done'
      WHEN e.k = e.kcur THEN 'serving'
      ELSE 'waiting'
    END AS st
  FROM _ent e;

  -- 7) Insert regular entries (registered users and guests)
  INSERT INTO queue_entries (queue_id, user_id, user_name, position, status, joined_at, ip_address)
  SELECT e.qid,
    CASE WHEN e.is_guest = 1 THEN NULL ELSE u.uid END,
    u.uname,
    e.k,
    e.st,
    e.joined_at,
    CASE WHEN e.is_guest = 1
        THEN printf('%d.%d.%d.%d', 41 + ABS(RANDOM()) % 4, ABS(RANDOM()) % 256,
                    ABS(RANDOM()) % 256, 1 + ABS(RANDOM()) % 254)
        ELSE printf('41.%d.%d.%d', u.uid % 200, (u.uid * 7) % 256, (u.uid * 13) % 254 + 1)
    END
  FROM _ent2 e
  JOIN _uids u ON u.rn = e.uidx;

  -- 8) Heavy demo users: 25-30 entries each, spread over closed queues
  CREATE TEMP TABLE _hid (uid INTEGER);
  INSERT INTO _hid (uid) VALUES (63), (127), (171), (1);

  CREATE TEMP TABLE _hcount AS
  SELECT uid, 12 + ABS(RANDOM()) % 20 AS n_entries FROM _hid;

  CREATE TEMP TABLE _qc AS
  SELECT ROW_NUMBER() OVER (ORDER BY qid) AS rn, qid, qstart, lsec
  FROM _q3
  WHERE status = 'closed';

  CREATE TEMP TABLE _hv AS
  SELECT hc.uid,
    ROW_NUMBER() OVER (PARTITION BY hc.uid ORDER BY RANDOM()) AS k,
    (ABS(RANDOM()) % (SELECT COUNT(*) FROM _qc)) + 1 AS qidx
  FROM _hcount hc
  JOIN _k k ON k.k <= hc.n_entries;

  INSERT INTO queue_entries (queue_id, user_id, user_name, position, status, joined_at, ip_address)
  SELECT qc.qid,
    u.id,
    lower(replace(u.name, ' ', '_')),
    (SELECT COUNT(*) FROM queue_entries x WHERE x.queue_id = qc.qid) + 1,
    'done',
    datetime(qc.qstart, '+' || CAST(ABS(RANDOM()) % MAX(1, CAST(qc.lsec AS INT)) AS INT) || ' seconds'),
    printf('41.%d.%d.%d', u.id % 200, (u.id * 7) % 256, (u.id * 13) % 254 + 1)
  FROM _hv hv
  JOIN _qc qc ON qc.rn = hv.qidx
  JOIN users u ON u.id = hv.uid;

  -- 9) Cleanup
  DROP TABLE _k;
  DROP TABLE _svc_co;
  DROP TABLE _q;
  DROP TABLE _q2;
  DROP TABLE _q3;
  DROP TABLE _uids;
  DROP TABLE _ent;
  DROP TABLE _ent2;
  DROP TABLE _hid;
  DROP TABLE _heavy;
  DROP TABLE _qc;
  DROP TABLE _hv;
  DROP TABLE _hcount;

  COMMIT;

  -- ==================== Checks ====================
  SELECT status, COUNT(*) AS total FROM queue_entries GROUP BY status;

  -- Must be 0: no entry joined before its queue started
  SELECT COUNT(*) AS before_queue
  FROM queue_entries e JOIN queues q ON q.id = e.queue_id
  WHERE e.joined_at < q.created_at;

  -- Must be 0: no entry joined after its queue closed
  SELECT COUNT(*) AS after_close
  FROM queue_entries e JOIN queues q ON q.id = e.queue_id
  WHERE q.status = 'closed' AND e.joined_at > q.closed_at;

  -- Must be 0: no entry joined in the future
  SELECT COUNT(*) AS future_entry
  FROM queue_entries WHERE joined_at > datetime('now', '+3 hours');

  -- Must be 0: no closed queue contains waiting or serving entries
  SELECT COUNT(*) AS open_in_closed
  FROM queue_entries e JOIN queues q ON q.id = e.queue_id
  WHERE q.status = 'closed' AND e.status <> 'done';

  -- Must be 0: no active queue has more than one serving entry
  SELECT COUNT(*) AS multi_serving
  FROM (SELECT queue_id FROM queue_entries WHERE status = 'serving'
        GROUP BY queue_id HAVING COUNT(*) > 1);

  -- Expected guest share: approximately 25%
  SELECT ROUND(AVG(user_id IS NULL) * 100, 1) AS guest_pct FROM queue_entries;

-- ==================== Service Logs From Queue Entries ====================
  BEGIN;

  -- 0) Reset service logs and fix queue positions by join time
  DELETE FROM service_logs;
  CREATE INDEX IF NOT EXISTS idx_qe_queue_joined ON queue_entries(queue_id, joined_at);

  UPDATE queue_entries
  SET position = (
    SELECT COUNT(*) FROM queue_entries x
    WHERE x.queue_id = queue_entries.queue_id
      AND (x.joined_at < queue_entries.joined_at
          OR (x.joined_at = queue_entries.joined_at AND x.id <= queue_entries.id))
  );

  -- 1) Entries that get a log (served or being served)
  CREATE TEMP TABLE _ent AS
  SELECT e.id AS eid, e.queue_id, e.position AS pos, e.status, e.user_id, e.user_name, e.ip_address,
    julianday(e.joined_at) AS jd,
    q.company_id,
    julianday(COALESCE(q.closed_at, datetime('now','+3 hours'))) AS qend_jd,
    (julianday(COALESCE(q.closed_at, datetime('now','+3 hours'))) - julianday(q.created_at)) * 86400.0 / c.n AS avg_sec
  FROM queue_entries e
  JOIN queues q ON q.id = e.queue_id
  JOIN (SELECT queue_id, COUNT(*) AS n FROM queue_entries GROUP BY queue_id) c ON c.queue_id = e.queue_id
  WHERE e.status IN ('done', 'serving');

  -- 2) Per-entry service duration
  CREATE TEMP TABLE _ent2 AS
  SELECT *,
    jd + (60 + ABS(RANDOM()) % 541) / 86400.0 AS ready_jd,
    avg_sec * (70 + ABS(RANDOM()) % 31) / 100.0 AS dur_sec
  FROM _ent;

  CREATE INDEX idx_ent2 ON _ent2(queue_id, pos);

  -- 3) Sequential timing per queue: start = max(joined, previous end), clamped to queue end
  CREATE TEMP TABLE _chain AS
  WITH RECURSIVE ch(eid, queue_id, pos, s_jd, e_jd) AS (
    SELECT x.eid, x.queue_id, x.pos,
          MIN(x.ready_jd, x.qend_jd),
          MIN(MIN(x.ready_jd, x.qend_jd) + x.dur_sec / 86400.0, x.qend_jd)
    FROM _ent2 x
    WHERE x.pos = 1
    UNION ALL
    SELECT x.eid, x.queue_id, x.pos,
          MIN(MAX(x.ready_jd, ch.e_jd), x.qend_jd),
          MIN(MIN(MAX(x.ready_jd, ch.e_jd), x.qend_jd) + x.dur_sec / 86400.0, x.qend_jd)
    FROM ch
    JOIN _ent2 x ON x.queue_id = ch.queue_id AND x.pos = ch.pos + 1
  )
  SELECT * FROM ch;

  -- 4) Insert service logs
  --    Stars depend on the company profile (company id % 5):
  --    0 = strong, 1-2 = average, 3 = weak, 4 = bad
  --    About 35% of served entries have no rating.
  INSERT INTO service_logs (queue_id, queue_entry_id, user_id, user_name, company_name,
                            start_time, end_time, ip_address, stars)
  SELECT s.queue_id, s.eid, s.user_id, s.user_name, s.company_name,
        datetime(s.s_jd),
        CASE WHEN s.status = 'serving' THEN NULL ELSE datetime(s.e_jd) END,
        s.ip_address,
        CASE
          WHEN s.status = 'serving' THEN NULL
          WHEN s.r < 35 THEN NULL
          WHEN s.cprofile = 0 THEN CASE WHEN s.r2 < 70 THEN 5 WHEN s.r2 < 90 THEN 4 WHEN s.r2 < 97 THEN 3 ELSE 2 END
          WHEN s.cprofile = 3 THEN CASE WHEN s.r2 < 5 THEN 5 WHEN s.r2 < 20 THEN 4 WHEN s.r2 < 40 THEN 3 WHEN s.r2 < 60 THEN 2 ELSE 1 END
          WHEN s.cprofile = 4 THEN CASE WHEN s.r2 < 3 THEN 4 WHEN s.r2 < 25 THEN 3 WHEN s.r2 < 35 THEN 2 ELSE 1 END
          ELSE CASE WHEN s.r2 < 35 THEN 5 WHEN s.r2 < 70 THEN 4 WHEN s.r2 < 85 THEN 3 WHEN s.r2 < 95 THEN 2 ELSE 1 END
        END
  FROM (
    SELECT c.s_jd, c.e_jd, x.queue_id, x.eid, x.status, x.user_id, x.user_name, x.ip_address,
          co.name AS company_name,
          co.id % 5 AS cprofile,
          ABS(RANDOM()) % 100 AS r,
          ABS(RANDOM()) % 100 AS r2
    FROM _chain c
    JOIN _ent2 x ON x.eid = c.eid
    JOIN companies co ON co.id = x.company_id
  ) s;

  -- 5) Cleanup
  DROP TABLE _ent;
  DROP TABLE _ent2;
  DROP TABLE _chain;

  COMMIT;

  -- ==================== Checks ====================
  -- لازم يكون عدد الـ logs = عدد الـ entries اللي حالتها done أو serving
  SELECT (SELECT COUNT(*) FROM service_logs) AS logs,
        (SELECT COUNT(*) FROM queue_entries WHERE status IN ('done','serving')) AS expected;

  -- لازم يكون 0: النهاية قبل البداية
  SELECT COUNT(*) AS end_before_start FROM service_logs
  WHERE end_time IS NOT NULL AND end_time < start_time;

  -- لازم يكون 0: بداية الخدمة قبل دخول العميل الطابور
  SELECT COUNT(*) AS start_before_join
  FROM service_logs l JOIN queue_entries e ON e.id = l.queue_entry_id
  WHERE l.start_time < e.joined_at;

  -- لازم يكون 0: الخدمة بتتعمل بعد وقت فتح الطابور
  SELECT COUNT(*) AS before_queue
  FROM service_logs l JOIN queues q ON q.id = l.queue_id
  WHERE l.start_time < q.created_at;

  -- المميزين: عدد الخدمات ومتوسط النجوم
  SELECT user_id, COUNT(*) AS services, ROUND(AVG(stars), 2) AS avg_stars
  FROM service_logs
  WHERE user_id IN (127, 527, 539, 534, 563, 840, 454, 635)
  GROUP BY user_id;

-- ==================== Star Ratings by Company Profile ====================
  BEGIN;

  -- 0) Profile per company (1 = excellent ... 5 = bad)
  CREATE TEMP TABLE _prof AS
  SELECT c.id AS company_id,
    CASE
      WHEN lower(c.name) LIKE '%hospital%' OR lower(c.name) LIKE '%center%' OR lower(c.name) LIKE '%clinic%' THEN 2
      WHEN c.category = 'banks' AND (c.id % 9) IN (0,1,2) THEN 4
      WHEN c.category = 'banks' THEN 2
      WHEN c.category = 'government_offices' AND (c.id % 9) IN (0,1) THEN 5
      WHEN c.category = 'government_offices' THEN 4
      WHEN c.category = 'telecom' AND (c.id % 7) IN (0,1) THEN 5
      WHEN c.category = 'telecom' AND (c.id % 7) IN (2,3) THEN 3
      WHEN c.category = 'telecom' THEN 4
      WHEN c.category = 'clinics' AND (c.id % 6) = 0 THEN 4
      WHEN c.category = 'clinics' AND (c.id % 6) IN (1,2) THEN 1
      WHEN c.category = 'clinics' THEN 2
      WHEN c.category = 'edu' AND (c.id % 4) = 0 THEN 3
      WHEN c.category = 'edu' THEN 1
      WHEN c.category = 'other' AND (c.id % 5) IN (0,1) THEN 1
      WHEN c.category = 'other' AND (c.id % 5) = 2 THEN 3
      WHEN c.category = 'other' AND (c.id % 5) = 3 THEN 4
      WHEN c.category = 'other' THEN 5
      ELSE 3
    END AS profile
  FROM companies c;

  CREATE INDEX idx_prof ON _prof(company_id);

  -- 1) One pass over the logs: roll once for "unrated" and once for the star
  CREATE TEMP TABLE _rated AS
  SELECT l.id AS lid, p.profile,
        ABS(RANDOM()) % 100 AS r_null,
        ABS(RANDOM()) % 100 AS r_star
  FROM service_logs l
  JOIN queue_entries e ON e.id = l.queue_entry_id
  JOIN queues q        ON q.id = e.queue_id
  JOIN _prof p         ON p.company_id = q.company_id
  WHERE e.status = 'done' AND l.end_time IS NOT NULL;

  CREATE INDEX idx_rated ON _rated(lid);

  -- 2) Map the roll to a star using cumulative thresholds per profile.
  --    Thresholds (cumulative %) per profile, from the distribution in the original script:
  --    profile 1: 2, 5, 13, 48, 100
  --    profile 2: 3, 8, 23, 70, 100
  --    profile 3: 8, 23, 55, 85, 100
  --    profile 4: 18, 45, 75, 92, 100
  --    profile 5: 40, 70, 88, 96, 100
  UPDATE service_logs
  SET stars = (
    SELECT CASE
      WHEN r.r_null < 35 THEN NULL
      WHEN r.profile = 1 THEN CASE WHEN r.r_star < 2 THEN 1 WHEN r.r_star < 5 THEN 2 WHEN r.r_star < 13 THEN 3 WHEN r.r_star < 48 THEN 4 ELSE 5 END
      WHEN r.profile = 2 THEN CASE WHEN r.r_star < 3 THEN 1 WHEN r.r_star < 8 THEN 2 WHEN r.r_star < 23 THEN 3 WHEN r.r_star < 70 THEN 4 ELSE 5 END
      WHEN r.profile = 3 THEN CASE WHEN r.r_star < 8 THEN 1 WHEN r.r_star < 23 THEN 2 WHEN r.r_star < 55 THEN 3 WHEN r.r_star < 85 THEN 4 ELSE 5 END
      WHEN r.profile = 4 THEN CASE WHEN r.r_star < 18 THEN 1 WHEN r.r_star < 45 THEN 2 WHEN r.r_star < 75 THEN 3 WHEN r.r_star < 92 THEN 4 ELSE 5 END
      ELSE                    CASE WHEN r.r_star < 40 THEN 1 WHEN r.r_star < 70 THEN 2 WHEN r.r_star < 88 THEN 3 WHEN r.r_star < 96 THEN 4 ELSE 5 END
    END
    FROM _rated r
    WHERE r.lid = service_logs.id
  )
  WHERE id IN (SELECT lid FROM _rated);

  -- Logs that are not rated (serving, or not in _rated) stay NULL
  UPDATE service_logs
  SET stars = NULL
  WHERE id NOT IN (SELECT lid FROM _rated);

  DROP TABLE _prof;
  DROP TABLE _rated;

  COMMIT;

  -- ==================== Checks ====================
  SELECT stars, COUNT(*) FROM service_logs GROUP BY stars ORDER BY stars;

  SELECT user_id, COUNT(*) AS services, ROUND(AVG(stars), 2) AS avg_stars
  FROM service_logs
  WHERE user_id IN (63, 127, 171, 1)
  GROUP BY user_id;

-- ==================== Realistic History for Focus Accounts ====================
  -- =====================================================================
  -- SmartLine: realistic history for the focus accounts
  --   Managers : 127 (company 19, Luxor) and 537 (company 38, Riyadh)
  --   Providers: all providers of those managers (existing + new)
  --   Customers: 63, 840, 454, 635
  --   "now" follows the seed convention: datetime('now', '+3 hours')
  -- Run after the managers / companies / providers / queues seed files.
  -- =====================================================================
  BEGIN;

  -- 0) Scope: focus managers, their companies, and random targets
  CREATE TEMP TABLE _scope AS
  SELECT m.id AS manager_id, m.user_id AS manager_user, c.id AS company_id,
        12 + ABS(RANDOM()) % 19 AS target_providers,   -- 12..30 providers
        45 + ABS(RANDOM()) % 51 AS share_pct           -- 45..95 % working
  FROM managers m
  JOIN companies c ON c.manager_id = m.id
  WHERE m.user_id IN (127);

  -- 1) How many providers each company is missing
  CREATE TEMP TABLE _need AS
  SELECT s.manager_id, s.company_id,
        s.target_providers - (SELECT COUNT(*) FROM providers p WHERE p.manager_id = s.manager_id) AS missing
  FROM _scope s;

  -- 2) Free users: not managers, not providers, not focus accounts
  CREATE TEMP TABLE _free AS
  SELECT u.id AS uid, ROW_NUMBER() OVER (ORDER BY RANDOM()) AS rn
  FROM users u
  WHERE u.id NOT IN (SELECT user_id FROM managers)
    AND u.id NOT IN (SELECT user_id FROM providers)
    AND u.id NOT IN (63, 127, 171, 1);

  -- 3) Assign free users to companies in consecutive blocks
  CREATE TEMP TABLE _newp AS
  SELECT f.uid, c.manager_id, c.company_id
  FROM _free f
  JOIN (
    SELECT manager_id, company_id, missing,
          COALESCE(SUM(missing) OVER (ORDER BY manager_id
                    ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING), 0) AS off
    FROM _need
    WHERE missing > 0
  ) c ON f.rn > c.off AND f.rn <= c.off + c.missing;

  -- 4) Insert the new providers (dates fixed in step 5)
  INSERT INTO providers (user_id, manager_id, invite_code, created_at)
  SELECT uid, manager_id, UPPER(HEX(RANDOMBLOB(4))), datetime('now', '+3 hours', '-2555 days')
  FROM _newp;

  -- 5) Dates: make everything older and keep the order
  --    user < manager < provider < queue
  UPDATE providers
  SET created_at = datetime('now', '+3 hours', '-' || (365 + ABS(RANDOM()) % 731) || ' days')
  WHERE manager_id IN (SELECT manager_id FROM _scope);

  UPDATE managers
  SET created_at = datetime('now', '+3 hours', '-' || (2920 + ABS(RANDOM()) % 11) || ' days')
  WHERE id IN (SELECT manager_id FROM _scope);

  UPDATE companies
  SET created_at = (SELECT m.created_at FROM managers m WHERE m.id = companies.manager_id)
  WHERE manager_id IN (SELECT manager_id FROM _scope);

  UPDATE users
  SET created_at = datetime('now', '+3 hours', '-' || (2950 + ABS(RANDOM()) % 60) || ' days')
  WHERE id IN (63, 127, 171, 1)
    OR id IN (SELECT user_id FROM providers WHERE manager_id IN (SELECT manager_id FROM _scope))
    OR id IN (SELECT user_id FROM managers WHERE id IN (SELECT manager_id FROM _scope));

  -- 6) Rebuild history: remove old queues of in-scope providers.
  --    Their dates were moved back, so old queues would now predate their provider.
  DELETE FROM service_logs
  WHERE queue_id IN (SELECT q.id FROM queues q
                    WHERE q.provider_id IN (SELECT id FROM providers
                                            WHERE manager_id IN (SELECT manager_id FROM _scope)));

  DELETE FROM queue_entries
  WHERE queue_id IN (SELECT q.id FROM queues q
                    WHERE q.provider_id IN (SELECT id FROM providers
                                            WHERE manager_id IN (SELECT manager_id FROM _scope)));

  DELETE FROM queues
  WHERE provider_id IN (SELECT id FROM providers
                        WHERE manager_id IN (SELECT manager_id FROM _scope));

  -- 7) Max queue id before inserting new queues (used to pick them up later)
  CREATE TEMP TABLE _base AS SELECT COALESCE(MAX(id), 0) AS b FROM queues;

  -- 8) Per-provider plan
  --    Q     : number of closed queues (9..81) -> about 1600..3800 services
  --    total : seconds from provider start to 2 days ago
  CREATE TEMP TABLE _prov AS
  SELECT p.id AS pid, p.manager_id, s.company_id, p.created_at AS pcreated, s.share_pct,
        CAST(julianday(date('now', '+3 hours', '-1 days')) - julianday(date(p.created_at)) AS INT) AS span_days,
        0 AS working
  FROM providers p
  JOIN _scope s ON s.manager_id = p.manager_id;

  -- 9) Working providers: share_pct of each manager's providers
  UPDATE _prov SET working = 1
  WHERE pid IN (
    SELECT x.pid
    FROM (SELECT pid, manager_id,
                ROW_NUMBER() OVER (PARTITION BY manager_id ORDER BY RANDOM()) AS rn,
                COUNT(*) OVER (PARTITION BY manager_id) AS cnt
          FROM _prov) x
    JOIN _scope s ON s.manager_id = x.manager_id
    WHERE x.rn <= CAST(x.cnt * s.share_pct / 100.0 + 0.5 AS INT)
  );

  -- 10) Closed queues spread over each provider's lifetime
   CREATE TEMP TABLE _qgen AS
  WITH RECURSIVE dd(d) AS (SELECT 0 UNION ALL SELECT d + 1 FROM dd WHERE d < 1100)
  SELECT p.pid, p.company_id,
        datetime(date('now', '+3 hours', '-1 days', '-' || dd.d || ' days'),
                  '+' || ((8 + p.pid % 4) * 60 + ABS(RANDOM()) % 60) || ' minutes') AS q_created,
        60 + ABS(RANDOM()) % 121 AS life_min
  FROM _prov p
  JOIN dd ON dd.d < p.span_days
  WHERE (ABS(RANDOM()) % 1000) / 1000.0 <
        MAX(0.05, 0.92 - 0.0012 * dd.d)
        * MIN(1.0, (p.span_days - dd.d) / 60.0)
        * CASE strftime('%w', date('now', '+3 hours', '-1 days', '-' || dd.d || ' days'))
            WHEN '5' THEN 0.04
            WHEN '6' THEN 0.75
            ELSE 1.0 END
        * (0.85 + (p.pid % 7) * 0.04);  

  INSERT INTO queues (provider_id, company_id, status, service_id, created_at, closed_at)
  SELECT g.pid, g.company_id, 'closed',
        (SELECT s.id FROM services s
          WHERE s.company_id = g.company_id AND s.is_active = 1
          ORDER BY RANDOM() LIMIT 1),
        g.q_created,
        datetime(g.q_created, '+' || g.life_min || ' minutes')
  FROM _qgen g;

  -- 11) One open queue per working provider (started 1 to 4 hours ago)
  INSERT INTO queues (provider_id, company_id, status, service_id, created_at, closed_at)
  SELECT p.pid, p.company_id, 'active',
        (SELECT s.id FROM services s
          WHERE s.company_id = p.company_id AND s.is_active = 1
          ORDER BY RANDOM() LIMIT 1),
        datetime('now', '+3 hours', '-' || (60 + ABS(RANDOM()) % 180) || ' minutes'),
        NULL
  FROM _prov p
  WHERE p.working = 1;

  -- 12) Queue plan for all new queues
  --     n    : entries (closed 10..40, active 3..10)
  --     kcur : entry being served now (active only, 1..3)
  CREATE TEMP TABLE _ql0 AS
  SELECT q.id AS qid, q.provider_id AS pid, q.company_id AS cid, q.status,
        q.created_at AS qc, q.closed_at AS qe_at,
        CASE WHEN q.status = 'active' THEN 3 + ABS(RANDOM()) % 8
              ELSE 10 + ABS(RANDOM()) % 31 END AS n,
        CASE WHEN q.status = 'active' THEN 1 + ABS(RANDOM()) % 3
              ELSE 0 END AS kcur
  FROM queues q
  WHERE q.id > (SELECT b FROM _base)
    AND q.provider_id IN (SELECT pid FROM _prov);

  CREATE TEMP TABLE _ql AS
  SELECT *,
        CASE WHEN status = 'active' THEN 240.0
              ELSE (julianday(qe_at) - julianday(qc)) * 86400.0 / n END AS gap_sec
  FROM _ql0;

  -- 13) Base entry id before inserting new entries
  CREATE TEMP TABLE _base_e AS SELECT COALESCE(MAX(id), 0) AS b FROM queue_entries;

  -- 14) One row per entry with its random attributes
  CREATE TEMP TABLE _qe AS
  WITH RECURSIVE k(pos) AS (SELECT 1 UNION ALL SELECT pos + 1 FROM k WHERE pos < 40)
  SELECT l.qid, l.pid, l.cid, l.status, l.kcur, l.gap_sec,
        COALESCE(l.qe_at, datetime('now', '+3 hours')) AS end_cap,
        k.pos,
        datetime(l.qc, '+' || CAST((k.pos - 1) * l.gap_sec AS INT) || ' seconds') AS joined_at,
        1 + ABS(RANDOM()) % 1653 AS uid,            -- users 1..1653 are contiguous
        (ABS(RANDOM()) % 100 < 25) AS is_guest,      -- about 25% guests
        ABS(RANDOM()) % 100 AS r1,
        ABS(RANDOM()) % 100 AS r2,
        70 + ABS(RANDOM()) % 26 AS pct               -- service length: 70..95% of the gap
  FROM _ql l
  JOIN k ON k.pos <= l.n;
  CREATE INDEX idx_qe_tmp ON _qe(qid, pos);
  -- 15) Insert entries
  INSERT INTO queue_entries (queue_id, user_id, user_name, position, status, joined_at, ip_address)
  SELECT e.qid,
        CASE WHEN e.is_guest THEN NULL ELSE e.uid END,
        lower(replace(u.name, ' ', '_')),
        e.pos,
        CASE WHEN e.status = 'closed' THEN 'done'
              WHEN e.pos < e.kcur THEN 'done'
              WHEN e.pos = e.kcur THEN 'serving'
              ELSE 'waiting' END,
        e.joined_at,
        CASE WHEN e.is_guest
              THEN printf('%d.%d.%d.%d', 41 + e.r1 % 4, e.r2 * 2 % 256, (e.r1 * 3) % 256, 1 + e.r2 % 254)
              ELSE printf('41.%d.%d.%d', e.uid % 200, (e.uid * 7) % 256, (e.uid * 13) % 254 + 1)
        END
  FROM _qe e
  JOIN users u ON u.id = e.uid;

  -- 16) Service logs for done and serving entries
  --     Stars: about 35% unrated; the rest mostly 4-5.
  INSERT INTO service_logs (queue_id, queue_entry_id, user_id, user_name, company_name,
                            start_time, end_time, ip_address, stars)
  SELECT qe.queue_id, qe.id, qe.user_id, qe.user_name, co.name,
        datetime(qe.joined_at, '+' || (60 + ABS(RANDOM()) % 541) || ' seconds'),
        CASE WHEN qe.status = 'serving' THEN NULL
              ELSE MIN(datetime(qe.joined_at, '+' || (60 + ABS(RANDOM()) % 541 + CAST(e.gap_sec * e.pct / 100.0 AS INT)) || ' seconds'),
                      e.end_cap)
        END,
        qe.ip_address,
        CASE WHEN qe.status = 'serving' THEN NULL
              WHEN e.r1 < 35 THEN NULL
              WHEN e.r2 < 55 THEN 5
              WHEN e.r2 < 80 THEN 4
              WHEN e.r2 < 92 THEN 3
              WHEN e.r2 < 97 THEN 2
              ELSE 1 END
  FROM queue_entries qe
  JOIN _qe e ON e.qid = qe.queue_id AND e.pos = qe.position
  JOIN companies co ON co.id = e.cid
  WHERE qe.id > (SELECT b FROM _base_e)
    AND qe.status IN ('done', 'serving');

  -- 17) Customers: extra history so each reaches 12..50 services
  CREATE TEMP TABLE _base_e2 AS SELECT COALESCE(MAX(id), 0) AS b FROM queue_entries;

  CREATE TEMP TABLE _cust AS
  SELECT u.id AS uid, lower(replace(u.name, ' ', '_')) AS uname,
        12 + ABS(RANDOM()) % 39 AS target,
        (SELECT COUNT(*) FROM queue_entries x WHERE x.user_id = u.id) AS existing
  FROM users u
  WHERE u.id IN (63, 127, 171, 1);

  -- Closed queues numbered 0..N-1, so a random row can be picked with a plain JOIN
  CREATE TEMP TABLE _closed AS
  SELECT id AS qid, ROW_NUMBER() OVER (ORDER BY id) - 1 AS rn
  FROM queues
  WHERE status = 'closed';

  CREATE INDEX idx_closed_rn ON _closed(rn);

  -- One row per missing service, with a random index into _closed
  CREATE TEMP TABLE _cpick AS
  WITH RECURSIVE k(idx) AS (SELECT 1 UNION ALL SELECT idx + 1 FROM k WHERE idx < 50)
  SELECT c.uid, c.uname, k.idx,
        ABS(RANDOM()) % (SELECT COUNT(*) FROM _closed) AS off
  FROM _cust c
  JOIN k ON k.idx <= (CASE WHEN c.target > c.existing THEN c.target - c.existing ELSE 0 END);

  -- Attach the queue for each row
  CREATE TEMP TABLE _cq AS
  SELECT p.uid, p.uname, p.idx, c.qid
  FROM _cpick p
  JOIN _closed c ON c.rn = p.off;

  INSERT INTO queue_entries (queue_id, user_id, user_name, position, status, joined_at, ip_address)
  SELECT c.qid, c.uid, c.uname,
        (SELECT COUNT(*) FROM queue_entries x WHERE x.queue_id = c.qid) + 1,
        'done',
        datetime(q.created_at, '+' ||
                  CAST(ABS(RANDOM()) % MAX(1, CAST(0.9 * (julianday(q.closed_at) - julianday(q.created_at)) * 86400.0 AS INT))
                      AS INT) || ' seconds'),
        printf('41.%d.%d.%d', c.uid % 200, (c.uid * 7) % 256, (c.uid * 13) % 254 + 1)
  FROM _cq c
  JOIN queues q ON q.id = c.qid;

  INSERT INTO queue_entries (queue_id, user_id, user_name, position, status, joined_at, ip_address)
  SELECT c.qid, c.uid, c.uname,
        (SELECT COUNT(*) FROM queue_entries x WHERE x.queue_id = c.qid) + 1,
        'done',
        datetime(q.created_at, '+' ||
                  CAST(ABS(RANDOM()) % MAX(1, CAST(0.9 * (julianday(q.closed_at) - julianday(q.created_at)) * 86400.0 AS INT))
                      AS INT) || ' seconds'),
        printf('41.%d.%d.%d', c.uid % 200, (c.uid * 7) % 256, (c.uid * 13) % 254 + 1)
  FROM _cq c
  JOIN queues q ON q.id = c.qid;

  INSERT INTO service_logs (queue_id, queue_entry_id, user_id, user_name, company_name,
                            start_time, end_time, ip_address, stars)
  SELECT x.queue_id, x.id, x.user_id, x.user_name, co.name,
        datetime(x.joined_at, '+' || (1 + ABS(RANDOM()) % 10) || ' minutes'),
        MIN(datetime(x.joined_at, '+' || (11 + ABS(RANDOM()) % 17) || ' minutes'), x.cap),
        x.ip_address,
        CASE WHEN x.r < 10 THEN NULL
              WHEN x.r2 < 50 THEN 5
              WHEN x.r2 < 80 THEN 4
              WHEN x.r2 < 92 THEN 3
              WHEN x.r2 < 97 THEN 2
              ELSE 1 END
  FROM (
    SELECT qe.id, qe.queue_id, qe.user_id, qe.user_name, qe.joined_at, qe.ip_address,
          q.company_id,
          COALESCE(q.closed_at, datetime('now', '+3 hours')) AS cap,
          4 + ABS(RANDOM()) % 17 AS dur,
          ABS(RANDOM()) % 100 AS r,
          ABS(RANDOM()) % 100 AS r2
    FROM queue_entries qe
    JOIN queues q ON q.id = qe.queue_id
    WHERE qe.id > (SELECT b FROM _base_e2)
  ) x
  JOIN companies co ON co.id = x.company_id;

  -- 18) Checks: each must be 0 unless noted
  SELECT p.manager_id, COUNT(*) AS providers,
        SUM(CASE WHEN EXISTS (SELECT 1 FROM queues q
                              WHERE q.provider_id = p.id AND q.status = 'active')
                  THEN 1 ELSE 0 END) AS working
  FROM providers p
  WHERE p.manager_id IN (SELECT manager_id FROM _scope)
  GROUP BY p.manager_id;

  SELECT q.provider_id, COUNT(e.id) AS served
  FROM queue_entries e
  JOIN queues q ON q.id = e.queue_id
  WHERE e.status IN ('done', 'serving')
    AND q.provider_id IN (SELECT pid FROM _prov)
  GROUP BY q.provider_id
  ORDER BY served;

  SELECT COUNT(*) AS bad_queue_before_provider
  FROM queues q JOIN providers p ON p.id = q.provider_id
  WHERE q.created_at < p.created_at;

  SELECT COUNT(*) AS bad_entry_time
  FROM queue_entries e JOIN queues q ON q.id = e.queue_id
  WHERE e.joined_at < q.created_at
    OR (q.status = 'closed' AND e.joined_at > q.closed_at);

  SELECT COUNT(*) AS bad_log_time
  FROM service_logs l JOIN queue_entries e ON e.id = l.queue_entry_id
  WHERE l.start_time < e.joined_at;

  SELECT COUNT(*) AS future_entries
  FROM queue_entries WHERE joined_at > datetime('now', '+3 hours');

  SELECT COUNT(*) AS multi_serving
  FROM (SELECT queue_id FROM queue_entries WHERE status = 'serving'
        GROUP BY queue_id HAVING COUNT(*) > 1);

  SELECT COUNT(*) AS start_before_join
  FROM service_logs l JOIN queue_entries e ON e.id = l.queue_entry_id
  WHERE l.start_time < e.joined_at;

  -- 19) Cleanup
  DROP TABLE _scope;  DROP TABLE _need;   DROP TABLE _free;   DROP TABLE _newp;
  DROP TABLE _base;   DROP TABLE _base_e; DROP TABLE _base_e2;
  DROP TABLE _prov;   DROP TABLE _qgen;   DROP TABLE _ql0;   DROP TABLE _ql;
  DROP TABLE _qe;     DROP TABLE _cust;   DROP TABLE _cpick;
  DROP TABLE _cq;
  DROP TABLE _closed;

  COMMIT;
