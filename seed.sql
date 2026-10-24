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

-- ==================== SmartLine Seed: Users (1-1653) — Egypt, Saudi Arabia, UAE, Palestine ====================
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
  (251, 'Taghreed Al-Sahli', 'taghreed.alsahli85@gmail.com', 'scrypt:32768:8:1$KLwttOs16R2uJlBj$325b18201495a7a88ed6e9353afd933a242ad4e05cdc460960b01de88c2eea3875167510ec294355fd0131530b6f34edb8ce8291a68287b0fbccf06b405f511a', 'saudi arabia', 'abha', 1, '762727'),
  (252, 'Rashid Al-Amri', 'rashid.alamri@gmail.com', 'scrypt:32768:8:1$YOBlRSvSpiy0PTia$f6325a35a934d95036bab35cc8ffd9c613326f9437200b41ed943663b539ee8cb41e35db4fc20edc34bc058ffc31a0b0bb8a4df90d584eead4fec6b991718a71', 'saudi arabia', 'abqaiq', 1, '240077'),
  (253, 'Ibrahim Al-Mansour', 'ibrahim.almansour@hotmail.com', 'scrypt:32768:8:1$YDu720nixwUbCHBr$0170d7b7ba3fb7b92772d60c4ac49cbdceff6c622ada4f6ca613126afac113781ecae5af17195dee6dc729100b385ca7e9d4833e62401558c31bdfa3b3ebe562', 'saudi arabia', 'abqaiq', 1, '647764'),
  (254, 'Nourah Al-Ahmadi', 'nourah.alahmadi@yahoo.com', 'scrypt:32768:8:1$Xe1PCPlCUkLxh7zU$a919a8e6a7f323e474d88f15c897ce81ca524d00d9c19a8b86e91b796c65d7948cb3b9f5860d0d2762cb40e704f03f58a5fd9bf802bd0d23f1e1dfe9d947a730', 'saudi arabia', 'abqaiq', 1, '113023'),
  (255, 'Fatima Al-Zahrani', 'fatima.alzahrani526@icloud.com', 'scrypt:32768:8:1$NY2VyXPhj2jeeink$0c80b5acb340b04f778a37044da6ae4fa632fbaa9c2fabe0aebfa413e6fc2a79a2a396cae8bcf08edb36093f8cb2a3d536db457de93d39bac63b72d4013dfe78', 'saudi arabia', 'abū arīsh', 1, '811297'),
  (256, 'Majid Al-Shehri', 'majid.alshehri28@gmail.com', 'scrypt:32768:8:1$1inSYccREKcSzQdP$f908a3f880eb5057981042922e5f13e0d5254f5635e66aa4a8b2f35f291417b9ef55848f52c15c63a2a6149f0dff99ee36ecc96ee7375ed4c90b5a082ee66b94', 'saudi arabia', 'ad darb', 1, '798092'),
  (257, 'Thamer Al-Qarni', 'thamer.alqarni@gmail.com', 'scrypt:32768:8:1$wTFifnTtOK2jVE49$f86a3fea37ce6364b7d5cf4fd8ca2fd003457e7c959c2a4f154f566dee48630265b9bc5773357234e4e1fcfbfd23f61e69eeb9a1a020d2b6cc5e68563a2ce471', 'saudi arabia', 'ad darb', 1, '510596'),
  (258, 'Najla Al-Shehri', 'najla.alshehri7@gmail.com', 'scrypt:32768:8:1$Eax93MtTAI81rwum$88ee900e9dad537411ef2d18431f4e8830eedb87f0444dcbd910380485a06cd872bd29be9c052d2573863479b7b54424bb1afc8efd25821546948a297d5ac467', 'saudi arabia', 'ad darb', 1, '619751'),
  (259, 'Adel Al-Najjar', 'adel.alnajjar@gmail.com', 'scrypt:32768:8:1$OAfuvwoWR1rg66xg$e678a8441ff632a1e9fb41647f9a645d021d7855f4de5f791c866b021dff858b6d328b2596dbeb1528ce43854ab8a00db56c59dcbcc78502e5096e00b75da9ad', 'saudi arabia', 'ad darb', 1, '955423'),
  (260, 'Wejdan Al-Dhafiri', 'wejdan.aldhafiri44@gmail.com', 'scrypt:32768:8:1$47giUagSXQEUalHH$844e3c350abde91bd305248833607aa2760000fe935705ed9acb57902655cb8dd44f9b17c7df9bcfcbda34f13983f38d7beec9150293dcb8d0d93cd408749dda', 'saudi arabia', 'ad dawādimī', 1, '697780'),
  (261, 'Abdulaziz Al-Ajmi', 'abdulaziz.alajmi58@outlook.com', 'scrypt:32768:8:1$nGanynsKBBNZFVPw$c04934267a0c5d2382434334d8f9284201e27cee17b6a196ba4ae7246e608cc82362f11e89eed6182881ec224f79f651adcfd675f6810956fddb8db971b76c35', 'saudi arabia', 'ad dawādimī', 1, '784208'),
  (262, 'Anwar Al-Johani', 'anwar.aljohani694@gmail.com', 'scrypt:32768:8:1$wWli0Bc0sUvn4PQz$3480f4d425f019b0391112712f8a9e82bc6371863bea80f8f7d19fd4b962bc48df3294f8533966140583440da9a03a0a4e8a9aedf8d123dd574eae79bebee37f', 'saudi arabia', 'ad dawādimī', 1, '505946'),
  (263, 'Basil Al-Jabri', 'basil.aljabri@gmail.com', 'scrypt:32768:8:1$dsyDJVFgeS7LalTQ$b47e6ccc9ae0ef4dc7c29e89c505372a3d86da6a1ca5bf1e21502e6203a055b5bacf94652e1a4c4179b219be37367c1c9a28c0a4b6350256948beb3d80a7acfc', 'saudi arabia', 'ad dilam', 1, '461954'),
  (264, 'Eshraq Al-Fouzan', 'eshraq.alfouzan26@gmail.com', 'scrypt:32768:8:1$E9VgEbGYOUojmWzN$94fe72e2f044ce2c6c6ee4f8e444dbbac269de17a48d81e3149a8e6b567ecc96783df224c6c3169995f1c2fb9d84008b9d74f031c6c26a5e4aff27f75f4b3eff', 'saudi arabia', 'ad dilam', 1, '821562'),
  (265, 'Mona Al-Dossary', 'mona.aldossary21@gmail.com', 'scrypt:32768:8:1$7yGg0EcClpernwuS$3211706e0c419436a53acf6b2ee6911851652b76f1767f3c4d9d44c3ec4c2c6fdf75febfa2fe3b480a70d7c6c3a2517fa86c01c6f2754e36f3ad8c950542a035', 'saudi arabia', 'ad dilam', 1, '751289'),
  (266, 'Lujain Al-Khaldi', 'lujain.alkhaldi@gmail.com', 'scrypt:32768:8:1$XpEP8w7xtgIRU2e4$b4fc1d20286d085f0fd5e4cfed52ab278b37d1c6643f0e242115b67489a15b5c25109b1130b68c701c8f84d84d1be3108bed92ca154bf2c35060022c05344908', 'saudi arabia', 'adh dhibiyah', 1, '248149'),
  (267, 'Turki Al-Shehri', 'turki.alshehri1237@gmail.com', 'scrypt:32768:8:1$M6j7ejaBJ0a0PQEK$c12faf19eb08fdc4eed8f29a370221f9600631534ead8239e81134c8f06b1b2c04578b2b3bf2f897f5f2cf463bd48a1be245bd53c3d7ee901be8f8b738c8503b', 'saudi arabia', 'adh dhibiyah', 1, '646546'),
  (268, 'Yahya Al-Naimi', 'yahya.alnaimi14@gmail.com', 'scrypt:32768:8:1$Z754f0ENkjlZpvDU$cca84b305241b9c97cc80123486e5fce5586b075ac18c4e2d721f1b46dc5f7f7307470373157e3bf0ffa72a9f89eaa4a3220a613414fc28b523146d36f7a5962', 'saudi arabia', 'afif', 1, '547561'),
  (269, 'Salman Al-Enezi', 'salman.alenezi679@icloud.com', 'scrypt:32768:8:1$MSlK38oxUyQFLfNv$6c0747305447e9d19d7bd8fd8b68bd2b5954e1ef51ce152f26c3fd54190babb8b945782708289609f8f2771e6b98be1eeb04436d952cff864ba320acff28140d', 'saudi arabia', 'afif', 1, '012644'),
  (270, 'Jihad Al-Mousa', 'jihad.almousa441@yahoo.com', 'scrypt:32768:8:1$pHWqNhPlnzMvlaLU$2d34882ef413804d568f880299e53ecc57471e0e51cedaa1aea2254d1ffbd95e96a45facb5079b6ef1fc7ffc212b168104b5d52da6d82e9d4b7c2ac01194cf6a', 'saudi arabia', 'afif', 1, '164645'),
  (271, 'Lamees Al-Sulami', 'lamees.alsulami54@gmail.com', 'scrypt:32768:8:1$eut9LWmI19XNsEVd$2e7562b5191b4cd841891374f0c702e932437966391703afc422400716883bcb1228c6259b32beb4abffa07ba80ac36e09a2e6ba80a1ec3ee93d64b04b6420a6', 'saudi arabia', 'afif', 1, '055247'),
  (272, 'Shaikha Al-Qurashi', 'shaikha.alqurashi1097@gmail.com', 'scrypt:32768:8:1$P8jojPXSI2ZorpY9$c68ec4a1a7b8b55fd054965af7e481ff1057a5dfe13d03985cebf806aa130d4aa9bf122bf36f56fe3973bacef6b8d47979afd0a17b46311d3c42bb70cade5fa2', 'saudi arabia', 'ain albaraha', 1, '975974'),
  (273, 'Hanan Al-Johani', 'hanan.aljohani88@gmail.com', 'scrypt:32768:8:1$ahBU13Ee5AWQl6RL$2a5f5800ba88d224cd8d5ba03a10d1f2f7a70a8f19c646060c79f1a28f9cf03a20e6a4119369f8a002d7587a603fd8440bb7ba5747029adaa30baaae2161bade', 'saudi arabia', 'ain albaraha', 1, '244978'),
  (274, 'Ruba Al-Johani', 'ruba.aljohani52@gmail.com', 'scrypt:32768:8:1$OSQu0kzzWde8gPzS$711daab5c1d32268e52feb4b389bf5288a3aad7f01f4a9e972f53321b023ed93e76b630fd5eb0ec6ddb9cdb27e10f500c1ab92b1fe2300ea7d6622b4b58e0b90', 'saudi arabia', 'ain albaraha', 1, '340292'),
  (275, 'Moath Al-Saleh', 'moath.alsaleh1080@gmail.com', 'scrypt:32768:8:1$mbtVME4tgvhB3KrZ$59b3dbcf7ef931015a4fee81c859de1e2b36dc40d09d098e56f61711147f1a3c7021d8b8077f8d5a27f60a56c7e87996dcc5534d0ab07c9432f408bef4f191f5', 'saudi arabia', 'ain albaraha', 1, '554216'),
  (276, 'Muneera Al-Obaid', 'muneera.alobaid1295@yahoo.com', 'scrypt:32768:8:1$KQiQqgfLoiEbk4Bc$a48704f3a40b886c8c123c3914688b4ca0b0c919bd5488100f9c1c0ec40a3d8fa5d239a6bd8c332605479a41fe644bcc7662571e28380b2adf1436830cad1c08', 'saudi arabia', 'al arţāwīyah', 1, '928344'),
  (277, 'Fai Al-Zaid', 'fai.alzaid@gmail.com', 'scrypt:32768:8:1$SCN3IuhFW3C9MOq7$ac04fb3ae2b042b5f3b39a15856544e727d93b824e291866d381e812af1a11b22c82a0a815fffac93c0d4e492cd10471c24e758df595d8e85c45b3cd7160f7c7', 'saudi arabia', 'al arţāwīyah', 1, '945368'),
  (278, 'Saif Al-Ghamdi', 'saif.alghamdi1348@gmail.com', 'scrypt:32768:8:1$yYwCDSTBqHzWCmH9$8d0ea5d057f5d8d60deeba12890afc790dd5abd3975a012d6a15375bd3df682c4a59d011a623f5573e6ec8d6786792eb144b3a6b39c91d66e1c3647a40d2f5d7', 'saudi arabia', 'al arţāwīyah', 1, '903303'),
  (279, 'Sultan Al-Dawsari', 'sultan.aldawsari1396@yahoo.com', 'scrypt:32768:8:1$SYMPFl2MKNTMKTvm$f32e74f9758b509f948aa20c62e4a775434e5762fec49ab06d82c8723bc0159464d450208cfcae7b04d44e454534b4d1c0c3afccde86bf5fe7042ba35e4dc3a4', 'saudi arabia', 'al arţāwīyah', 1, '764365'),
  (280, 'Awad Al-Sahli', 'awad.alsahli@gmail.com', 'scrypt:32768:8:1$f0lZC4A6QeL4yqsM$1fc51b305c4fe0022cef8025fc13ab889ef14cf4d6461ea5fd0546b205ccd6522d24988d6b649e8a4aeb434b26ee3f47b7e16c8f16a4e83cbb3019d86bc60720', 'saudi arabia', 'al arţāwīyah', 1, '921392'),
  (281, 'Hadeel Al-Obaid', 'hadeel.alobaid@outlook.com', 'scrypt:32768:8:1$mbsyYuu1mB73w8fy$40c3a7b76049b419ddf12e756b768d0df62c07c836f9666b4a9b18fa957725831d68effd6daaaeb53fd64d60162d545479b5bfec5188352e6b67d714584ef882', 'saudi arabia', 'al awjām', 1, '274597'),
  (282, 'Wafa Al-Shamrani', 'wafa.alshamrani89@outlook.com', 'scrypt:32768:8:1$yL7XO68upPDG8ZWR$7d5dc30a0397ddf492b53978d5d3f5dd0d5926b6bc7d526a2b07d0bfa31161a9c1fd44903fb2d6773b94d7d87656fc465749eef2489d4daf9bc9752f80428036', 'saudi arabia', 'al awjām', 1, '587288'),
  (283, 'Mishari Al-Dhafiri', 'mishari.aldhafiri@gmail.com', 'scrypt:32768:8:1$VuaYXP5HiwJxOyu3$40494eb8f754df5c0fe243414472fe3671680bc2cb2dd18f4bf7522341f180355ef4dffedba54d01719b6075190bcd2147fa9936c4f6c2b85e34914d8bccdf5b', 'saudi arabia', 'al awjām', 1, '058361'),
  (284, 'Hatim Al-Qahtani', 'hatim.alqahtani@gmail.com', 'scrypt:32768:8:1$hKY28ufsiJuY5bJ9$4674e1d6c95b9be87e804751cd3fc24799204c5f91526030637bc450db13d61daabaef3a3690dbe0374a3831efb130374289343facc048e7476d44b126ae4fda', 'saudi arabia', 'al bahah', 1, '532229'),
  (285, 'Manal Al-Malki', 'manal.almalki45@outlook.com', 'scrypt:32768:8:1$JURvBLCP4mCiLj3s$912f21a37fa24f7a461c3dbb7bd7b491fdb7ffeefd55b56b02f7d3326418bf8a9ff19db1fd91d1b22a79b4dda0734499387cdd9b282a6ac3def7e7dc27ebffa2', 'saudi arabia', 'al bahah', 1, '574441'),
  (286, 'Hisham Al-Bishi', 'hisham.albishi5@gmail.com', 'scrypt:32768:8:1$cFMVhEaHl9yjCWI5$5816be3bfe48734b164760d0f6b27935eb622a3deb7393d871b8b45933725ebfb46b0d5318eedb816074964177f85ca406f9e99957f7053ca981260605c2bb4f', 'saudi arabia', 'al baţţālīyah', 1, '938298'),
  (287, 'Dhaifallah Al-Fahad', 'dhaifallah.alfahad19@icloud.com', 'scrypt:32768:8:1$5pammOAynJzync8M$367ad109cb132354aa061cc7ae43182555e46e200a4f679699735c1e2c7a347caff60f4ce8372fa249ed966e29aa2476e1a471c09fc1d5f334b12bb4ebc98dff', 'saudi arabia', 'al bukayrīyah', 1, '253472'),
  (288, 'Zuhair Al-Naimi', 'zuhair.alnaimi@hotmail.com', 'scrypt:32768:8:1$vzsYXdNg6KHF4rih$1bb6f540e1b6078cbbbae122b144c567137efa44ae4a52334949c27217e8f41b812626fd91078f76078099850441b451e2620edc5cf8311c8a71a0c4fade13e0', 'saudi arabia', 'al bukayrīyah', 1, '572384'),
  (289, 'Shouq Al-Sahli', 'shouq.alsahli1777@gmail.com', 'scrypt:32768:8:1$ejfmPrZwrS6UjweB$7f9b784bc2af20786f508ccbbfa467259271390280d2f32cbecaf07d8e55cf05cf8e16fd77afb91dd1eb9e64f0077594440342bfbe199afb642013b467b7060a', 'saudi arabia', 'al bukayrīyah', 1, '100882'),
  (290, 'Nawaf Al-Mutairi', 'nawaf.almutairi@hotmail.com', 'scrypt:32768:8:1$UxZxrjUVUV66QdDS$f3887519e3a41d11002798caebb0073465b7d3e6a0c4a720d25d4b2d89fed0a074e845813329852df78e86824e1ee414b19fcfda15a05cd65801bfad55c0635f', 'saudi arabia', 'al bukayrīyah', 1, '662828'),
  (291, 'Turki Al-Dosari', 'turki.aldosari@gmail.com', 'scrypt:32768:8:1$coItZ1lo3SVDZqpe$6b4f545de965959dcd5fe4fc24685b866b8af6ef89a9bb92187c0ccbc13885ffd0dc4e25ac9caf0690694a759059cab70f33922d3c230603a494bf7913c97577', 'saudi arabia', 'al bukayrīyah', 1, '052392'),
  (292, 'Ghaida Al-Zaid', 'ghaida.alzaid746@outlook.com', 'scrypt:32768:8:1$qMael3zlBMTChW5p$44c051451e683656d67b5e65a73224946b04934381a1e1c5f57b63cba2ba92af587b0f0ac9bdbaf5615d838df4cd8046e74278461a26acdd369b5527cb91e181', 'saudi arabia', 'al faruq', 1, '471380'),
  (293, 'Maryam Al-Ghamdi', 'maryam.alghamdi1142@gmail.com', 'scrypt:32768:8:1$zdR6Azdw9TAarDKx$fd20b13734e13946efdd2b1d153ea3b2f2e441dffe863d2dc3ab9e1e54e6218407d83f31831b42d83c296e5ed2c1f02ec2a59c8ecb18fc9bc4ccdead8db2881a', 'saudi arabia', 'al faruq', 1, '149379'),
  (294, 'Tahani Al-Enezi', 'tahani.alenezi@gmail.com', 'scrypt:32768:8:1$Ti0Q0oSZVscbXWVm$0179bfd51e667118a0d2d0168a5a017d0983a754c452a454e442ba8e8f1074896a0873f0b22874818f2fed6c251820ba333f635b94408ab7806ae42905ebbeaf', 'saudi arabia', 'al faruq', 1, '174156'),
  (295, 'Joud Al-Rashed', 'joud.alrashed612@yahoo.com', 'scrypt:32768:8:1$HVsTvhQ8ACiJH0LB$4cf9322414f6abab1503c3339e80ddb0d27e5a732d5c464e731cb3dc86b918131408e62b7117e99e6986449d936a29d99dfecaebdb935fd064758133fd1c62ca', 'saudi arabia', 'al fuwayliq', 1, '784943'),
  (296, 'Feras Al-Dossary', 'feras.aldossary@gmail.com', 'scrypt:32768:8:1$tP5CiOHLWfVabWk5$9237ff29ec341af91f88f2bc34ecb510bfeb87707788635bb8a8522067f55442a37383eb5fd4d3f87af280ae3a234e1a98d000b09cd234c3ebf0f12d73150fa8', 'saudi arabia', 'al fuwayliq', 1, '039079'),
  (297, 'Hadeel Al-Mousa', 'hadeel.almousa850@yahoo.com', 'scrypt:32768:8:1$ObRLyul2r4futDZJ$3ee66d0caa9f8dd49d40be6cdaf4af611d50195680586165cd607d6bedde00e10df98b0ca1cf3a8f7254ea66208829c6fcae6abe6bc6248bd62423c31def2dc8', 'saudi arabia', 'al fuwayliq', 1, '671955'),
  (298, 'Alanoud Al-Anazi', 'alanoud.alanazi576@gmail.com', 'scrypt:32768:8:1$bFPZPEs9qkqYGy5U$dcbd8b5cc635205250db378830f176565b5fcd6056d4c520ce37f116cb11fca89386c9ad979ce3de255ca1e53aa5f00768551e90cd151f25e33966571cebf5c2', 'saudi arabia', 'al fuwayliq', 1, '488555'),
  (299, 'Mohammed Al-Hussain', 'mohammed.alhussain@gmail.com', 'scrypt:32768:8:1$bUValz8qdXWbUiGN$fe1ac26842740bb6676536fee02435e96d381a5a4e75a04a3f01a24c55c87d951fa2b42e036f240edaaf037d8d63fcec86dc7a4e8e990ba697e461fd5fca196f', 'saudi arabia', 'al fuwayliq', 1, '746967'),
  (300, 'Rayan Al-Shamrani', 'rayan.alshamrani@gmail.com', 'scrypt:32768:8:1$5c8NYmqEGRUKgbfK$c256c08d75484ee60bb0a71efed5477aa47f6a1c232a8a82cf68f7f2ed6ed6536572d667eed3aa366bd2923528e3dda2e2c1b898cfd898a52a35667830c090d3', 'saudi arabia', 'al hadā', 1, '050045'),
  (301, 'Jawaher Al-Shammari', 'jawaher.alshammari35@yahoo.com', 'scrypt:32768:8:1$DhwSYwSjetWQjxzl$96db6625e215ac845a7fd21bfe4673d601fe9fddd8827b7d3bb195a2314b14fc88ab1d4b9db6b09cc8b0f1340eb4fa73c5db5d6f893bdb4fd763b739603c09ca', 'saudi arabia', 'al hadā', 1, '542977'),
  (302, 'Hamdi Al-Qassim', 'hamdi.alqassim@icloud.com', 'scrypt:32768:8:1$mpb1AIv2QnQfTNL4$5fa5b39a56245a94732528166cd6c2478998a56f68c2ce28caf6ead8acda30b33bc7aac004dbecee39f4641efe7ffb8e7bd03111f8471854d8372a6296fc3e63', 'saudi arabia', 'al hufuf', 1, '085449'),
  (303, 'Jawaher Al-Ahmadi', 'jawaher.alahmadi1088@gmail.com', 'scrypt:32768:8:1$j7mWqSVNQhM8NyGL$30bc7ccacd433228b99e35ab8bf198036ceceb8ec3ff602423289213b15ffbcd4cc8bae7d762d2a8745b4f89cbf6adedf789e2ff75ed951a272685837a923d90', 'saudi arabia', 'al hufūf', 1, '513801'),
  (304, 'Sahar Al-Ahmadi', 'sahar.alahmadi959@gmail.com', 'scrypt:32768:8:1$pffQxOleUOrNcKX2$496883cfc69be967f28fa5dabac88560236836af42221df507166389da5c1247a9b8d3f8ade03182e3eeb650530740e3c72d64ceefc57b00738b5f5250675522', 'saudi arabia', 'al hufūf', 1, '142801'),
  (305, 'Rahaf Al-Enezi', 'rahaf.alenezi68@gmail.com', 'scrypt:32768:8:1$b74wmCUPUy3Z4cZE$93ab573bf0866adaa206d526221ae9b109f2fc0f6e25a34b9fd9a794e00111768eb32bbea530b226aeba58d3bfd7897be0ab820cbd7174659495f3c6597696d8', 'saudi arabia', 'al hufūf', 1, '576360'),
  (306, 'Mashael Al-Dossary', 'mashael.aldossary56@yahoo.com', 'scrypt:32768:8:1$weFPjwKaovLp7Zsq$e6b0356dc68f0e0c3aafbafbf0d773192dde2e44384c1a91ceee6bd247f877240fc90ada65c585b24ea023fe5d74d924832de16fff0c1ea78c792f21da8d9b3f', 'saudi arabia', 'al hufūf', 1, '560027'),
  (307, 'Abdulhadi Al-Dosari', 'abdulhadi.aldosari56@gmail.com', 'scrypt:32768:8:1$wYo73MBawW3iwALv$918a2fec29f962bafeb8aaf7ce2b7d4656a6194b95c39416576d864ed4c56816bfe94b7906377b2b0697f4a456f3f25650987cda5c79f6d5a04d8f95ef55faa5', 'saudi arabia', 'al hufūf', 1, '735226'),
  (308, 'Basil Al-Qurashi', 'basil.alqurashi@yahoo.com', 'scrypt:32768:8:1$8NCb1WBpeEzh568U$13a0b93371404347fdf22d6335a13158f3460514d11da8337e6aeb3456c85b1ac823bc1c3c78ff1482e0837958d892f3688485d33666b29b53721daa289dbda2', 'saudi arabia', 'al jafr', 1, '450556'),
  (309, 'Muath Al-Marri', 'muath.almarri1018@yahoo.com', 'scrypt:32768:8:1$V9QgDIrEmg27yRx2$7760df6dfd790ee93cfa7723f15b68efa397d6cd4f7b177b7811c5a0fd2056b554773ea8535d356a2dd781798022457f6c9ced9dabab2789efe5844dd26a2c3e', 'saudi arabia', 'al jafr', 1, '964625'),
  (310, 'Dalal Al-Subaie', 'dalal.alsubaie1443@gmail.com', 'scrypt:32768:8:1$wfgfqg7ItaDHYCSZ$2cda76ca2efaab486848198ae4369fc4c37d426f2eeb5ea61ded94891e3890599258317dfd3e9964080afa04069b1a2f6eeeccbb1a6ce02cc28ccc57866549ab', 'saudi arabia', 'al jarādīyah', 1, '903999'),
  (311, 'Wael Al-Marri', 'wael.almarri71@yahoo.com', 'scrypt:32768:8:1$FKYtncsPdydJZkBY$ec7ae7a0aa8926e481d586a7808bdafe50d433e04f5efbed596108bfa4ede8443e1a59e99a02ecda5317f7c66884a4e31636f339651913fa1a454c9ee85108ee', 'saudi arabia', 'al jarādīyah', 1, '435879'),
  (312, 'Ahlam Al-Khaldi', 'ahlam.alkhaldi1173@icloud.com', 'scrypt:32768:8:1$S5dtn07PPzufy3r2$125271661053aa3d2fb6336d26ce988aa310c4d37629e4935dbd0f14734238fa533219c5406f6be12448562f0afeabdb76ce257d511da39f8b77d6231fb8ee87', 'saudi arabia', 'al jarādīyah', 1, '598510'),
  (313, 'Hazza Al-Maliki', 'hazza.almaliki96@yahoo.com', 'scrypt:32768:8:1$xtIaoQCwzjI2lAcv$8ef9c5aac4a68874dbc517991181b6e89ae7ef3c9ed8e53ff461990f25c4236f47bc9dd48d77a18e70200d8eca72ee6e3c548ddb1c47eb3b0bfe0c49d4eee504', 'saudi arabia', 'al jarādīyah', 1, '071173'),
  (314, 'Raghad Al-Fahad', 'raghad.alfahad3@gmail.com', 'scrypt:32768:8:1$OggVKYVsekZxScRa$d73095dcd301a2c6e68ca711e19d746041f9dd63bf1db0bb619c71b48d91e24d640e14906075ca008cb5b2685f50d4d817b52b6c337f97cfa40e87d7f6e6bafc', 'saudi arabia', 'al jarādīyah', 1, '816307'),
  (315, 'Jood Al-Jabri', 'jood.aljabri94@gmail.com', 'scrypt:32768:8:1$2Q7rC7PXEM8BaGNW$6daaf35b3ff64ef4d832a10ed6eba23f2695ddb9bf1390354fb050aa88973660612cf449717031f42a71666993a4ec555201b48944d6f5656af6ca49552ebf71', 'saudi arabia', 'al jubayl', 1, '610302'),
  (316, 'Nasser Al-Yami', 'nasser.alyami783@hotmail.com', 'scrypt:32768:8:1$YNe8ecVLwwNWrxS3$1e1aaac5210807ce792c66087d8a5131dbe3797fc3e69162f63f6b722acb2a83cc84dfdce56d4dd50fe3389b3fb7ebdf31cdd1b85005bc00c3d6bb41572f07e4', 'saudi arabia', 'al jubayl', 1, '195967'),
  (317, 'Abdulmajeed Al-Fouzan', 'abdulmajeed.alfouzan@icloud.com', 'scrypt:32768:8:1$ASVm4Krp5wtlI5wo$5562ffa2c16e78123cb9eb1287c49a487c68caadeb5a83e614bd3fa669eb587cad15c48586d1a47c10b805f163618c5d1fba6350010944fc9f61b23650860c60', 'saudi arabia', 'al jubayl', 1, '202566'),
  (318, 'Mubarak Al-Amri', 'mubarak.alamri32@gmail.com', 'scrypt:32768:8:1$CVYvwuN3ubG7rMaY$37c604b5ca9db5042ea2a920789354a3228b1efb94710c1fc4f4970e28b0a4a8b68fda2b671b0f779c7145950815fb53fd7d653e1b6d67209837bf2c3d466099', 'saudi arabia', 'al jubayl', 1, '820481'),
  (319, 'Eid Al-Harthi', 'eid.alharthi@gmail.com', 'scrypt:32768:8:1$OzD0NMfQx2b97zpu$02d8bd245d14dcc2405868b0d7743818b0efede9358bff75d8853d96cd56a19a2f0d382fd576f60ddb424ad37b49e46950f5d0a1380b35d05a4d2eb0ec911bca', 'saudi arabia', 'al jumūm', 1, '073752'),
  (320, 'Rayan Al-Malki', 'rayan.almalki@hotmail.com', 'scrypt:32768:8:1$p1wBh8QuP9sVHVl8$5eb55b01ddcf7aba569d991a0579dc2e7bede1c4590c3cb1d0327bb1de76210026d342a5554335af43a48dbb3754c75fa2f4f309df49b48f03df39120fd8aa58', 'saudi arabia', 'al jumūm', 1, '235192'),
  (321, 'Anas Al-Jabri', 'anas.aljabri558@gmail.com', 'scrypt:32768:8:1$uN1mAINTXWclKOj9$f6e450f6b2f88b7134994bfd7055155e6a479ca6200112ea805e97f5af9e9db8e229d5f5661a17d997180e6e8e33495f15f79aea915e8ead56791a707e799aa7', 'saudi arabia', 'al khafjī', 1, '905143'),
  (322, 'Bader Al-Shammari', 'bader.alshammari@gmail.com', 'scrypt:32768:8:1$5DRHt8a7euXf8Phb$5adf248a0ae1578d08355923bc1d9cfb520afa11baa3f9628c0d16d27275e213103e51a5b2c7a2c6515f6b30a543ad37fce153fb126154088b848efdcc3b56d9', 'saudi arabia', 'al khafjī', 1, '468735'),
  (323, 'Layla Al-Qahtani', 'layla.alqahtani11@gmail.com', 'scrypt:32768:8:1$5xz40GCPygl2Yrf7$0d2f737622b68c545e3cbd5b1ec56d0852cc87e62e10eb860a814f86256785866cb26ba29a36c7bdefade5b9da503a7e30c435f3caf74a4e4403afb9c20873c2', 'saudi arabia', 'al khafjī', 1, '668016'),
  (324, 'Mohammed Al-Mubarak', 'mohammed.almubarak1085@gmail.com', 'scrypt:32768:8:1$v6YKdiYbmKBRO7gg$6b319e815cba55be16a2d47aa4e235edeab88934bf6b33d041f3d4b5208abde667a021ef5f8c02e5aa89bf4f731fd841af45da8b3539f121121d91a1f228a772', 'saudi arabia', 'al khafjī', 1, '112822'),
  (325, 'Nada Al-Hazmi', 'nada.alhazmi1947@outlook.com', 'scrypt:32768:8:1$XRLeau51EkLoxmG5$d8bec04ff12b49b6e7df17ea214db6986952ec80bbd53b0e321527ce68e714f8ddaff4cf4c9608969b3eb69ba1fa41611802cdb122fb5d7005ff38460f8420fc', 'saudi arabia', 'al kharj', 1, '104093'),
  (326, 'Meshal Al-Dossary', 'meshal.aldossary1851@gmail.com', 'scrypt:32768:8:1$viPjOjSogZMr5XrX$276e5cfabf0c0bcd2ef3fec2b5c380d987555286ae01ed91739a0fb4fe8686aa6260a8071f2473a9856a261ddf2d3c84e9bac91ec325ef63ffb538ae602c14ea', 'saudi arabia', 'al kharj', 1, '951610'),
  (327, 'Bassam Al-Hazmi', 'bassam.alhazmi1257@hotmail.com', 'scrypt:32768:8:1$pKNt5EuRjejqnYkt$44f459c0e1ff9bb2e6f3f026255ee5c212fb8a5c7f06514da276a5eb9e1d4fb79f642ab2934b6e4cb64725e67b156213797dfc52df8f62da97f9aaab4a5f1c13', 'saudi arabia', 'al kharj', 1, '961933'),
  (328, 'Anfal Al-Najjar', 'anfal.alnajjar810@yahoo.com', 'scrypt:32768:8:1$Uwev91MyatWSbT2G$24994868934e16c1474c3b40709e0af7cdb1faa1b8912c0d0127895b4178b1fcd91c8dfd55ecde2112ad8f31fd4a80a1bb01cbe177f2293118c2a301409de9d4', 'saudi arabia', 'al kharj', 1, '992956'),
  (329, 'Samer Al-Qurashi', 'samer.alqurashi1033@gmail.com', 'scrypt:32768:8:1$nRKpowHjn4yZhHoI$6199a47d2840fe779826504fcc0077b3c4dff00f3702016c1aec72a892e6a43902a2285054239561f40d31ca20ae653d7656927dc022ba91089306938de51177', 'saudi arabia', 'al kharj', 1, '245723'),
  (330, 'Meshal Al-Khaldi', 'meshal.alkhaldi@outlook.com', 'scrypt:32768:8:1$gdoVkpaOUOyPqhzA$7d3463551949c65d650daae81195534663023491afb125f2e7b574a90e7a1dc1d0453fee3b45a3e3623e6f540bbe7a51293cab44b1874170332aac6465560dfe', 'saudi arabia', 'al majāridah', 1, '791215'),
  (331, 'Wafa Al-Shammari', 'wafa.alshammari90@icloud.com', 'scrypt:32768:8:1$VZk2iDhc2P6l36Pk$ece12d59d67387beeed5901799c111e83a53be0c13a91a117534c861a711570d94606e1be53edbf4d5a5dd7beb7848465c6906c3b9bfba561f2d17af6d378ad0', 'saudi arabia', 'al majāridah', 1, '519752'),
  (332, 'Bashayer Al-Khaldi', 'bashayer.alkhaldi99@gmail.com', 'scrypt:32768:8:1$hKGIYISMFjlFOnNe$0873bc1f80fda91efe7be0c8342d5cc6c465dc601372cf5afaab2e0f59fa65041b868bad9fd26a1cf1393c637de03abafc132d0a666b912864ba0bf868e035f7', 'saudi arabia', 'al majāridah', 1, '623161'),
  (333, 'Sulaiman Al-Dawsari', 'sulaiman.aldawsari@gmail.com', 'scrypt:32768:8:1$GPwRGV2fhs3eNggf$c0cf87f6121e0291c885d0e92a31690fb757461e83778f99a11c261ad19060cc92a401ad6cce1a1533e0f25a4bc8104eb4909451badae6f776803e9170048b71', 'saudi arabia', 'al majāridah', 1, '207324'),
  (334, 'Lama Al-Ghamdi', 'lama.alghamdi81@outlook.com', 'scrypt:32768:8:1$U5jOLaheCyJmK0Ij$29aa30eb60c969167e075d7bb54e56225c66d7cd7b7cba60c46f9fcf1b894623d2dbe6d5a77db4f388e54fec93c2d2b095968db411a7449bc5371d2b6bc048a1', 'saudi arabia', 'al majāridah', 1, '765409'),
  (335, 'Tamim Al-Dosari', 'tamim.aldosari50@hotmail.com', 'scrypt:32768:8:1$SFfMrkh9w1DiSs3M$0a8f2ba5ce6d86de2ce55a72b2908988c56f3b2a9eb1e8fff8ac908f098a02381a33e95b1f65177cae539672766db52bae49c1d538d8ab4ef47e9fa81499aed8', 'saudi arabia', 'al markaz', 1, '683175'),
  (336, 'Rashed Al-Marri', 'rashed.almarri34@gmail.com', 'scrypt:32768:8:1$SuYL5UedXXhMGMcA$156c7b331eccd9607df92899d6f893834d8985d659a502204bb7c1b5c5b8391a521a7144f01a8fb321747e0cc03829b5671a434952c462f671d94912bd845aa8', 'saudi arabia', 'al markaz', 1, '767851'),
  (337, 'Mansour Al-Maliki', 'mansour.almaliki@gmail.com', 'scrypt:32768:8:1$xUUGT8VQ1SOYVVu5$fbc2386eacbdcf3590a19f9df46d41e8c6a3491c0d08025b3f6f526c95a3090c3db33a2631462582b52b044a14a3cfe02aa4bc8b96af8a56e9a5780fb773445c', 'saudi arabia', 'al markaz', 1, '444264'),
  (338, 'Amani Al-Sulami', 'amani.alsulami77@gmail.com', 'scrypt:32768:8:1$v5Dh0TCllXOboSUA$522736ee9d9b6c44074b0e87f099016ac279c3970c8b90d88a7df6e41abeb6f1acbd16fb193ab1acf72d4e5996aa223a219f57045331853187a5ebd187541908', 'saudi arabia', 'al markaz', 1, '732776'),
  (339, 'Sahar Al-Shamrani', 'sahar.alshamrani@hotmail.com', 'scrypt:32768:8:1$hxNZREEqnXYjHu6U$67c69841032dc53a04b48ca84b3c9e48861b318d80473f0b4269e0064da7a0b5716e724e7497b69fa30586e2634f7fadd2f1967c1766bc67e13a8f21872d3388', 'saudi arabia', 'al mindak', 1, '545954'),
  (340, 'Mariam Al-Amri', 'mariam.alamri2@gmail.com', 'scrypt:32768:8:1$g9lyr8ocdJOwKCDy$d7126a6c32ffe12547ea4c27f4cf47714ecb6356460323b7aa9d2608a053b8f8245e3a3073f9ee5e31b1834792e6d69efcce9174966ec2118dafa4caf87a777b', 'saudi arabia', 'al mindak', 1, '314193'),
  (341, 'Taghreed Al-Tamimi', 'taghreed.altamimi24@gmail.com', 'scrypt:32768:8:1$OQNoTGZz0HnuFH6l$6efaeb2f73865b2757844f33bd240c8222921fe28ff1fa4b341d1397cf4d103b8ebd539b3037744b6cf278bc56a2750221639c5de56b0621484a6226482710e7', 'saudi arabia', 'al mithnab', 1, '018559'),
  (342, 'Maha Al-Shehri', 'maha.alshehri72@outlook.com', 'scrypt:32768:8:1$1PDi4Bm2iaCNULeQ$26d9eac766d499ef2bde73b78aad6553a1defe5ffce5471adf1ce04f1e9dfa2b72220d45b1f36a1b349ef7f3b035c8ef056f657fac0d0ae31e2a371842e0dcc5', 'saudi arabia', 'al mithnab', 1, '181386'),
  (343, 'Shaikha Al-Sulami', 'shaikha.alsulami8@gmail.com', 'scrypt:32768:8:1$kNK9Trbrsl27QSrn$0889aef56aa967ef3c9f69e4df3c94760f97d6eb74d32fa17adbf2bf7a412e25e808671ed6b8b30fe5187046c4aa729abc60b494bc4ec331d8ce73e2c3949724', 'saudi arabia', 'al mithnab', 1, '471515'),
  (344, 'Tarfa Al-Mubarak', 'tarfa.almubarak@gmail.com', 'scrypt:32768:8:1$A75jLTF4QsJ6HJGv$bec1335ecb17c67f2c724f863b1db0c5b0c5fb0869e953950cfeefbb97b92f279a23c483bf8299ee1462addf3b6996c3f40c6ec8a740e52f2792d4b58cbf7b01', 'saudi arabia', 'al mithnab', 1, '346061'),
  (345, 'Hanan Al-Fahad', 'hanan.alfahad1355@gmail.com', 'scrypt:32768:8:1$zpO29kFcMkUuEFuH$1ec756930f6ce23f3a92c37e873150cfb629d2e9b1e0cff6298f5b4b1386e1f799b23c3ada7f062947eccd72f8c467d3b87b4e83cfeff96f4fbb2916749b65af', 'saudi arabia', 'al mithnab', 1, '603248'),
  (346, 'Hatim Al-Shehri', 'hatim.alshehri@icloud.com', 'scrypt:32768:8:1$m28mHvF92Fv1XUbQ$9391de227c384eb44a3c3e315f33d02c5816ec23abba974aa277c5c3ce3f770ff826ce85e98293edcccf754c036cc8cac3641e99884560c031658b33c15e6e4d', 'saudi arabia', 'al mubarraz', 1, '208955'),
  (347, 'Ramzi Al-Zaid', 'ramzi.alzaid41@gmail.com', 'scrypt:32768:8:1$V5DyVnMFrapSxHya$a154b90dfd2f5a9ab6647b878c837260daba32f05a4f16916169d127b24966b42b86b249989d4fa172b56ae349143804259501b876fdfad144c00ddb9a2f5e21', 'saudi arabia', 'al munayzilah', 1, '083046'),
  (348, 'Sarah Al-Jabri', 'sarah.aljabri@hotmail.com', 'scrypt:32768:8:1$GuXqLkNqlksx16iz$625e84fb2201663732d2742dc71b0477e84d3cfa63bc539ba0da5700382289163fdef7a429632285053849e8cbb52bd491f4fc9725b3ee4d4d5a1108680f872c', 'saudi arabia', 'al munayzilah', 1, '651421'),
  (349, 'Abdulhadi Al-Mutairi', 'abdulhadi.almutairi77@gmail.com', 'scrypt:32768:8:1$5TV1igSL4IehqPCe$81421c27346198596d8ff8aa02315870ce31dc786b266abbd8179b53bc6c65d5d1d7eb4f6fb43a09b90e11f1069786118031310b5e0a59fac3b2cc227439174b', 'saudi arabia', 'al munayzilah', 1, '689054'),
  (350, 'Ehab Al-Rajhi', 'ehab.alrajhi955@gmail.com', 'scrypt:32768:8:1$uEL3vyxOK4sgtdyC$0a4538ae42f34c156cd6261538dc47a9dc4af4f0b43fcf37668cfa30cfe09bb8340a816ddfbd652bd0d5b2622b0027ddc9c670edae94f217d45dfdd09b039d03', 'saudi arabia', 'al munayzilah', 1, '626657'),
  (351, 'Ghazi Al-Mousa', 'ghazi.almousa@gmail.com', 'scrypt:32768:8:1$O7HfdzJcF7UKxhgE$6235af7f589ae4bb377dc68cb4027205fbd14c909dbde644c873f959ec148c37a9d22861722af1b7e1cc8705ce4f1748b56a2d135cb6deb3d636fd3dbbab2bbb', 'saudi arabia', 'al munayzilah', 1, '126347'),
  (352, 'Murad Al-Zahrani', 'murad.alzahrani60@gmail.com', 'scrypt:32768:8:1$XoGR3HoRy4bgZUYk$eff7e9f33d33dbef81ff6104aa7a77bbdc521cfaaaf6d65159470d6a23f476655e56f6a4cc5d9e6e8fd292b6f24e37dae318b613f6b4bb8e1ad1eb9d39b259e7', 'saudi arabia', 'al muţayrifī', 1, '639021'),
  (353, 'Naif Al-Enezi', 'naif.alenezi@gmail.com', 'scrypt:32768:8:1$xdDLGheI5JU6u08o$1623b2093cac46c9e952bf90d326e0dfcf5522b7d87011f4c451fac091679840ba796df66a2c03bdfa49ecb339befe3afebbb4560afb2f2d1582375b5e01847e', 'saudi arabia', 'al muţayrifī', 1, '529841'),
  (354, 'Ammar Al-Sulami', 'ammar.alsulami@outlook.com', 'scrypt:32768:8:1$lu9llGmUtG3aStRt$d1cd3d00bf074931bdcf8fcee3be0525e7506752937c130cb853f2832ffffb172c0ca3ea5a38f9b40de403383728ff8abf82c70c5ed2bb737a50ed4164c4ccd9', 'saudi arabia', 'al muwayh', 1, '170403'),
  (355, 'Badr Al-Johani', 'badr.aljohani237@gmail.com', 'scrypt:32768:8:1$kpMBdHvkuLZ0n0y1$09748b7d95e7451976e6571ced9822f5cf674ad7aa4cacd80c3b16df4aaa42b8e85e32ac0839bb4b01ae167c1d495315429d4f413b9130080369a13e38818619', 'saudi arabia', 'al qārah', 1, '355989'),
  (356, 'Aisha Al-Mutairi', 'aisha.almutairi905@gmail.com', 'scrypt:32768:8:1$AT0Un5tmPCBgYpzg$3ded2b5038e7ea2d64b7a945fde024577ee54273976baaa21b67daf75b2cc75793a29dbc5475d91172244bde2cce83f831f60e81c639475ce6e5ae60414c00c6', 'saudi arabia', 'al qārah', 1, '838767'),
  (357, 'Ibrahim Al-Rowaili', 'ibrahim.alrowaili@hotmail.com', 'scrypt:32768:8:1$fIS27CTZMUwx5XEF$6dc24b7817faf30232da99ecf5faaf404c982289c7b8eb2b1f100935a7c0a86b6350f9286bb66987e487a4afe57f8045807666d5c3952503c1d096c62e20e051', 'saudi arabia', 'al qārah', 1, '763987'),
  (358, 'Eyad Al-Subaie', 'eyad.alsubaie@gmail.com', 'scrypt:32768:8:1$Ik9jTfXXCwHDRZVC$36d90589be41601407835105c3235fafda788956b7f11a92125ea415c1b6aa46fdb13769e04cfe8632bfc9425a0d2088124324166190a925145c198df259e40b', 'saudi arabia', 'al qārah', 1, '703138'),
  (359, 'Majed Al-Juhani', 'majed.aljuhani@icloud.com', 'scrypt:32768:8:1$UZjDYsE3yGcYodYM$1b71d3c5310fa9e794de1873667331b4865e8276bf24b744dc34533d51a3bc7351592181ad846494eb7e1c3a82cda7f281929eaee7cc9e2c07e637332b2e80d8', 'saudi arabia', 'al qārah', 1, '920587'),
  (360, 'Marwan Al-Khaldi', 'marwan.alkhaldi@yahoo.com', 'scrypt:32768:8:1$EMmVZF6wKMRiDIyq$ed391a99f30549f28f96263cb9b12f9243ae5e30b62fe7c22d1957113c463e59a0ee6089097dff5cc82563f50f99c19bb7b2560d89327487c02353601f3a1198', 'saudi arabia', 'al qatif', 1, '850951'),
  (361, 'Yasir Al-Mutairi', 'yasir.almutairi@gmail.com', 'scrypt:32768:8:1$splsQ9uiSRVtPRRJ$fb65099b0705b98adbe60b2d5d710254a85703cbf6ea51e4ba538210985c3a27b4937b56d57bc937f6b874519c23124718d5a2ffd977993cc23baf83d804354d', 'saudi arabia', 'al qatif', 1, '594850'),
  (362, 'Bayan Al-Fouzan', 'bayan.alfouzan1252@gmail.com', 'scrypt:32768:8:1$zV9c4A6cOYZEvV3s$4982cc2af3f6e73509a20699284ad9d15c5c82f92f50f606db3de60f896ea619b27a14b2f826b214a5964a4bbb64fa9bacef46f6bfb541a376e1b50e2dfc0cc6', 'saudi arabia', 'al qatif', 1, '977478'),
  (363, 'Maram Al-Harthi', 'maram.alharthi76@yahoo.com', 'scrypt:32768:8:1$AOlwCm97apcX8xuO$eb4e9360bb902488a1d53be1ce95b90badc955dda6ec91289319459734fe2b7159ae0400b0de6539197726c9a1cb4ee73923de43fc88586dc14f707214d31172', 'saudi arabia', 'al qatif', 1, '115830'),
  (364, 'Shahad Al-Juhani', 'shahad.aljuhani1464@gmail.com', 'scrypt:32768:8:1$tL8LDxGa2gaWT6tQ$7560fda3238e96b8e076f4d91dfeace997e5983adb686d9995667246166ab718c39cf9fae83e6aa9848564d949223a00631e728825da0077593377020aaa405e', 'saudi arabia', 'al qaţīf', 1, '126350'),
  (365, 'Shaker Al-Hussain', 'shaker.alhussain@gmail.com', 'scrypt:32768:8:1$fSv9OnTRtDN98scX$b8239967aeb8e1eb54ffdf0c47890521b51b6f27dc6debbe3bd7a95167177926ef9251e402ce129ca14b2ddd5390adaf5bf8aaed91c1c3e39ab84e76bd246a6f', 'saudi arabia', 'al qaţīf', 1, '010580'),
  (366, 'Abeer Al-Dhafiri', 'abeer.aldhafiri62@outlook.com', 'scrypt:32768:8:1$XwZgE8wS0maKr5a5$1f986c3db329a2d708d24da05a43a252b38da0793f4ac4d28ec335831a8ca837c13fc09009d5b1b75d1e67e7512d18de605896c4628a23b180d011f79e1c6e87', 'saudi arabia', 'al qaţīf', 1, '215219'),
  (367, 'Saif Al-Anazi', 'saif.alanazi@hotmail.com', 'scrypt:32768:8:1$ZNg6BP4ZOmn39cCJ$6b2058d23194d2396a57ed19f1c074318b0f3fdec0ba7e8f5461e82966e5fb91893ff949bae3eb472b5f7e3db570b7e60bab659caf7de00783d794e9b9d320d7', 'saudi arabia', 'al qaţīf', 1, '047286'),
  (368, 'Tariq Al-Ghamdi', 'tariq.alghamdi@gmail.com', 'scrypt:32768:8:1$RWeWdNtR8z1OEIAq$8b81a8a4e5efe820757dd1d40d40cb98bf6a0579dcc4a2bea0faae0ce8ee4128271b64674ea638686a4c435a610eaa66376f5bf1579fa944ae5c6ee8084df47c', 'saudi arabia', 'al qaţīf', 1, '948297'),
  (369, 'Sami Al-Fouzan', 'sami.alfouzan82@hotmail.com', 'scrypt:32768:8:1$ZLjJRN6onezwEdVC$06b9c2e6a51f6062e9919661722694bf154124c7582aeb1351662cbbbda5e5f1f9ae12e2428f9cf01c8bc4f7468ea73acefa371c9b3f6be1b2ebb3c25f813296', 'saudi arabia', 'al qurayn', 1, '305734'),
  (370, 'Majed Al-Rashed', 'majed.alrashed692@gmail.com', 'scrypt:32768:8:1$uLyCyB8VTZUmiRgo$a57b2396725eac96ceddeb2abd6b25bcee7dd8bad026e2d96b6886b5586578ee9c428733429859c3382f76da971ecfde3edaf31875d601d559df93ca76cbd2d5', 'saudi arabia', 'al qurayn', 1, '083490'),
  (371, 'Badr Al-Rowaili', 'badr.alrowaili157@gmail.com', 'scrypt:32768:8:1$hGRBVC5TQW9EXQop$fc85a17326bf1cff4703a2fbe886961dfb63491229dbea6d7fca927db463dcaf0f2c2b489ae9dbf898aa9e726806f0a47f6a170ed385fc8928b09c4797b61f83', 'saudi arabia', 'al wajh', 1, '277553'),
  (372, 'Ghanem Al-Mutlaq', 'ghanem.almutlaq1668@icloud.com', 'scrypt:32768:8:1$dktSsvpyW2K8VCkU$72dd42ee309882c596b82888e8f790cdea4b919bbac4f7fc47f3072a76627a9ac70469fe8caa5ca5f174047c3d712c16f02b5858947fdf8d5c01244242189258', 'saudi arabia', 'al wajh', 1, '880572'),
  (373, 'Reem Al-Harbi', 'reem.alharbi@hotmail.com', 'scrypt:32768:8:1$4Q6bawlTH0TSNh7Q$50e7efcab4b45a9b0c9313a63d2fb92c3ceda2a4ff76b90dca4c3fe56f25fcb80bc52065b793d4d2fcd5bdffed08e007d51ea0885d40f3272ceb3b1f40fc717c', 'saudi arabia', 'al yamamah', 1, '833455'),
  (374, 'Saeed Al-Qahtani', 'saeed.alqahtani1343@icloud.com', 'scrypt:32768:8:1$sDSmYSItmlDVbGz7$9d315b019fe57a30f282b8ae2f11b432e14104edb2e0e760d24220415826460636f817742107b82a779c01e1460a6b16908633e712aaef2b01776d4307528cb7', 'saudi arabia', 'al yamamah', 1, '053851'),
  (375, 'Ali Al-Qassim', 'ali.alqassim38@hotmail.com', 'scrypt:32768:8:1$14rucaXQ6cXIutjW$0b51f4ac920f5bc50b7f03ad073ad374244f1ca8c1086e1c2b19ae216e551a1f4e35f6a978fec5bfd3b3ea00f8625e0aff7070d57ad6c6cbf4fd599e1b1ae545', 'saudi arabia', 'al-ula', 1, '041905'),
  (376, 'Mishari Al-Bishi', 'mishari.albishi@icloud.com', 'scrypt:32768:8:1$50EcqWRBpfwgR7W6$fb42d234b78808964078a30bfc346d5934999b071973729db4e0528689ecaa36a309a0ee978a9e5be17a2bf03ca04c08ae37bcecace890a22864f401b91a5a43', 'saudi arabia', 'al-ula', 1, '520862'),
  (377, 'Fares Al-Obaid', 'fares.alobaid779@yahoo.com', 'scrypt:32768:8:1$aqf3aeLh3qcnmsT8$8732ad77a0a1502d5fc85894ae5e9a949a7d93258f0d132a67b2a7440833e1e771a5a3bbe3683dc32b5fd8f4ecfecc88d34096ab96d15532a54f903779d5e1ee', 'saudi arabia', 'al-ula', 1, '054335'),
  (378, 'Qusai Al-Mansour', 'qusai.almansour451@yahoo.com', 'scrypt:32768:8:1$07Ph4euPCczF53y9$d320bc4d178e347f3faa9faa2d1a90a0140b21c31cd92ba47376bfbc0bf8e044c197a5295abdd6e59bb2964cc504fb16f868b28096f16d447bf55e83b16d9763', 'saudi arabia', 'an nimāş', 1, '343633'),
  (379, 'Zainab Al-Sulami', 'zainab.alsulami77@icloud.com', 'scrypt:32768:8:1$8ChsRf5x5wbtzTQ8$86fa8eff7168b2470888456a695a91afac91f9f0960bfc03c0afeda2388cffb95a5ab22411da1dae1db96ea31cec0d881cd2ff12630105f45917f2229b8eaab1', 'saudi arabia', 'an nimāş', 1, '217239'),
  (380, 'Fai Al-Hakami', 'fai.alhakami1020@gmail.com', 'scrypt:32768:8:1$WT8T99X77nT2nDiS$62bd4fdc3c4634ca78bf6cbefe6c660d9b760eaf3af3926b462b7e3b893f5e2ae0dca7cf8eda8d4916cedb3135003f6eb9897069cb26b536e69d0f466f3e7f29', 'saudi arabia', 'an nimāş', 1, '686062'),
  (381, 'Bayan Al-Mousa', 'bayan.almousa@gmail.com', 'scrypt:32768:8:1$zGiQpFArs2ZFlIQA$fab998bcbf3ad230a70c27794ddea7019cafa9b6e2dbc138577eabc36e9726815ca0ae432aec9cfe02feb242a273655a28b8d8ebaaf084c488b854474a5f4bb5', 'saudi arabia', 'an nimāş', 1, '399280'),
  (382, 'Ghaida Al-Bishi', 'ghaida.albishi464@gmail.com', 'scrypt:32768:8:1$Ny14oZvGJluXhxSD$015b9642bfa15b09177316a392078a63f712e818974570c11947971a84959be8842a786cb0bddcc8a8798e64de11d96416969bb076420568e81ed32f1b881935', 'saudi arabia', 'an nimāş', 1, '729574'),
  (383, 'Jaber Al-Mousa', 'jaber.almousa48@gmail.com', 'scrypt:32768:8:1$YGoPb2hXp7ljF3vM$95baeb5db84defdf70159b63c897134a0aed03df6ff5a2f58e7420106baabb21da3591c7cd4d23b8d46b2ce954bc96b6e2c0f5f0017701d374815151a2234a87', 'saudi arabia', 'ar rass', 1, '655051'),
  (384, 'Walid Al-Balawi', 'walid.albalawi31@gmail.com', 'scrypt:32768:8:1$kMjwSfTBpUZTtjqR$3b2970c9477986889ab2eb7fc63aa33c18e07a2e7d751ed5102ce28a7a17d176b346ae49e56620d76e90d3a527bf51c3ecce5021fd4b3c7323a212510be207e5', 'saudi arabia', 'ar rass', 1, '990696'),
  (385, 'Moath Al-Khateeb', 'moath.alkhateeb@outlook.com', 'scrypt:32768:8:1$VBIf5MgCIm8GSLdE$cbc1b363e3e5035be5663609bc8056d506ed82ab22376a1e91e29334aa0b4ee864185fb30cbd1ccc0c34137b124f826baacc0e739e7a1ae967249d8189b2f167', 'saudi arabia', 'ar rass', 1, '642259'),
  (386, 'Bandar Al-Subaie', 'bandar.alsubaie41@icloud.com', 'scrypt:32768:8:1$bBWLUCykm50RjIlF$0ae2d1c450c76d9f450113c7167b06dd1931dd04a6ba2f8ce8b2308fbd7e8792ed738a3bb4d8be178745a2684dcc58dc9c16b52d68221d71ed895567542779ca', 'saudi arabia', 'arar', 1, '811936'),
  (387, 'Ghada Al-Tamimi', 'ghada.altamimi@gmail.com', 'scrypt:32768:8:1$xxmcqec54aCxfZSy$774e5fee79360020abfb32ce014cd45b3d4166f9673767fc3722d473f33b084cc59eaf4ac5575ea4b0ab512d21fa3c42f5bbb9993b4aaecbacb7a8607c3c989d', 'saudi arabia', 'as saffānīyah', 1, '352758'),
  (388, 'Hessa Al-Zahrani', 'hessa.alzahrani1705@yahoo.com', 'scrypt:32768:8:1$4GglwRhKwzVeDbik$a50abb105f30b5f0c2916244d582970c6b56b3d8f8b85992d424ecc8a27b6a4b04b90953b17de8eb428ab1d8199190791cf83f49cc2076808b4c2b25e8ab4ce4', 'saudi arabia', 'as saffānīyah', 1, '093038'),
  (389, 'Murad Al-Ghamdi', 'murad.alghamdi54@gmail.com', 'scrypt:32768:8:1$ubnZlVmFE9zLX81A$2395cfac672dfa1ce608135205faba886c750611fd1f47ed4b39343101113292f9a3ad6365ed190e629cf374da6141f21797a2c5e78bcdf13701a006aad53733', 'saudi arabia', 'as saffānīyah', 1, '021557'),
  (390, 'Areej Al-Asmari', 'areej.alasmari@gmail.com', 'scrypt:32768:8:1$oLDcvUMFuOLjBchn$b0633b85606f94bbdd141fbb644f4eacf55a63937dd3d443de89587d5e4c259d4ef6e4924120952fd16e1aeaaa402629fb8d52c6b613d012ea2ce5515124f851', 'saudi arabia', 'as saffānīyah', 1, '938153'),
  (391, 'Asma Al-Sahli', 'asma.alsahli@icloud.com', 'scrypt:32768:8:1$jGmYk1z2SOUhS1q6$6b6fd2cfdf6a225d9e9a1e77e7050d45cff708ca6fc8ecdf00f5ec2e609724b9484b9f8cbdf86324ac15019e258be1ebf8f4045f17521d69bd7184527fd87ab7', 'saudi arabia', 'as saffānīyah', 1, '485058'),
  (392, 'Sara Al-Qahtani', 'sara.alqahtani47@gmail.com', 'scrypt:32768:8:1$8HigawiLITPG7lJO$6ab00018510f8f13a25fe3edb519078c7847454401154154361b9b7a322ef1c67791877c90208b8fdef52b150ad6ea791ac6d7be30f4b29f58966b1269e4cecf', 'saudi arabia', 'as sulayyil', 1, '884176'),
  (393, 'Abdulrahman Al-Qurashi', 'abdulrahman.alqurashi241@gmail.com', 'scrypt:32768:8:1$uXnuvpc8DwG40Vlr$3d7687bb6fde13c2f0715c17234cc1d61d40873bb3832082768841c33cbbae539180bdfd7e08528ee96068107719d208a1407a211c77e6f54ae9e7efc60cabea', 'saudi arabia', 'as sulayyil', 1, '356053'),
  (394, 'Yasir Al-Shehri', 'yasir.alshehri482@hotmail.com', 'scrypt:32768:8:1$AsuZJNTpguQMX1UK$71d97dd43961f8fd7812b7144a5af6c986e91152e55efe4a05769d9fcbdc093c391ba4cf31247db521abc9fa4e387dcce1fd07678dada0815ea217471801e1e7', 'saudi arabia', 'as sulayyil', 1, '411039'),
  (395, 'Asma Al-Asmari', 'asma.alasmari14@hotmail.com', 'scrypt:32768:8:1$nB7Qzh7ikHHO5Sq5$4c1ba7f85e7240dbf78d5a2053ef874e3a496bdc04a53a98739c2a6a9406ccbfd8f6b99a4418c9af597901663f3d51b85246f7f21df7f5dccb32888aa15470fb', 'saudi arabia', 'as sulayyil', 1, '586681'),
  (396, 'Aisha Al-Anazi', 'aisha.alanazi@gmail.com', 'scrypt:32768:8:1$KuMqSXrTNa6qjrf8$b94a05ec471ce15adad3a844883bf1661f0258904c87bcf1f73088da8acdd329752f36810fc7ec1068558ace4f386ed90ce675f784aa31619493589ac3353272', 'saudi arabia', 'ash shafā', 1, '626468'),
  (397, 'Ghanem Al-Rashidi', 'ghanem.alrashidi1307@gmail.com', 'scrypt:32768:8:1$hOouYpy2XqeOYvei$99822c6d931fcb057bb6d801387556834cedb55283dcd9b1f1ce2faaa1313953d93f26e8cfda7888670ac99cdcad255df7af7ab16cf043024390df1c68d88fdf', 'saudi arabia', 'ash shafā', 1, '466664'),
  (398, 'Mayar Al-Dhafiri', 'mayar.aldhafiri@gmail.com', 'scrypt:32768:8:1$1HhkEy5OvWtrsnHS$2fff1d7145825bf65dc9010b3c150f7627aa4a803da5b7066cfd852a61d062b201e177058c9abb32a5113f8df6506268f19a85445edc3655184d74f8e7585901', 'saudi arabia', 'ash shafā', 1, '722648'),
  (399, 'Maryam Al-Harbi', 'maryam.alharbi@icloud.com', 'scrypt:32768:8:1$sIvzmUfkWAl1GpNa$9e3362fc4ba19937f296e5ae58a63bfbad09c8773326e030ce9cdec012eb82a978d44fb99da09a5e0dec329a3b6cd5fe97ba498af8fe1a3c4683b0c27058341a', 'saudi arabia', 'aţ ţaraf', 1, '266611'),
  (400, 'Salman Al-Juhani', 'salman.aljuhani986@hotmail.com', 'scrypt:32768:8:1$1smH6RIWoWNTReAj$3103c7f055ba3a36536adc90dbdb277e9f3ca84de26c3060b38948fa102d2a4c9fad9578ac1902a1d2ccf3d2a9b491a238169065e16c859b27e0708883ce9440', 'saudi arabia', 'aţ ţaraf', 1, '219597'),
  (401, 'Samar Al-Juhani', 'samar.aljuhani@gmail.com', 'scrypt:32768:8:1$mbEXJlkmNdMIsV3z$aeaba380dc82abf7055cdd96ff0c20a5ea2527e4fff14b6f0e71172e389ffed6631992878de1a099c7621cfc3830f13a2ed34422b142beccf74dc33d23023394', 'saudi arabia', 'aţ ţaraf', 1, '946166'),
  (402, 'Sulafa Al-Maliki', 'sulafa.almaliki64@gmail.com', 'scrypt:32768:8:1$PfbqmjXZRUFsoj2g$f61869550dcc0f5f78fe018c75f9f0172f6a0aa8493152fe613a48cd59120cdb0493088b75b3996eefab39155437e8609cf891c3eab5f0911be219be248430c3', 'saudi arabia', 'aţ ţaraf', 1, '003096'),
  (403, 'Sumaya Al-Juhani', 'sumaya.aljuhani28@gmail.com', 'scrypt:32768:8:1$t7iwlgeOBheJ696V$ca5f35f8ef4fd07d6eb16a992bab530dc3cc07f1ed9a8c6c8a7e0c2008d2d818b1e0658b8c97fc3d8405cfc122d284029e3e5e958a46365030ba7f58f13434ff', 'saudi arabia', 'aţ ţaraf', 1, '970012'),
  (404, 'Yara Al-Hakami', 'yara.alhakami@gmail.com', 'scrypt:32768:8:1$quPssFLNH3D1vzvY$921f5f75e30b1f2212a93f920783d638fd01d83e5c85ec41ffc071fe39509b531cced88bb144c3b4f3ec9f88c1b56fc401081d37cf62491c95e8cb71f3675a35', 'saudi arabia', 'at tūbī', 1, '705555'),
  (405, 'Maha Al-Mutairi', 'maha.almutairi9@hotmail.com', 'scrypt:32768:8:1$iR36sMPwrSMERULc$ebdfdbf493e54bd527bc078ed34f59f4334a97a2e292dada8f3a48115694abe82e84a690cd81ddbb157d9d31d2b2e5483527a5736eb8b6e8e5c628f024f33015', 'saudi arabia', 'at tūbī', 1, '665581'),
  (406, 'Saud Al-Zahrani', 'saud.alzahrani@gmail.com', 'scrypt:32768:8:1$Piwtr65xb2tapdOz$e5cb6a728ce1e1da54107776a41f707eed6c9961137358512a6b9c5d6700e661340008be3e313dd01b8cf2e16bd67417510de591eb31b22bcd1f4e808ab19699', 'saudi arabia', 'at tūbī', 1, '220423'),
  (407, 'Areej Al-Tamimi', 'areej.altamimi@gmail.com', 'scrypt:32768:8:1$OxWoTIH4hOTb0CvK$f7869f6dae2eb4ca49ec7fa313093e9e6a85edc8a2e68ddba492ca9f0fd44405acd7131e3f3caa1352b9dd01aeb851403956bdd90072593827208f1d4fda0f2d', 'saudi arabia', 'at tūbī', 1, '255560'),
  (408, 'Jarallah Al-Dhafiri', 'jarallah.aldhafiri95@icloud.com', 'scrypt:32768:8:1$kMpfUxWtL5sQ8MkR$fe1c6239e371fa53fe5fad9207c00867d31613915084e266850555b7d511917e21652da2e408ce23482f830a2bba04be4b4ccc77daa561251b77db185cf3d535', 'saudi arabia', 'at tūbī', 1, '365631'),
  (409, 'Hani Al-Suwailem', 'hani.alsuwailem@yahoo.com', 'scrypt:32768:8:1$GOxUqt0T9S4CPGCm$5db5d7509d2570dce2c5310859be5642409d24528ab8fa5f5f8d2f15fd5d5b52f9b835267a10356b6cf1b9f09053ac4351b1f3e604f7135581e88c8968004eb8', 'saudi arabia', 'at tuwal', 1, '241492'),
  (410, 'Faris Al-Subhi', 'faris.alsubhi@hotmail.com', 'scrypt:32768:8:1$eICCiVDDH0O45VuA$46fe13a68234d117fae74ad2326be519f4a9a3dd834879a47088cadeb22824ea4a59a5825eb38a5b69042b26c212b03a5a9dcebf9a5708bdbe124dfb543f2970', 'saudi arabia', 'at tuwal', 1, '194402'),
  (411, 'Marzouq Al-Otaibi', 'marzouq.alotaibi48@icloud.com', 'scrypt:32768:8:1$HBnxuSoGIttQzYfv$9ec8add5eae4e8169609fe8d9e824b5c76aa1f72735dd9fd0a6115ccbf2b750fcba2075b681abd78f3d2d6d0a119f5e2d61ecba14efb9ea61b61d52b64ffbf1b', 'saudi arabia', 'at tuwal', 1, '308470'),
  (412, 'Hayat Al-Sayed', 'hayat.alsayed63@gmail.com', 'scrypt:32768:8:1$B36miZ7VEOSGKt0z$9bb9babf1f7dc64104ad9a83f697bc111f8980cc17e33ee0036e060f31471b3d34470ccecd94705866464d7802e1aa1d9562a501655366acbb3a3a02324906b7', 'saudi arabia', 'at tuwal', 1, '029911'),
  (413, 'Hamoud Al-Fouzan', 'hamoud.alfouzan32@gmail.com', 'scrypt:32768:8:1$EVy87028X81tensO$2a74b3d6e522cbd11ca3f81da5005bf5b321247942e6017bf0a5cd83e7cbee9c2b5417035f13b2c6fa087e37ff880246c9d8a78381dac93748c242cc1f1c701e', 'saudi arabia', 'az zulfī', 1, '439011'),
  (414, 'Salma Al-Maliki', 'salma.almaliki87@yahoo.com', 'scrypt:32768:8:1$QZQuDkO6C4Iew1Lk$a692b2d22323931d739e2903df84c0a7b0c8da3acbe7f055b8f8de5627bc6f21c9d3c43c1552c828c9d64bdc2a59ef78228e17627cda4af319adf4e74eb262b5', 'saudi arabia', 'badr ḩunayn', 1, '739417'),
  (415, 'Yousef Al-Tamimi', 'yousef.altamimi337@gmail.com', 'scrypt:32768:8:1$7fMbGGxAMYwP3cxQ$8507499e9857d9491eb5aaf00c9a8c3d429888912fb43b068c0a8f599f5a484abc483484bc0ae849bd2d2b189ff14c7065e5f3dcdfbb0c78e85027165ea54b25', 'saudi arabia', 'badr ḩunayn', 1, '330470'),
  (416, 'Ahmed Al-Yami', 'ahmed.alyami1894@gmail.com', 'scrypt:32768:8:1$Fay0Tsr0EZvenHXC$dcea0e710d73dc0f52179c6e6543af95e7e24db8fbcc1baf032554bcce499ad9a0811fa09b54411ff76cc62cb46d6c80f71d8ce15adcf4ad857ab790c0b7e95c', 'saudi arabia', 'badr ḩunayn', 1, '950691'),
  (417, 'Ayman Al-Zahrani', 'ayman.alzahrani1843@gmail.com', 'scrypt:32768:8:1$MZm7kColPt0rvYjS$45c9e7bb025821cffe576ce3ea07f1263dd09ea4a80d77082c9001b4aff25b0ca1eb51d9ccfbfdd31b8c570003f1a5e3a4218906ae83ef630bc8e00ebef376f5', 'saudi arabia', 'badr ḩunayn', 1, '729825'),
  (418, 'Abdullah Al-Otaibi', 'abdullah.alotaibi@gmail.com', 'scrypt:32768:8:1$gvrzwlyKT0aTPucg$9fa7683af5e07c06baed1d0136ac38d71363a6f04adb2ef26f36ea5d7f7161ce193337fb3828a3e573dce9f68eea293f741f3bc631c0636b6b9559515b17a396', 'saudi arabia', 'buraidah', 1, '401585'),
  (419, 'Shouq Al-Zaid', 'shouq.alzaid19@gmail.com', 'scrypt:32768:8:1$abMlpNol1yhZAmrr$c070f20af2f98b605459fb8152c430b9df12178b187f7051c8b810883e329953cfd74905120f03ca9b6f9b4aa111a06c93c676587dc47b5e484832b2ffa3e271', 'saudi arabia', 'buraidah', 1, '809686'),
  (420, 'Najla Al-Rashed', 'najla.alrashed@gmail.com', 'scrypt:32768:8:1$RNM94Y70ER4W63r4$a897808f9dcf01630e3ce178dde8541b7fb13154dfa1592b5a4b322027b94410a26cd9fff030d5a50fa2e9fe640199e1327e076b3dc5b3e6959bf3ef76a24041', 'saudi arabia', 'buraidah', 1, '804616'),
  (421, 'Razan Al-Qarni', 'razan.alqarni@outlook.com', 'scrypt:32768:8:1$0PPpqSwKnK4lCziQ$9704624d1a6ca783fa74f6164b74e1495a9c5f3e40d8e02adfa1d23e71926fb5e834ac358dc7c046a7772e077672962303c961e294b61a0a44d2cf46d59412b8', 'saudi arabia', 'buraidah', 1, '082743'),
  (422, 'Hani Al-Obaid', 'hani.alobaid@gmail.com', 'scrypt:32768:8:1$2ZICYg72cD0pIQBO$8e5212a69540aa88e72e3e876c644d802102a819c54a44ca8f46874fadc61491dcb70c4ef170725d07099b653d54fe769ef95cf72575f098217f5fb41efb403c', 'saudi arabia', 'buraidah', 1, '389976'),
  (423, 'Ammar Al-Hakami', 'ammar.alhakami69@gmail.com', 'scrypt:32768:8:1$BUlC3Us1UM78kTTy$7855f854740c2962efef004ec94b91f83e5e22552d0dfefeeed559ea10d3b5885b63542179357e2881c5d1470275f7172c0de1d20709b798f9e96c85dcb34208', 'saudi arabia', 'buraydah', 1, '336484'),
  (424, 'Remas Al-Harthi', 'remas.alharthi997@gmail.com', 'scrypt:32768:8:1$CY1h3mwhrYmMpF1M$720aee4412cf2424b161be139f8c5689fd563a87a745c2f48d9a24c77f89e83b7a477ba12d3a12e6428b67aa5b037336ce550c1b24247ba532ad0721f9c886bb', 'saudi arabia', 'buraydah', 1, '699554'),
  (425, 'Rami Al-Qahtani', 'rami.alqahtani@gmail.com', 'scrypt:32768:8:1$VCPuaXVhT7kz4vBU$be940e3fc6eb2d6b676aa04b294eb0c39762f9b33254beda48cae6453059a00baad6ed694d39c4de4caf339e369c823bad44cb8e4cb37ee9c03c1594dfdd3c40', 'saudi arabia', 'buraydah', 1, '252599'),
  (426, 'Adel Al-Suwailem', 'adel.alsuwailem@outlook.com', 'scrypt:32768:8:1$xiMfex49bQA1lYAk$55d1fdded510b5c1bf1a6a333f171adcd3c4882dd96cd5ad0588249028127f74b7b24a3ad2764f29314b285829ae929d0cc33e637d2a2d1c15eeb1d4f575f11f', 'saudi arabia', 'dammam', 1, '500826'),
  (427, 'Mutlaq Al-Otaibi', 'mutlaq.alotaibi@hotmail.com', 'scrypt:32768:8:1$MXCjAKmgGqab8ODV$ddb0c111a27199d2a10674f87ea9ce8b5417ad5d5ab88ac936243f7f48c1a1fb0c324dac0c4dfcd08f2f4fff71939082c6f974aae38643135b49438f8ac77db7', 'saudi arabia', 'dammam', 1, '819151'),
  (428, 'Eman Al-Rashed', 'eman.alrashed386@gmail.com', 'scrypt:32768:8:1$krhBZmYud2YHK7as$ea7f35018cafb9492683ded4f73135cc29de12defe09b623606b39ef5246475478fcd8a8e63560706d7cdcb5c8b17c6a2d07272af4f295d33c110527d12c3a92', 'saudi arabia', 'dhahran', 1, '381912'),
  (429, 'Ziyad Al-Balawi', 'ziyad.albalawi1848@gmail.com', 'scrypt:32768:8:1$2EvYyg9sz2t9H15j$dfde1dc9ae40145b088086d729f70b09e0650ad11c38d7c8ec52da31e0cfacde54027fbdec80f7035aac84ec159bd4cbd28bdc28b126a892370db850742ac293', 'saudi arabia', 'dhahran', 1, '392324'),
  (430, 'Hussain Al-Mubarak', 'hussain.almubarak@outlook.com', 'scrypt:32768:8:1$slL1T7wjD3rMs81G$5d8a82b446259ded387c42648237d80814b3676057aed3a6f8f4c05bdfd840a9ed04444c91c55d6a5f7a033123c667176eabb72fc3bcd2da41f79f7edc2bd439', 'saudi arabia', 'duba', 1, '300452'),
  (431, 'Yasser Al-Harbi', 'yasser.alharbi@yahoo.com', 'scrypt:32768:8:1$RU2uHC8SQlhf2eis$2a059e14c3956fa23dc161f3577ae0c8c6bfec027b7439bd8f8ecf2c4532618afaaa5b14f84c10198a93be63b5d053f6d795a684db84f8381a7e58e4e01e5508', 'saudi arabia', 'duba', 1, '931223'),
  (432, 'Hamad Al-Balawi', 'hamad.albalawi@outlook.com', 'scrypt:32768:8:1$F4TA84bTevmCB8pr$54ac5200c6f5f5ea96988f54065dd3955688025548f050614b6a7309ae107fbaea5f26840f7adacd7dc46c27f3edb3c3685a8530046be1d3617c7ea72d9b8705', 'saudi arabia', 'duba', 1, '781241'),
  (433, 'Khalid Al-Dosari', 'khalid.aldosari@hotmail.com', 'scrypt:32768:8:1$zF3yPbk8WW4Ftvnk$6e204bfa10f2a5db0113d7660fbdb4f7d62d663e274023f733dc34d742cd943ba7d8fea9353987a371187eae044cc46048d7efe7d3d455fbd55f61b1491e7d97', 'saudi arabia', 'duba', 1, '854742'),
  (434, 'Abdulwahab Al-Omari', 'abdulwahab.alomari45@hotmail.com', 'scrypt:32768:8:1$ZVCNpoS6aN4scROL$cf5b2e30c90ebc1103ebc0f39f2637741afb38f078747392f09f278dc3b0e103e2f8ace7f19c0fc21cfbe1a1122a201d72243f25a1a66212d7756f35de53b5a7', 'saudi arabia', 'duba', 1, '137572'),
  (435, 'Lama Al-Dosari', 'lama.aldosari1672@icloud.com', 'scrypt:32768:8:1$D2ygUoZD7gEBg5nE$22661845011b6470467355357da527f8ceaecfbdcc46ab377e70534a9b5808ef025b7e7e9771eb88d2f8ce4f47321df803b9698302e6a1241cc4f253a4c90ac3', 'saudi arabia', 'farasān', 1, '613421'),
  (436, 'Tala Al-Tuwaijri', 'tala.altuwaijri@outlook.com', 'scrypt:32768:8:1$9G1p5nchU9qi7EG9$d994f2974968a33baa9e52a0d4f686706cebff69c3bda0f235a6484b9d02aa730a8d82e7cc1dd1278170f7e7e7a63da4b600cb37c03c88a5612278732cf5e3ed', 'saudi arabia', 'ghran', 1, '316233'),
  (437, 'Afnan Al-Khaldi', 'afnan.alkhaldi@gmail.com', 'scrypt:32768:8:1$4ubS8kf0sEWSAwyA$7cff4a3eb8ac5864537101d790c88764a7c386561e180214a15cdd0bee8afeb879afd5bca1a1341522ef84cb73850894e0a5056a7ef985a306c4e57cfdc3fb94', 'saudi arabia', 'ghran', 1, '645674'),
  (438, 'Eman Al-Shamrani', 'eman.alshamrani65@gmail.com', 'scrypt:32768:8:1$HayfGS8UUzFFFKEI$2beca44841b78d8873137143d6cfe96ab3b88103b657ae6ef68ed3386ed8628bcc97b1444123b0049430645d093d8107737daa8003ce253f01a3113c8554ba61', 'saudi arabia', 'ghran', 1, '775343'),
  (439, 'Mazen Al-Rashed', 'mazen.alrashed@gmail.com', 'scrypt:32768:8:1$vkroo2PepiSXFvg2$b76a8138212d73398a77243487c1a2abb30398b8a14bd9b0254759e8f6a23fc60d24accdb9e871bc033f596cca693b7e2de73846a479ed9dd7cb0db0c0c304da', 'saudi arabia', 'ghran', 1, '810152'),
  (440, 'Abdulilah Al-Ahmadi', 'abdulilah.alahmadi96@gmail.com', 'scrypt:32768:8:1$U6NCxZELsTSJpTZh$8b01bc145340e359181e48b86909e8f0f2176d73db31a5ab8888bc1e9a3a0b7aa716d6b7ea3cfbc5536cf298199a573adaabafd3df86a0dbbd2594244a3c4855', 'saudi arabia', 'ha''il', 1, '784707'),
  (441, 'Sara Al-Dosari', 'sara.aldosari1919@gmail.com', 'scrypt:32768:8:1$d4baC27L3etWfJUy$2fab5f3c8233744f5d9dd075bf16df18ae5a0ee1b9be333cb5553d6737c4d47c397c3287e653faa449a92ca9ec8118a2f9a7f3a1c975764934ce490e1bbb102d', 'saudi arabia', 'ha''il', 1, '522799'),
  (442, 'Hussam Al-Johani', 'hussam.aljohani@gmail.com', 'scrypt:32768:8:1$Q0J9R8AyFnRbRVN7$4fc8e1929f9a843fcab10e536fe4e7f9475eae771102dc1519216e9ac09390781c0b3c3ed0507ddad26f0e8e9a179d665deada7ca6935c9b59f2c726a37f115e', 'saudi arabia', 'ha''il', 1, '914707'),
  (443, 'Aljawhara Al-Tuwaijri', 'aljawhara.altuwaijri702@gmail.com', 'scrypt:32768:8:1$ckPOqA2CPikIRQQ6$d1c4c1c4d3bea507f33600c70b57758558a98ef9f5c7f4e4719ed200ee3c5a6983364ecdfea014e4f2409fa1bbe8391e82e4791ec71aefde7776e9a96bede3b1', 'saudi arabia', 'ha''il', 1, '064611'),
  (444, 'Latifa Al-Balawi', 'latifa.albalawi94@gmail.com', 'scrypt:32768:8:1$rbn37MQVZtlRtHWk$3ab48c8039d3c2905f274650379dd33b5ad743d877b10acfb2504ac9ee1b5bf4c61a28374df93ceb04ea434fe4b061990e356cf3cc1822ae04ed75e856e73017', 'saudi arabia', 'hafar al-batin', 1, '534218'),
  (445, 'Fares Al-Tuwaijri', 'fares.altuwaijri19@outlook.com', 'scrypt:32768:8:1$cYzuyrCmpHjIuRWG$3ad88b5f08a5df7511b6b315c1459620bb3738fcecdcfd5e24ff6ab529b31f9febaf97d4bf4b288a2a0a8be67ce3d2d3d64c0f46b0ad9fa6c403d478653d043f', 'saudi arabia', 'hafar al-batin', 1, '720711'),
  (446, 'Bashayer Al-Thubaiti', 'bashayer.althubaiti@hotmail.com', 'scrypt:32768:8:1$17geZPoV7x5FK0YE$1b32422519135ec16b0d2640702f06e1e61a6ab258b864b5b772554f6b892afbdad1339841c8ec7a1c2a811ff1d7673d614fc695425084cd436847a775b91674', 'saudi arabia', 'hafar al-batin', 1, '193844'),
  (447, 'Nawaf Al-Ruwais', 'nawaf.alruwais1089@gmail.com', 'scrypt:32768:8:1$TDr52HcQkDDrMXc8$2392329e35556185728a70832311f4b6d45c3711de1173bfb8427e2c4d6ac5b5ed33e03df486fa0182e8ec192801a232a72ed04f1f33364a35172d6884360a49', 'saudi arabia', 'hafar al-batin', 1, '325338'),
  (448, 'Omar Al-Thubaiti', 'omar.althubaiti@outlook.com', 'scrypt:32768:8:1$yW6qL1ceRbrxXX1L$9b6287c1fbaa09a5c48c85a416671ad5eab92e1e24dd949dacb858eda878fe713e5aa5be1109137dfa0457a5685cacff9e455af644a11fa23e814a153a63a882', 'saudi arabia', 'hafar al-batin', 1, '360505'),
  (449, 'Sumaya Al-Zahrani', 'sumaya.alzahrani46@hotmail.com', 'scrypt:32768:8:1$QgeuW9TPhT1wB05b$e63fced64e9ce3e39f08459ccc8998a88d80c9c9de7469db02aedc8c19c3bc20f3b442a1cd1afc995380ccf062288412e8a605a0abb854af6b97cef0c6f7ccd5', 'saudi arabia', 'hayil', 1, '223019'),
  (450, 'Fatimah Al-Fouzan', 'fatimah.alfouzan@yahoo.com', 'scrypt:32768:8:1$W3DOudoUObJwMoaC$2f6f9f82a8c5205f643322197edd0f36eaeb0884fec788953574592466acfbe09085b895298d7b5e7c27849d8b396d2028cee376b532a394da4ef65c469d0afc', 'saudi arabia', 'hayil', 1, '129132'),
  (451, 'Talal Al-Maliki', 'talal.almaliki1698@gmail.com', 'scrypt:32768:8:1$p2N2TqzvOM9a9lkZ$362852a21abe5f4c812452e9026eb72025496e1f1c483556b7d5c03d543ef89266a58ac9a993b53bcf89bf1ceb6866b24324195c3df3a3fe93a0bd1b8560d40b', 'saudi arabia', 'jazirah', 1, '903033'),
  (452, 'Lujain Al-Mansour', 'lujain.almansour@hotmail.com', 'scrypt:32768:8:1$QZDCXZvZOCqDv9xH$e5a4ed2a23180f26d5fbaf5dbd1cdc0988b661470799cdcf5d93db3095b399be1e0f372a77f90d175bf796358f23407a3a364e499d1e54b3507cbd1e31c1424c', 'saudi arabia', 'jazirah', 1, '497954'),
  (453, 'Nayef Al-Enezi', 'nayef.alenezi30@gmail.com', 'scrypt:32768:8:1$pCAK3IScl9taLOXQ$32e3be225a128e8cf60e0bd3ee9c3404316f63ed3c92ff6774c67956e9b80dfec9d369dfa264c876d7a5ed113b9d5aa96c4693ed4720c442decf1ebe1cb3221d', 'saudi arabia', 'jeddah', 1, '243437'),
  (454, 'Nawwaf Al-Ruwais', 'nawwaf.alruwais@yahoo.com', 'scrypt:32768:8:1$ARWG8WrYBKVKhsFU$16dd22a3c8db77a29ce7d39aee71d95fe97d92d1cd019bf305a5ca770bfc8e19af061e2158ac0769f1e3cd3aa89b6a260d88109e569ccfbb960bb5663d42053a', 'saudi arabia', 'jeddah', 1, '851096'),
  (455, 'Talal Al-Mansour', 'talal.almansour@gmail.com', 'scrypt:32768:8:1$oix7k3Efa1PCpOFT$e1f581a2af51be9ba2fa3c5f09506694836ec1db3390cd41e5b70b296f7f92978b63d48e5301071408f8b3b41d50dbd35bdb91bcf498b07191e4ed9c2160d645', 'saudi arabia', 'jeddah', 1, '298512'),
  (456, 'Hussam Al-Asmari', 'hussam.alasmari185@gmail.com', 'scrypt:32768:8:1$viYfMSpE1Ajb7UQ5$3d380e23b7f00da737865e9e0f421fa8f1e8a5a961c02dfa1a26ced239bb271a4a3609e09e013420368b353302e9f777d11d40d6c830c5b0a5079e4fb694de3f', 'saudi arabia', 'jeddah', 1, '107241'),
  (457, 'Samar Al-Yami', 'samar.alyami425@yahoo.com', 'scrypt:32768:8:1$2aOxmZ3a5M1dkKDR$ecaaf2cc0240f77188b3f5088ff3cc393d598dca7155c557444783ce7ba6ade885f02c7c70d60adc0eeeac437015f596a6cd53adb4d3f7409765b4ead59d460e', 'saudi arabia', 'jeddah', 1, '317726'),
  (458, 'Ashraf Al-Sulami', 'ashraf.alsulami33@gmail.com', 'scrypt:32768:8:1$Jzvaldriwxt2sHGj$974d86623a018bf5cd4f6ac07835604aa286fb176fb62c43f459929fd173964c129d69ea855e7c6304bc2397f86d4b3d8abfb643dd595641b8bb8f089561bd17', 'saudi arabia', 'jizan', 1, '576755'),
  (459, 'Arwa Al-Dossary', 'arwa.aldossary942@gmail.com', 'scrypt:32768:8:1$0t4noLmo7XaN9zRV$454fd2ed60b1326201e9d42e0981f5399d53f9a3898fb91e9c9120b9a462e733a48b4eaaf13d5bd43755fa3aa74a9e0f027525cd5ddbe4f5e527bd191678a370', 'saudi arabia', 'jubail', 1, '089595'),
  (460, 'Mubarak Al-Asmari', 'mubarak.alasmari@outlook.com', 'scrypt:32768:8:1$sQlKyVRkmKsM2fAK$3aa62f355b7c47a6dd763e9c449bb85a29436335be0a8df2ba34e2e493d8c6316a1ba3a4f07c0f831cf10b285702c78613d58f6c64d4298e59a6bd2c79d4371b', 'saudi arabia', 'jubail', 1, '597411'),
  (461, 'Ghassan Al-Rowaili', 'ghassan.alrowaili@outlook.com', 'scrypt:32768:8:1$w0JHsSKAebzoM7vY$c0f0e0bbae31a8f0b2f956122fb23900910dc8f311c6d2a2ddce8ce1fa492baef3e67f84944be9a5b1e4773888a6a9720e87060fda0a3358888cd4ccf8146bf3', 'saudi arabia', 'jubail', 1, '209323'),
  (462, 'Hamdan Al-Hamdan', 'hamdan.alhamdan10@gmail.com', 'scrypt:32768:8:1$GfIEMHXUtkN0YrSO$551da3ad22ff56632f5680b6e0b353a59937bf082646391f5b06601f29e2e26ae0abfc04ac53156aafb406541b6e35211c5fa394a630560634028630f4a80b57', 'saudi arabia', 'julayjilah', 1, '330998'),
  (463, 'Jassim Al-Sayegh', 'jassim.alsayegh@gmail.com', 'scrypt:32768:8:1$TzcrcfGNtBqnZmIx$d9e5a9ebc88608f282142d4e5421a0f6f460d271a439cd6f676e42d89d2c2fbfc29bd310df343b9fae92aa05a731c8919bab911c9f5328497a8eb913078d060b', 'saudi arabia', 'khamis mushait', 1, '624966'),
  (464, 'Marzouq Al-Ajmi', 'marzouq.alajmi61@gmail.com', 'scrypt:32768:8:1$6ow1O2uN1sAa1ksv$2a28cbc68a0927cf8fc6574dcf8b20cfc1f993f96e23c901953344e93e80b4e77f780a1dc7d72b7b1faa7c8f2d562c8706f7085c9047180f8d888f09e0f86ac0', 'saudi arabia', 'khobar', 1, '390765'),
  (465, 'Saad Al-Harthi', 'saad.alharthi@gmail.com', 'scrypt:32768:8:1$mVMUjE8Iktt0xaJ0$ef9b5407fc18e3703d2c92ca5e0b32310ff76bdf7858c7b6fece97f29799f48deba0cfb33ee1ac6c9aec9b7bf9ac0fd354e3a429b2dfda6418241ada8e3d1fdd', 'saudi arabia', 'khobar', 1, '600546'),
  (466, 'Zainab Al-Dhafiri', 'zainab.aldhafiri@yahoo.com', 'scrypt:32768:8:1$v5WKuQvoV5ge9qxm$64f6aa51bb698c735c409e736dfab5fc11a013e5c52492392033399a053d7422bbffbab759356574b4bb74a562fc9fd7e2f0e3e70cc5a7fa45f9b35ed1b9c0e5', 'saudi arabia', 'khobar', 1, '591461'),
  (467, 'Ahmed Al-Asmari', 'ahmed.alasmari52@gmail.com', 'scrypt:32768:8:1$nMcZslOfAIgqQbct$3270fe4b5fd7d0a86b7bf3d3a21c156217bb68413316b3f7d7922b8db507a33020adaca47bf30139f3e2f9eb10b15011edb6da21a6c76e56e1e11e68a537e5b6', 'saudi arabia', 'khobar', 1, '665243'),
  (468, 'Yousef Al-Dhafiri', 'yousef.aldhafiri@gmail.com', 'scrypt:32768:8:1$UfHx8qKNjcCDJ45t$24d346cab58afaea7e034f009a74fb64fd7dd7a4b84693adea9ceea9fc3d332b35419d640ea5c9fd52f3abb0ac78492f58b3b790e45d5fd30d529f458d820fc0', 'saudi arabia', 'khulays', 1, '471983'),
  (469, 'Faris Al-Subhi', 'faris.alsubhi@outlook.com', 'scrypt:32768:8:1$cbqng3WJ28lMbGot$f03bc5417e10f62a47694f8f7280c92c88c92682a6a687fe0048b24c3832d30d54d1b00acf981ac0a2de171ba33d206830fcc362b447b4bab6fd6598d32c2c23', 'saudi arabia', 'khulays', 1, '395776'),
  (470, 'Raed Al-Obaid', 'raed.alobaid42@gmail.com', 'scrypt:32768:8:1$rLdEXjxSZTl5HIoS$6daedb8d3256ed480ba3165ef7c9aefa77759d0fd26604e3f3ad61687ba374d45935a6c12abe98cfe32077822e7af22e3712aa03109538c5663ae7354e03f42e', 'saudi arabia', 'khulays', 1, '694104'),
  (471, 'Noor Al-Hussain', 'noor.alhussain52@hotmail.com', 'scrypt:32768:8:1$vqSBQv1y8MbuSFAW$6ac3dde4c013898112343849473135ef24e1c5c39ea31685fe4acef5c168481f1408b577e7c0703dc44a0a1319b86d9025cf16856cddb5d395bc0f5b958be807', 'saudi arabia', 'khulays', 1, '332153'),
  (472, 'Dana Al-Asmari', 'dana.alasmari480@icloud.com', 'scrypt:32768:8:1$S4wzcg5tXYAtyE2B$55709b1a17164b6bd15d952eae8e71f47d90058f191f9f2880478b00d77b4648eea1b0f7b21f4d61ed3aa4807e8494d427889044c4fd986931f2ef76ae1bf4e2', 'saudi arabia', 'khulays', 1, '170967'),
  (473, 'Hamad Al-Shammari', 'hamad.alshammari54@gmail.com', 'scrypt:32768:8:1$jWG4Ietb3PdLWzvD$7a7ebe32c720749df6a643652f19e548f9333d0133edbaf09ed2aaaed2a6e024cd8afd83f0778dc9e3b1a138a8afe2bbb9796815225c77e221e74a2cffb8f97c', 'saudi arabia', 'linah', 1, '890881'),
  (474, 'Loay Al-Juhani', 'loay.aljuhani@hotmail.com', 'scrypt:32768:8:1$BnbYOtpzSmYkxOLq$138fd6c3aa5100d741fdf31b44b7a3e9f78b1d582d4aeb194786d5a2d52a746b2b2bb4e173545609e5480f434eb14b57f2d2ddf5bc8d85f2e7d305cbd18bdba6', 'saudi arabia', 'madinat yanbu as sinaiyah', 1, '470615'),
  (475, 'Afnan Al-Johani', 'afnan.aljohani@gmail.com', 'scrypt:32768:8:1$TztzbOZ6jLiuLerj$8171a388787a6368dd9f225fbc4fb010229b9be94544f442c2f3b75c2cce5e01a43a801871194dda765e0f355a14e3c4605bb60766c52d588f249c80584cf9bf', 'saudi arabia', 'madinat yanbu as sinaiyah', 1, '105467'),
  (476, 'Sulafa Al-Asmari', 'sulafa.alasmari1146@outlook.com', 'scrypt:32768:8:1$JruM0j3dfaa7PALE$653c9208a70ecbbbfba347579feb126754966cc7c0ad3f99c30fec27a0499b9ee82d356ba1e4c01493013a0e15581a9de1ba46155e89a3e6b2aab040739905ed', 'saudi arabia', 'madinat yanbu as sinaiyah', 1, '696286'),
  (477, 'Noura Al-Otaibi', 'noura.alotaibi835@icloud.com', 'scrypt:32768:8:1$QA4oenAPvhjMOIlQ$75099c075431b8ed616139f1600c4d75a58fb36b197d24b88264a135533914094142ea3b6fa82159293ebe53970f8dc9fcc8ab649219116b3d38f3ab6a8f561a', 'saudi arabia', 'marāt', 1, '230740'),
  (478, 'Tamim Al-Anazi', 'tamim.alanazi@gmail.com', 'scrypt:32768:8:1$P5uC9iDrupchbABx$9be40ee3bd00387444726ae6811131bc0be56bd23b5bde2878c59d29ff3ecf85170b5f9e9c3345efb4c065c36c3ac3e4b8f868fec578589313f31ebfef5c9c12', 'saudi arabia', 'mecca', 1, '663854'),
  (479, 'Osama Al-Ahmadi', 'osama.alahmadi@outlook.com', 'scrypt:32768:8:1$aX5rikFgurGYfZdi$f0d0529801e285be94e7255b87dc0138088ed2cdc0a5513b4d36d19d9b45a186079c12da04e89f280b1e77ab85d701cf8a902c593fa3dcefd85840cea448a5bc', 'saudi arabia', 'medina', 1, '537559'),
  (480, 'Hala Al-Hakami', 'hala.alhakami75@gmail.com', 'scrypt:32768:8:1$lrIBWiNiTswBnvx5$a5dd41b01bf9b40b6aa83bf5803685129f54b1b011a1dd9b8359b432645353bf096171c42dccea6ebf09aaa2c053ed7743fe824436ad2b1f861c94f29db53707', 'saudi arabia', 'medina', 1, '027377'),
  (481, 'Haifa Al-Malki', 'haifa.almalki@outlook.com', 'scrypt:32768:8:1$P8SUfbxEI68cmvZ1$eaa7ef89a8c2ef23816836a47f123fd6572f37a94cad96effea9bf1d0c79c8ff422eda66e44a62bf9f89a149ca53f380727b8563b8f7dffe55a602e5b4b9164a', 'saudi arabia', 'medina', 1, '499125'),
  (482, 'Rakan Al-Sahli', 'rakan.alsahli93@gmail.com', 'scrypt:32768:8:1$OdWZKiCopSsZmFkk$f10692934a7ece895468c061bcd44d213fb28e7e88ccc525d7ec69fbca632210398821d587ade3fda614610cc7b84b5ad8662104620e29eb50f30983b84b16b6', 'saudi arabia', 'mina', 1, '833559'),
  (483, 'Nourah Al-Maliki', 'nourah.almaliki@gmail.com', 'scrypt:32768:8:1$Ycd9OBjFIrRj7sdM$a05ccd3b4604a08039bd736e537c83a18326c27afb0b99aa80331694c7eb7cf79678ada358c85c5cde99394517db8f67ec07a978cb634cd6e042419a68a82789', 'saudi arabia', 'mina', 1, '268001'),
  (484, 'Fawaz Al-Qasim', 'fawaz.alqasim2@yahoo.com', 'scrypt:32768:8:1$azjDdJZGbuFUov0p$3a7f80df3e45a69a9ba69f8e35d515f3d1f8b28ad0bf1264bd091a6db0a5b5bed3e2f192d55291a017416236ca62fb451e505cc2ce2f30fd1fc6cb3ae3911c88', 'saudi arabia', 'mina', 1, '340534'),
  (485, 'Yazan Al-Subaie', 'yazan.alsubaie@icloud.com', 'scrypt:32768:8:1$NVeTkbbuYcLK8TWK$f7bca6884f9c55ab8674aa9db82acc4a36fa361b1431943a2b50d1533fbbec42a57a25d54d44fb9d1fac12ad086c4650f5be51dc544b138b38ec0d59b127f5da', 'saudi arabia', 'mislīyah', 1, '830550'),
  (486, 'Thamer Al-Sahli', 'thamer.alsahli605@gmail.com', 'scrypt:32768:8:1$IoreYbyiH4ObgpM3$bc85a1a3ae47b602622e4e6ca515a4d46cb5dc0610603d9f4c7f18723bd5aff19f6bc32a705d663063cd1249bd5b749feb5533357da37d2639d114f5187eaece', 'saudi arabia', 'mislīyah', 1, '830821'),
  (487, 'Latifa Al-Malki', 'latifa.almalki@outlook.com', 'scrypt:32768:8:1$riJteuqHbLuUcQH4$6487c707e4b1317d9e3d90b567725565138519465c4a0f9814fc97f81982c5a153071480c853cb9efbd5355cb88500348cbe34522b23e4172979f817d0fc2584', 'saudi arabia', 'mislīyah', 1, '467009'),
  (488, 'Arwa Al-Ahmadi', 'arwa.alahmadi3@gmail.com', 'scrypt:32768:8:1$OQV7OeEs8hzhYx0y$5db352c6a097728ce32a36c7b569c59514ab2d3a6a05f1e058957ff83dae99fa57c6a7b8681a218168b0b589f97d599c1221ad3fa4adc16a4ddb7ec6cead35dd', 'saudi arabia', 'mislīyah', 1, '858683'),
  (489, 'Fahd Al-Qahtani', 'fahd.alqahtani61@gmail.com', 'scrypt:32768:8:1$L16NJ1FUDf7e0ErW$fc730c28dcae1a50bee0bd03cb5308a15af4ae100bd56b0ed934b0fb753fb1572d005853273ababe86024583446ceb555d66fc79b2b8ba5ec71dd01873621a96', 'saudi arabia', 'mislīyah', 1, '712154'),
  (490, 'Nada Al-Rajhi', 'nada.alrajhi1246@hotmail.com', 'scrypt:32768:8:1$VhhknzfJPnBCVqsm$995ae5b6c099fc23fef08a208cfcf56474c3a47080f4f6ac2a0ad8ed94b36c75cdbf8e8c82af0951b6895b0f360e944e46e497721a936f981d04448a58356362', 'saudi arabia', 'mizhirah', 1, '769986'),
  (491, 'Abdullah Al-Nafisi', 'abdullah.alnafisi@hotmail.com', 'scrypt:32768:8:1$u0v583YGiJ5DqQ8P$806d9171a0e45c7880f90c9865874b66faaecbb69e838162fc0aaa06157f0b32000a0df40c1ef99aa4694d45eb197c60b9c364039d8428ffdb96ca4b3681112e', 'saudi arabia', 'mizhirah', 1, '744870'),
  (492, 'Khalid Al-Ghamdi', 'khalid.alghamdi4@gmail.com', 'scrypt:32768:8:1$m1U1SjUpVifegJou$96ef6a3b2c5bb494632aee7f79173c94955b4df801d06a2561c5506b1ae71769e48123e0bc00fcebc29879bbc55cc9fd7c6e4a7bc87490e0b36e8b1cf1626729', 'saudi arabia', 'mizhirah', 1, '049011'),
  (493, 'Abrar Al-Harthi', 'abrar.alharthi1388@hotmail.com', 'scrypt:32768:8:1$5aRVo9kc2oZ2gO6o$440950090e06b2ca47c6014cd2080203d269b3988225051f99b9776b1d48515d9d0358da9de252c776d58528ac8ee1e5568ab1f069b2f09474165c167542f867', 'saudi arabia', 'mulayjah', 1, '202681'),
  (494, 'Ali Al-Omari', 'ali.alomari28@gmail.com', 'scrypt:32768:8:1$2psQbGLJPt09XdjQ$93bfed3cfa76e4694d0780c21f04290ffb2e84c77be2a15944412048d4ce4ecbf5380c17638f2b93566414ce06c00040e86903711cdf7a7bdd7f5881577fde6c', 'saudi arabia', 'mulayjah', 1, '206858'),
  (495, 'Ali Al-Zaid', 'ali.alzaid43@icloud.com', 'scrypt:32768:8:1$m05FZqkjUbdqxbjf$e4ceaeb6c2cf0e295ba1db353fa0b8928c3942022b46b7047c7ff36b9858442fbf62b0ce3f7d57488b3c0403c143ace27689637e21ad595c3151a4cf03f72b8d', 'saudi arabia', 'mulayjah', 1, '677864'),
  (496, 'Muath Al-Sulami', 'muath.alsulami73@yahoo.com', 'scrypt:32768:8:1$NUtZbXx2C2KbEZg7$0a9b58cfe608fcee156bc5c072843b747b72c10cbe4c117ba14e5f37bc816d3062fa5d5a7030d895c89b16adc44786e61d77c6967525625337bb78b6460b88a5', 'saudi arabia', 'mulayjah', 1, '257036'),
  (497, 'Zaid Al-Mutairi', 'zaid.almutairi@gmail.com', 'scrypt:32768:8:1$WBk77oxUFrGLAEaB$0e28ef971c9f9d07e644a43b975e88521e4fb000dca4a1ed9f4e6418959dc9ca3a6d4072e9589566d70314f6fb419dadf9e08e4e236677288a6c308bc4eb5489', 'saudi arabia', 'najran', 1, '623491'),
  (498, 'Mohammed Al-Qahtani', 'mohammed.alqahtani1979@gmail.com', 'scrypt:32768:8:1$dxIBweTKJkWyX0Bv$aac1aff852ae1787b110c0580b9880d72e83c96d0daca354d98520ae7463736e9dc3454c7b36880072575a95c947f377616d21b6f2fc8cd1f04fb4b2376fd9ee', 'saudi arabia', 'najran', 1, '530949'),
  (499, 'Dhafer Al-Shahrani', 'dhafer.alshahrani@hotmail.com', 'scrypt:32768:8:1$MZ3zHKjHmyo5IiEP$896bf6be8a59c1c8dd51a68b1de230483189a2a7851644fd9b379d5e0fd1bacd500a4e7007a50b66eb35ca4a51f98b98f566daf1342c362c2c246c843a4df43d', 'saudi arabia', 'najrān', 1, '513252'),
  (500, 'Tahani Al-Shammari', 'tahani.alshammari94@gmail.com', 'scrypt:32768:8:1$zZ1cuqV0v7lp9pyt$24f3524d92eadc944554e8fecf9ac0dd8d3d25d082a1c111c7f1d793163a4cedb5d89d86f36dde3e4d620981f35309e313fab22a63f6501aeade3fa7c5ed31e0', 'saudi arabia', 'najrān', 1, '204764'),
  (501, 'Mohsen Al-Qarni', 'mohsen.alqarni@gmail.com', 'scrypt:32768:8:1$uragUXtfRW2eDgQ8$901714594773429113f2421ea700dbd68d011a8d15d18a13bb696072c1d548087675b328b00346abf929a8706ce2e0c2f4643aadae4674cbb46a4bfc7594ee5d', 'saudi arabia', 'najrān', 1, '069734'),
  (502, 'Thabit Al-Suwailem', 'thabit.alsuwailem@icloud.com', 'scrypt:32768:8:1$4dxyBznauyN0UZKs$7e0f2b415184861f86cef47df149f3c5c7efa9e2f31e0d53a4681ffa4dda720227eb5ae44eb1951183d7304f68ee4e29271d1c597bce1b5ebc7513062ecf65b1', 'saudi arabia', 'najrān', 1, '745666'),
  (503, 'Huda Al-Thubaiti', 'huda.althubaiti@gmail.com', 'scrypt:32768:8:1$7BiYFiduWsnJrzzl$7c448325a964a33ebfd857e770b6e4cc192cca4a5d0f887215373d4953702bc0aa2902d8888b7849aa903ede987446b48ad49f912ea8711f7b316b4e2492c066', 'saudi arabia', 'qaisumah', 1, '414876'),
  (504, 'Deema Al-Sahli', 'deema.alsahli65@gmail.com', 'scrypt:32768:8:1$8WGMoSvojbAKWZmF$3c38d61878ebba6c34738c00498d8055a10360f7de972d6223809b0c62e94390f06606e44eb69c29b2bd64a62264faa8da3dff2c4bf3ca0c948cc34924b32485', 'saudi arabia', 'qaisumah', 1, '755038'),
  (505, 'Lamees Al-Tuwaijri', 'lamees.altuwaijri57@gmail.com', 'scrypt:32768:8:1$mCPAjA71Ms2UVyJk$13a00a96c5c47a2bcdf11411af588be3333c94c127dfad4cd7a8a83b1733e6ce1fb43de3699aa7af512b57e52b89ce52ade2969733bc86f319951e45769f93e5', 'saudi arabia', 'qal at bīshah', 1, '558832'),
  (506, 'Fawaz Al-Hamdan', 'fawaz.alhamdan@hotmail.com', 'scrypt:32768:8:1$kMHCeu8o0G6exyZm$96635f411f6a5758bcc7a4020299a0590467573a21c4d90e384167d6baacde9b15eb751ae5afc81e6c687e1920d2af943848cd5747a1558eca118e0d8ad37c03', 'saudi arabia', 'qal at bīshah', 1, '856060'),
  (507, 'Rawan Al-Marri', 'rawan.almarri69@gmail.com', 'scrypt:32768:8:1$crVHO7UOpryORzDv$b90f6be8e641e32694ea856408ade0344e00c2bf4b1adfe5d5169d5068a07fa097c083837a1eadb5590b66e08c2e20435f348acdbe83948c26c2ff8ca02c906d', 'saudi arabia', 'qurayyat', 1, '940846'),
  (508, 'Saud Al-Anazi', 'saud.alanazi96@outlook.com', 'scrypt:32768:8:1$lVTuds91ilnHyuw7$4434d9fce69f418d3d83fa200711e2d9005650fb92986d765fd729b32ed7a22edc13ebb549ee8eafc8850ab28ac6be397d3c9bb1b25dfd20b10df77a059c966a', 'saudi arabia', 'qurayyat', 1, '575273'),
  (509, 'Saeed Al-Shahrani', 'saeed.alshahrani@hotmail.com', 'scrypt:32768:8:1$yNIVkDirCUWRZQ6T$e5489ff8680fa978abb3d12d096b7d9b8be3d94b8664f9eb4b59b3c8b84bdf329db64ea35a04f18cf29985b424bc765ecb412dbd36dfda851ef90fe344d686de', 'saudi arabia', 'qurayyat', 1, '994873'),
  (510, 'Hatem Al-Hakami', 'hatem.alhakami11@gmail.com', 'scrypt:32768:8:1$I26m1qk2RWVTEX45$21ac1e39fbfd5d633b3aa5b7bbc632fd3847847f746e971aaf44a4a7338e6256f9973091145f9c56d90f9f1facaad6fc852309a7f1ba3d10afeabefdeaccd544', 'saudi arabia', 'qurayyat', 1, '957518'),
  (511, 'Saad Al-Qarni', 'saad.alqarni@gmail.com', 'scrypt:32768:8:1$K3SFkHgMDphd8wmc$3fa787ba5d70233b6a8fd0e51f9561d5ecbadc6d4f1b169957802047184c0b98099dbbad2dee2550b6a4d7e4a1471fbe0cb1d07978630b0439720f93eff9354c', 'saudi arabia', 'qurayyat', 1, '188918'),
  (512, 'Yazeed Al-Rashed', 'yazeed.alrashed1558@gmail.com', 'scrypt:32768:8:1$8JaRbf2MPX0zxQax$8646d6fc4c18058cf45193001f31cc0be83e1214c27a3ba706d8e4d8122f5b4c4c28d80813593195580ebd19d404b14f06710a57f59ba1fdeadd60f4f0a77828', 'saudi arabia', 'rabigh', 1, '998903'),
  (513, 'Nawaf Al-Zahrani', 'nawaf.alzahrani@gmail.com', 'scrypt:32768:8:1$h9pB8v0K206lslss$e8d6dd3b0b4dd1576f64d4f7c37d18545673ce99e76aae85e686baf8b9d06e88d4f224c1ac96fec722f95f5f314621f81a77c7f136316959e50d23ad476c4e65', 'saudi arabia', 'rabigh', 1, '066777'),
  (514, 'Rasha Al-Dossary', 'rasha.aldossary@icloud.com', 'scrypt:32768:8:1$zOy4wdj8BixMmsHr$02f090f13744ccebf5556fd54cf5b9a5e23359a92602c1da8e93b8ea8844456ec6f5906158bccf95b443c7cdb7c2a1d761bfae132e769e249adb2837c2a0d5aa', 'saudi arabia', 'rabigh', 1, '727828'),
  (515, 'Maram Al-Qarni', 'maram.alqarni299@gmail.com', 'scrypt:32768:8:1$ivZex9KjKghGaNPf$fb9126f86ed9dee4320e503f3c610a314e5ae965b91ac92f97f499be36481f7f8159d7b92d8db2a93bab492e2338b54cb25bd7319eb6312a63ee06534b1d8fcb', 'saudi arabia', 'rābigh', 1, '733548'),
  (516, 'Hind Al-Hakami', 'hind.alhakami86@hotmail.com', 'scrypt:32768:8:1$yYOg3qOfH2yUIhkc$c0b03b1e1c765d0a85d4ce40d4de0fd4314872d55fbe72ee388ef257fdc1311191810da7654027983b7df71a3137ed95e160865220729e08836b146aa45c9e05', 'saudi arabia', 'rābigh', 1, '457367'),
  (517, 'Khalil Al-Ibrahim', 'khalil.alibrahim@outlook.com', 'scrypt:32768:8:1$50wZwJ9l3uEOyeLJ$ec600a6191afd5b34e63f60ffd2fab30d634ab89d666d1bfc72e5b5a8b9b9b9662915ed58cd2184180d76b823a2769f6d48215977178c21a6fa4e40c082ca2ec', 'saudi arabia', 'rābigh', 1, '336364'),
  (518, 'Fatima Al-Dosari', 'fatima.aldosari13@gmail.com', 'scrypt:32768:8:1$e4XBki5uGi33INjE$5ae39881d42962aa1d40f5949cbae5d9c9073d252dfb11456c04356293b0c19acc592ffd8a6030635037a3293ca07aeaa2f64fb65a4572fd090b2a64772c98af', 'saudi arabia', 'rābigh', 1, '556724'),
  (519, 'Fahad Al-Ghamdi', 'fahad.alghamdi@hotmail.com', 'scrypt:32768:8:1$8q3I2GRUWV9FWZrF$fa760a9af4985da523b3ed5952c0e521e0e88c8a50042f61da808027551918def84f6a85ffb32703dc292d7806af91f6919500626f5335822d590edc43df72d7', 'saudi arabia', 'rābigh', 1, '403715'),
  (520, 'Yara Al-Tamimi', 'yara.altamimi35@hotmail.com', 'scrypt:32768:8:1$eunPFyy9woq4vT20$6737917157f69d3dde82b83935fb94f8d100c1d8fa87d3aeb8b396cf0578828acdee27a9cccb5948d2029e6540bef3c00ba0f4c94b589e32c9ef153b4bb15ff0', 'saudi arabia', 'rahimah', 1, '394047'),
  (521, 'Sadeem Al-Qurashi', 'sadeem.alqurashi@icloud.com', 'scrypt:32768:8:1$GHEk2GFfbUd0rnUU$b025f32502a46b25d0864016a50100df8add64aee605b628f64f020dc0c248121074fe3259001057b8333700e440d7442f69b89f0d3b12f4f04e4c203de99a5c', 'saudi arabia', 'rahimah', 1, '247226'),
  (522, 'Hamza Al-Dosari', 'hamza.aldosari54@gmail.com', 'scrypt:32768:8:1$Nu0sIfB8ydfRpVOZ$cbcf5fc08398b22b7dfc0ac008ecdb26ed575ebb3d3a2724c5a218d17052ccfcd976e8581431cb95f40cb669d5abf9446b0bfa885b618dd3969197aeffceaa0d', 'saudi arabia', 'rahimah', 1, '054093'),
  (523, 'Mona Al-Rowaili', 'mona.alrowaili@yahoo.com', 'scrypt:32768:8:1$C3tLXhAJraDNZcG9$bd8794c4915e0afc6e161c3ae88bc06fa6fd16e4712c2444428428289520c460f81b135d46b04f14110aca30ee8e999e9b3163c6f281d5c04dd0a9effd42fc48', 'saudi arabia', 'raḩīmah', 1, '957699'),
  (524, 'Hessa Al-Ghamdi', 'hessa.alghamdi152@hotmail.com', 'scrypt:32768:8:1$qY3TWZzrLXoZ1t7r$3c1ffe6e7b55922665cbaecd5085a2966937820f1ec71b9ccb682dca4f5cee1966596f07ac2f6dc5717bfc74c702ca5f535a3ec4ff2811b00203c3b822285fe3', 'saudi arabia', 'rahman', 1, '082289'),
  (525, 'Ahlam Al-Balawi', 'ahlam.albalawi1097@icloud.com', 'scrypt:32768:8:1$HbXbqsochnYPyS70$4ad9e6a8ea5127933d6e2de48650aaf29ac5a046ed49beffbd802612cd63a29474d0fdbf9aa0df13e09b0ee79dbd33a67c31fc0500c980a3c2aa5c2110fcbc2a', 'saudi arabia', 'rahman', 1, '498419'),
  (526, 'Rashed Al-Rajhi', 'rashed.alrajhi@yahoo.com', 'scrypt:32768:8:1$zRnyBUapU2rIY5Rm$4ca1d6c703a79283564988e8f46ec19dd4bec249ea158a0d380eb1a00549c9db7729730261914237dcdbeb63090476ace1d2fa5a8bdfdcd36563767373238518', 'saudi arabia', 'rahman', 1, '574998'),
  (527, 'Layla Al-Harbi', 'layla.alharbi694@gmail.com', 'scrypt:32768:8:1$K2HVGcAIoQw6g2oS$9cf1f9a5b837fc9125b4d3784766bdaa2cdb5388c05a407c0369ebcc61a453c981cf70c0086d935207daa9c09b2ed5a896c6c7b44b5bd6c5c6c3db6c76798b14', 'saudi arabia', 'rahman', 1, '491380'),
  (528, 'Taif Al-Suwailem', 'taif.alsuwailem113@hotmail.com', 'scrypt:32768:8:1$laZMyzrFoe2JjsqA$243e7b09f2bda46042daf611124ee9a218c84a3c6499f233355a756a5175c35bb96fa212fce0b4d76f91ee3c962ab6b03e0e6f0a4c144eb876caa6e73d30de6e', 'saudi arabia', 'rahman', 1, '367997'),
  (529, 'Hatem Al-Harthi', 'hatem.alharthi77@gmail.com', 'scrypt:32768:8:1$8HMOYgPYTmHOB86E$931dea6299a60e54d6cd3487f92f19c193f1b83855aa3ec304538f6f192ff979b7eef20146e6d111877155f8ac0755561845e670268c5e56fa27ed7f3381fe82', 'saudi arabia', 'ramdah', 1, '988998'),
  (530, 'Mutlaq Al-Tamimi', 'mutlaq.altamimi219@gmail.com', 'scrypt:32768:8:1$bL4vLbfxN9JniqnA$2317e7e9ddef4aabfdd4eced7439c97b51b72dc1c17a85c2b78584df22b543ac35301f77182151c66ca35a41bef5c46e9363207e4993734c57634b84d7001dcc', 'saudi arabia', 'ras tanura', 1, '137217'),
  (531, 'Khalid Al-Ibrahim', 'khalid.alibrahim308@gmail.com', 'scrypt:32768:8:1$Cl8wbYF0r4Ac8Xcj$71aec045d031feead7f916171f7ef7a18d5197aac0748a4a162a865762c9c57784f462d0966a4ab5c6794c4372b612f4f862ee5f9bcf5fd84d6a8eb12eaad188', 'saudi arabia', 'ras tanura', 1, '119758'),
  (532, 'Hamdan Al-Rashidi', 'hamdan.alrashidi@yahoo.com', 'scrypt:32768:8:1$4zVa3zoOXP9V2M2R$14a94e7b4f36f8cf43e814996002daf573092a893225c26ab523864fba3520a0526f40528da801cc69bc2c30e2d4b2c6a2c22d09fed9ec02eaedbe04c973b11b', 'saudi arabia', 'ras tanura', 1, '205054'),
  (533, 'Ohoud Al-Hussain', 'ohoud.alhussain1454@hotmail.com', 'scrypt:32768:8:1$zgMIdTcneOUA3Byg$0cffede16f2babd18a68d2e4c82eea967210a35a3edeb0a4387d8bd2563f92f9da328b6027d8e6deedd0af957dba2060969a2c5d86559042b319a2d69771c54d', 'saudi arabia', 'ras tanura', 1, '026028'),
  (534, 'Ahmed Al-Fahad', 'ahmed.alfahad75@outlook.com', 'scrypt:32768:8:1$wt9rESzx5842rKoY$76ca68e1592caaa97b135aa67f0e028f0ccf52e8d3857bb5d0d31fba0a905be4c374f818e4ae903f2657877dcf9e37877d2a5a31e68236dc6e9d937bfb37d5a5', 'saudi arabia', 'riyadh', 1, '976897'),
  (535, 'Rina Al-Bishi', 'rina.albishi1713@gmail.com', 'scrypt:32768:8:1$Nj4wxtEhVIO0Jbcy$9b38a5853cdaac1936a704e66f630a38a1fe222eb8a20899ef715dd5e81bfae610078c828d714766f9f4193cd1a57102d1cf3840daf91d40faa9e1f4578cab52', 'saudi arabia', 'riyadh', 1, '462857'),
  (536, 'Layan Al-Thubaiti', 'layan.althubaiti@gmail.com', 'scrypt:32768:8:1$SOqsNRK7xHORnj0B$1af3a74418d8bd0f830031b6828649e55199dfb4d3520052ddd2111cda66cdcd9c5fe9dd378f25ffbe07821656e815a0200a9d7aba789f823279171ceab90661', 'saudi arabia', 'riyadh', 1, '659793'),
  (537, 'Noura Al-Harbi', 'noura.alharbi1118@gmail.com', 'scrypt:32768:8:1$a8zXl65gQy0HjigZ$cebf4de78b76f7fce3f753f0dc9a395b5daadd4bf3dc4acde899ee42814a21a0193e5f64c06963c0883ba4fcbb2790b19f01436a2b1e5b925c716861dd34b9f2', 'saudi arabia', 'riyadh', 1, '005493'),
  (538, 'Salma Al-Rowaili', 'salma.alrowaili1355@gmail.com', 'scrypt:32768:8:1$w5gAiL2lqxG85hrV$cf6e594d61ff4251b691576b42d18e4c8f0ff99bce198e2ae3f73cc94d0ba20f2a63f6b71b67ee72f87d2b7ded5ca022e5b2e6a12897c0e0fd9d8d2e878bdd0d', 'saudi arabia', 'sabt al alayah', 1, '103253'),
  (539, 'Nabil Al-Hakami', 'nabil.alhakami1104@gmail.com', 'scrypt:32768:8:1$G9T3UJNwAXzppHqe$e3544de435913329ed492f52b45726fb66a647c080c6bc41c2a29a2e6efbcf951569b05866bb62d21d7712909c362cbbffd14fc7fac9688c37d6aeb672f30ca7', 'saudi arabia', 'sabya', 1, '738003'),
  (540, 'Reham Al-Rajhi', 'reham.alrajhi@yahoo.com', 'scrypt:32768:8:1$oUnq2fuRA78mmvWv$653834f8804147f49399f97afb09c289e0733c8231944455eb5587b1699f74ce474a2015a762c51e18aff3b1dd0afc531da2b83edef6b56fb79b7472575c60bf', 'saudi arabia', 'sabya', 1, '744932'),
  (541, 'Jumana Al-Qarni', 'jumana.alqarni971@gmail.com', 'scrypt:32768:8:1$qUq1adkxfROAVgbl$0a605255949f6bb8129263e9cd6f26160140bf4d953878f72037ae0d5878ed56ff24bae57fbc206020af4f88d70c5e2767f1ba649262a9ecd4c467a3da2ad77f', 'saudi arabia', 'sabya', 1, '635239'),
  (542, 'Raghad Al-Mansour', 'raghad.almansour93@gmail.com', 'scrypt:32768:8:1$SMFePgaYaeff4I1O$8bcc01e313c428ddbd23ab6d95cead8d7bcd40e72463de953110a0c367695f08e711f1dbba2c1d20bfd684e6595b0367f5f45963b589214a6bc727a69f2e920e', 'saudi arabia', 'sabya', 1, '857353'),
  (543, 'Dana Al-Rowaili', 'dana.alrowaili1840@gmail.com', 'scrypt:32768:8:1$cgPmLUTYsBUDYOlQ$16ae1ff95121f99a7a9eb72a267805dd3ea4ce699f6851f8cdabe1aca7ba6e1924c0b167ae756d65dadd3a25dcf3785e17ab2d2e8395ee7ff733b04beb4c2687', 'saudi arabia', 'şabyā', 1, '198043'),
  (544, 'Shahad Al-Subaie', 'shahad.alsubaie46@outlook.com', 'scrypt:32768:8:1$6ZDZTuNuewIDWgys$3d4f3eb8e95b5d8bbfbbe743d3ce99d6ef2389ea07909e6e3067944627e3e9f786e81b64b2f039d1ae01942e77349e8e157e7767c74d953b9bab72a0fbc0b92b', 'saudi arabia', 'şabyā', 1, '814694'),
  (545, 'Rakan Al-Fahad', 'rakan.alfahad56@gmail.com', 'scrypt:32768:8:1$bsOYOOX3kzNhpOdc$00895d602bee0bbc5444dfda6202d6e1db8f310a4ad2b9225c13ee62550ce23a78c56fcee5e6270a8596d1141bb9d7879d5cb01b0d6c1de2c9e2c57ef438c83c', 'saudi arabia', 'şabyā', 1, '827074'),
  (546, 'Layan Al-Balawi', 'layan.albalawi@gmail.com', 'scrypt:32768:8:1$Rd5gKhiPDyY9cDXB$73c3571ce12df605e36137cdc67450c1c5a4a1451b3743d67177e1823e1ede580f888e4e63632b8203bc8da52fe30becab751ba76a2629e7eff57e87fce6db54', 'saudi arabia', 'şabyā', 1, '401598'),
  (547, 'Hajar Al-Enezi', 'hajar.alenezi@gmail.com', 'scrypt:32768:8:1$cArjctsf0tosSyKj$98458449bec6c59979a3182a7546c1c9318628cdda8d0f882c9e7f747ff9ebf293bf4a305c0f102afcb087364136b7b73e903fb0c301df5be367686afa0c1863', 'saudi arabia', 'safwa', 1, '624789'),
  (548, 'Deema Al-Rowaili', 'deema.alrowaili@yahoo.com', 'scrypt:32768:8:1$7NHRSyKw6LlxHFLJ$9dff9ac6ea78c1a41014afc60ec85d63a63d31eccfaec40300582e99dc817206f29f62347cb7d96565e4fa6e302e87b4a68523162edb42cd43c2d8ce99d13fec', 'saudi arabia', 'safwa', 1, '977835'),
  (549, 'Dalal Al-Zahrani', 'dalal.alzahrani24@yahoo.com', 'scrypt:32768:8:1$LWf0cDw6KXjtOucj$4bd85bc6678b4638eab3f533a0f57547be3a98818edbc6a3c7b0ad5544bdb5cff93aac9e530e231657071dc1bc33c3253ce7da897e06797a5d9ba52d27745359', 'saudi arabia', 'şafwá', 1, '382502'),
  (550, 'Ohoud Al-Suwailem', 'ohoud.alsuwailem19@gmail.com', 'scrypt:32768:8:1$xppfdX2BDP2H0nfP$0f246225b163360250963954e745f480d23b7390be2f49e88171e5ba9a2c2c1791e64546dd26e6b2314f9828ee4d8bec72492cd8e2f7bcc4ce71d56e50bca884', 'saudi arabia', 'şafwá', 1, '720317'),
  (551, 'Aqeel Al-Zahrani', 'aqeel.alzahrani29@gmail.com', 'scrypt:32768:8:1$zr0abKN6K52qVKBY$71bbd1e809329508b67d600ab3dd70afb88db91a75debdfd7b29d8c8d146a8e9837f8af64b4962e8af53ff3b788620ff40ab3f78a588dd0f1c1866c85acc832a', 'saudi arabia', 'şafwá', 1, '589954'),
  (552, 'Ghada Al-Zaid', 'ghada.alzaid1505@gmail.com', 'scrypt:32768:8:1$VK1Zk6IxYC5YeQBp$5bc00129843f2973a303e3ab40e5000c538b237a666fedfc920c665913c4daeb72a612e0f25746ef1c7575aeb84dd719a19571ccde85c95b88e03392ae3984a6', 'saudi arabia', 'şafwá', 1, '143833'),
  (553, 'Reema Al-Suwailem', 'reema.alsuwailem@hotmail.com', 'scrypt:32768:8:1$rvOI8Ba4C5U7bjkR$a022fb1a2b70b16cd8f0bd6a32c025b729bb8787bd007e00e0c7f9a1ce7f0e647a5d05c1855f65301a24dec72288188c8606898628c5fc4d3daa16df776e6ff9', 'saudi arabia', 'şafwá', 1, '179291'),
  (554, 'Yahya Al-Khateeb', 'yahya.alkhateeb@gmail.com', 'scrypt:32768:8:1$vbDfS4QoziZAUaAG$c9ccba7ea54080038cada87ea96714ec31144d97d4063267da001bfa21ba0922bce916c7429a04889396a63ad5a219d75ef25c2767a0c736af4f2f96eb25c72c', 'saudi arabia', 'sājir', 1, '269483'),
  (555, 'Wejdan Al-Qurashi', 'wejdan.alqurashi1650@hotmail.com', 'scrypt:32768:8:1$MaoHBzdCQkM4emsi$1a61c6421472f665a78419e0ee3178da9f0d027fa97ec7c28d7b676beba37a3851df692e7fd2804f03134edc820f123bbd85e38289767e4b77a325139f3bebf8', 'saudi arabia', 'sājir', 1, '783441'),
  (556, 'Suhaila Al-Mousa', 'suhaila.almousa988@gmail.com', 'scrypt:32768:8:1$1uVemXCTVsqfV9wC$23b1a59963a73a2013cf1f8b04db26f953ed0f029a9f7e9ea4253936c0a5c1eeb001e0c306d32663eea63dbf3f433082ac9e2aae9f0cd661c0f6b0aa6d55cc2f', 'saudi arabia', 'sājir', 1, '919347'),
  (557, 'Ruba Al-Mansour', 'ruba.almansour41@gmail.com', 'scrypt:32768:8:1$kNbbN4hqfJovAkSW$b2f53bbe5d1160df91fc7202281b9de02787a1629ce5f7a51bf7c9c2e09066dfc210a5c83283b2675cbdca551e524752ab0de93496d0f8b73e9cf640f095e839', 'saudi arabia', 'sājir', 1, '430726'),
  (558, 'Tala Al-Hazmi', 'tala.alhazmi1190@gmail.com', 'scrypt:32768:8:1$ZQDQjHLcwT8BwRpE$023f685fb42f15b7855df912c0e40047f708bd9529990a22f9bd3855b352baf462651d5c913d6dacbf5ee18afe53065e0efb61d1584e58a173bd4e0771d142d2', 'saudi arabia', 'sājir', 1, '860097'),
  (559, 'Waleed Al-Thubaiti', 'waleed.althubaiti666@outlook.com', 'scrypt:32768:8:1$x4XgW4Zm5rwgK4fn$d00bb800e99955baacd1b27c7261838e81a29865ae7df0cc615af9635ce0e34210522363f7655e11253b613ae5bfd621005b8ebc11c9ba5aaa5ff272383b7c75', 'saudi arabia', 'sakaka', 1, '976945'),
  (560, 'Sarah Al-Bishi', 'sarah.albishi66@hotmail.com', 'scrypt:32768:8:1$Bxml65cVZPuEfGcA$6a18ee28240ec2fa7b83db28f9e8d3d0cd8405574d4e795441853d297f78bc77f634b009ac118dca7656f41a42248569f93a138221bb783d1d1c32979fbc7be4', 'saudi arabia', 'sakaka', 1, '445500'),
  (561, 'Ruqayyah Al-Ghamdi', 'ruqayyah.alghamdi@gmail.com', 'scrypt:32768:8:1$gNFgxCKgiNGn4c3o$e630277a45a0125872d0d34165c5ba85d60c6b6c15443cc9b625c860c37be5d8527ac46f9a650340f5b5befe256ec02a9e6a9205bf2dfc82c31c6842cbc084a5', 'saudi arabia', 'sakaka', 1, '636086'),
  (562, 'Haifa Al-Yami', 'haifa.alyami@hotmail.com', 'scrypt:32768:8:1$mZhV2gjOqhYoDki8$2620e31bbab91dba8b5fcc0ddddabc5431f050263c6136c5087fa9c4b737b8fc0f2d35936b599340ded6ea91501724bb5e3d3671f92baac8bc4d00e4bd88203b', 'saudi arabia', 'sakakah', 1, '464935'),
  (563, 'Khaled Al-Shamrani', 'khaled.alshamrani81@gmail.com', 'scrypt:32768:8:1$Lggem9o49C6wwEl6$7993f0e4b2493ecf2f5ecb24ee0e615de328dcbbf3b417759cf7213c2acb6f36c2f7791a1d9647abc74d2f1fcfe9235bfffec484403ac17ed0c6ee1a6fa79f0f', 'saudi arabia', 'sakakah', 1, '943055'),
  (564, 'Ghadeer Al-Malki', 'ghadeer.almalki10@gmail.com', 'scrypt:32768:8:1$uTqL4lxK8TCFtzuU$d7642cd990d932a990454e53bdaa3873a74e0f82e6bd562a74940421416030b2b42fa5a58a46929f8b331d5cfbd85d391cd0fab219469fff3764f5a078c04fb5', 'saudi arabia', 'sakakah', 1, '505540'),
  (565, 'Sager Al-Malki', 'sager.almalki645@icloud.com', 'scrypt:32768:8:1$lLqMZmaIHtNek1AN$f0e81dbd6a0d6bf2eb319b78484fbf0562f740cce4d20cc1a99caa5df343c20a0a66fa607a04949492814f74ca552a3d4219e26ac03fa699b1e364fe63098f16', 'saudi arabia', 'sambah', 1, '649154'),
  (566, 'Nouf Al-Yami', 'nouf.alyami916@gmail.com', 'scrypt:32768:8:1$tEp3pGt8GXhWLpux$841c8014b9e782c68ac36a54693bbef36fa6fff7d7e5203af3c92122eec592d3297e203ce25daf1ef2f5478b2bf9407c00ccf90401b681ff103ae26880636bb8', 'saudi arabia', 'sambah', 1, '904204'),
  (567, 'Sami Al-Rajhi', 'sami.alrajhi1610@gmail.com', 'scrypt:32768:8:1$mWLWxid2gi8vaPao$2482746d393799e71077a2747e0c468a28b7c2bd589c89bf286b366ced45bcdfad8e8ab778177257b986022803591f1f7efeb5d18f4ae17508398f04797ddda9', 'saudi arabia', 'sambah', 1, '201679'),
  (568, 'Jumana Al-Johani', 'jumana.aljohani95@icloud.com', 'scrypt:32768:8:1$RPv1QQ7VliRMXB3v$928c6286ec796d0b6d71b12ef77b90ba6d786500ed0f85e8296fa50000ea2fb0b30d15e295934417c0300a81eaf5df111d57192e19f9a1b3d8647c5a979a8da5', 'saudi arabia', 'şāmitah', 1, '333116'),
  (569, 'Ghadeer Al-Juhani', 'ghadeer.aljuhani449@gmail.com', 'scrypt:32768:8:1$PwWdJ3xOKBXubPYj$3ce6fffe3ff75cd6ae353a5b5772d89092dd76ecac53b426463ce40c79b6514171a3866fd6f1a0714b6c685c0338e7f95c3b7871fdf4ef349709336cb07219bb', 'saudi arabia', 'şāmitah', 1, '982958'),
  (570, 'Anas Al-Hazmi', 'anas.alhazmi@gmail.com', 'scrypt:32768:8:1$zDDpqAyJKpIwHeOH$d3803f5dd970955d285f6577c20a0b050a8f62a97f8804645a30fa36aec76d1589b768fd023f06e23ac54aa01fd82eccf3e90a6c480be0f7fda5d18c6ca56048', 'saudi arabia', 'şāmitah', 1, '467104'),
  (571, 'Alaa Al-Tuwaijri', 'alaa.altuwaijri1778@gmail.com', 'scrypt:32768:8:1$pWuQ0IjJJIuxiwwp$a9bd821c48123e462ec35ee3cee853a06edec1317a9e28bbbce73709cb83025c04cff7650ae544c0aa4449f20e99a4da9ebed1f5b8196450e143df8d6e9ba7cc', 'saudi arabia', 'sayhat', 1, '797356'),
  (572, 'Faisal Al-Harbi', 'faisal.alharbi@gmail.com', 'scrypt:32768:8:1$9Tkcxnsi65egWduf$adaa5552f76ca676ac8cc9b49039fd2490aeef8bebdbfae2f21ea43cdef96399b6196d26b085ae8b002b3b0c9286d9c5b49390a076a56ba1cbbc84655e6c3f78', 'saudi arabia', 'sayhat', 1, '617669'),
  (573, 'Zuhair Al-Otaibi', 'zuhair.alotaibi@gmail.com', 'scrypt:32768:8:1$zH98bDgS6bHWMLGU$9cace9a3e8fe6eb2aef09b331cb497db7273eb6367a827089156f0225b28ce35d7e15f1fb25b57e655e680e1b2da5209c17d652abd40f80cafc02bf662c26e12', 'saudi arabia', 'sayhat', 1, '952582'),
  (574, 'Osama Al-Thubaiti', 'osama.althubaiti1515@gmail.com', 'scrypt:32768:8:1$PGjBtGsCHMzC3zsR$7207a9a8e85cc572ddb6e96f9d976643de182abc92f7e4d49d677a4b923c62af602f997f5b4bbf69b788c76225bf1d9ef73d9f9470837ecf881003055fbce262', 'saudi arabia', 'sayhat', 1, '588648'),
  (575, 'Amal Al-Shamrani', 'amal.alshamrani83@gmail.com', 'scrypt:32768:8:1$nqzW1KNhvBhh6IV4$0f84b0c267767c06275b9539b90887d0141d0d4c6645afddc24fb18ab79d5d6af3c431973491721a37d5c992fbf4ef9515e52368df26b144c3331cfd09313efa', 'saudi arabia', 'sayhat', 1, '727110'),
  (576, 'Alanoud Al-Shehri', 'alanoud.alshehri99@hotmail.com', 'scrypt:32768:8:1$w9XgEOeXRZjlLX7T$e7bf7b69e99fc399d43d9f933cd8373870972fb950094806481eea5f5668ffcdc7d78f1c623b1303136a1bd4a508eb5e6f91a61f404cff9167590e76ff69d6de', 'saudi arabia', 'sayhāt', 1, '009180'),
  (577, 'Mansour Al-Khaldi', 'mansour.alkhaldi@outlook.com', 'scrypt:32768:8:1$GeAOJIwLpKDIyvc5$2f2bd4bb1fe85a596f4b85b31fbe3cda20fb1b93c3c534bfcdcaccc5165e10c94520bc15f39c53e421edd7402d03b2156822aae2613e312353cc12d070ce7383', 'saudi arabia', 'sayhāt', 1, '339555'),
  (578, 'Jaber Al-Hazmi', 'jaber.alhazmi10@gmail.com', 'scrypt:32768:8:1$bRXorHDodNwIxxGU$cc4e53eb7375cafd5a28be4b2b6f2cf0f2a586f05ddbc69ebfcf54615217f63517597119c262a84197bbc977d8a12c8456fb4a5b8cf1f5c10ff733e3ae8a63a5', 'saudi arabia', 'sayhāt', 1, '134009'),
  (579, 'Reema Al-Rajhi', 'reema.alrajhi67@gmail.com', 'scrypt:32768:8:1$vXkfNhppmIhet4Wz$fa894a54a88d6a1b915b694e88942db45e657a8c79725ddf4c99ccfa6c54f1a6f8a43eee5c7889c37f81fb429da7fd00cd77316db5336a43b5f38197fbf23b4f', 'saudi arabia', 'shokhaibٍ', 1, '925293'),
  (580, 'Aqeel Al-Sayegh', 'aqeel.alsayegh@gmail.com', 'scrypt:32768:8:1$fz3fk583U1buIVMC$f9b7bd522b1d9073f4eef3217e315d9b3a322c93a0c3db20897cbef8853293dc85afbc7e25f29675e2edc5c7f23e8e1c72d01ea3dec74bdfae09956de53dd0ee', 'saudi arabia', 'shokhaibٍ', 1, '856035'),
  (581, 'Ziyad Al-Ahmadi', 'ziyad.alahmadi1216@gmail.com', 'scrypt:32768:8:1$BkrjZu9WaTlg1JXi$145a278257ac4c62fbb1d68ef3406a2709d2b9023bb2e4bcdb943c47b177f74b3a3511cdd385b2790e9d6c25a3eadc2d46d2e053d4afbbabe0ba4b474b816b99', 'saudi arabia', 'sulţānah', 1, '722750'),
  (582, 'Ayman Al-Nafisi', 'ayman.alnafisi1220@gmail.com', 'scrypt:32768:8:1$jfdYRwMzG8wy8jyC$5d690c80c35d310d3fdf95f462f0cdcadb3f6dc7e897688016ea204b271d8833e87dde5608df7bf0033890aa9821b5674e54e168d51e066a4162a6fd286c565f', 'saudi arabia', 'sulţānah', 1, '952553'),
  (583, 'Abdulaziz Al-Shamrani', 'abdulaziz.alshamrani99@yahoo.com', 'scrypt:32768:8:1$6CtF5PumqpCqYnnk$846226b8f0f81be6a7778522ba417cd690ce227de4ecb1574302d8f7522c86f69ab818fe777860090de246d858ceb877074d59603630b86bb550881725852ff6', 'saudi arabia', 'sulţānah', 1, '968567'),
  (584, 'Abdulaziz Al-Saud', 'abdulaziz.alsaud@gmail.com', 'scrypt:32768:8:1$zszJoAlmPSEejQI9$5ad76c79df8c94aef0dfeafc6b1847f899f14a9a8fc63ea1a706a8682793903be6433f26f30e80a202b1d7961197950e2c7501039d91949333674534d581f6aa', 'saudi arabia', 'şuwayr', 1, '936858'),
  (585, 'Abeer Al-Harthi', 'abeer.alharthi@yahoo.com', 'scrypt:32768:8:1$Q211rayFneClQgyL$d1f8ab9151acbcab422a01b16bd3e255370c9150755db19cee8972d871dee1722ad6fe40d9bcfaa0ca32e3cadafdc09f77cb2403f097c5f70d5c3bfdecfbde04', 'saudi arabia', 'şuwayr', 1, '012512'),
  (586, 'Naif Al-Malki', 'naif.almalki@gmail.com', 'scrypt:32768:8:1$TnmIYZKDSWR1fnUx$280811c964dde0534e1d27d85546c34434d75dde2f413da87adddf9544ea191625218051b4b89fa38ec754f25dea1821d7f3baf98040375d99032b4d6cfdc02b', 'saudi arabia', 'şuwayr', 1, '025278'),
  (587, 'Abdullah Al-Harbi', 'abdullah.alharbi52@outlook.com', 'scrypt:32768:8:1$lDvdvihOO8HfpI7D$a0ecc20e0e0884660eab589c0ed20f6c734d26bf22f9b26a5ccb80eb2560ffba4e7fcd7b45fc99583ba1bab951b3d8f7d7a5445c36c0e19d1c71171b9ab10e85', 'saudi arabia', 'şuwayr', 1, '071499'),
  (588, 'Nasser Al-Shammari', 'nasser.alshammari27@gmail.com', 'scrypt:32768:8:1$FcmWkGhdwmZA5ozh$6aa6e10389db0611d6f68d2bce3261b2d977dfae07520249d1d71e22d048b9c556b4fc43c6f4b1932016a26f9062d9a07d623d82ef2686142d4095a2e387fcad', 'saudi arabia', 'tabālah', 1, '862967'),
  (589, 'Sultan Al-Mutairi', 'sultan.almutairi91@gmail.com', 'scrypt:32768:8:1$8dAvpmru643QpriK$0ba297dd58abb496322b42d5cc602c10bddf189b3875d57afc275b2786fef82886adfe77d1ff40b3569ffb325606a3c0f9be00e50aebb20b37bbe8135f335599', 'saudi arabia', 'tabālah', 1, '096130'),
  (590, 'Hadi Al-Tamimi', 'hadi.altamimi@gmail.com', 'scrypt:32768:8:1$RvV046qouPoFGGHO$b847fe2ae8e2917366db5450b2c9152369763b1074eb2b369bdc55a1fe3b1c464dfdb7e5298c380c112a2c93dde9cc492d07ae6ce4089d758a1ed648e160c37f', 'saudi arabia', 'tabālah', 1, '441714'),
  (591, 'Abdullah Al-Najjar', 'abdullah.alnajjar@gmail.com', 'scrypt:32768:8:1$JiaNcgAUyp10c5xN$b534d3962c6b6efd6dcf0c43e6c0ebc30c5fc0f637988fb1f7ca4d3cbe29d268014479ec5c024637c427cb9efdfc34cffc290d77adf4dcdf6549eda64e1326c5', 'saudi arabia', 'tabālah', 1, '623115'),
  (592, 'Mahdi Al-Jabri', 'mahdi.aljabri138@gmail.com', 'scrypt:32768:8:1$o0Ri4af4qRpkhJ52$1bb2f742815b93bd62305cc50dfacae5bbbf2e4197000b20f9a424f94510633a16a834198377be4689cee87bf369be8ba5f29098e6da46b2fb12f65dda679c1b', 'saudi arabia', 'tabālah', 1, '473334'),
  (593, 'Abrar Al-Qurashi', 'abrar.alqurashi@gmail.com', 'scrypt:32768:8:1$HwvnqYQHH01AhIkv$5f3f11a2c5e604adbccea631fbfb01d534d63024e1b5ab47192366fd03e8f0841c9a93133e59deab0a24c89ef32ba9f802d7c4e7a00ca0f6295ca004b2ec01ba', 'saudi arabia', 'tabuk', 1, '107468'),
  (594, 'Fatimah Al-Najjar', 'fatimah.alnajjar45@gmail.com', 'scrypt:32768:8:1$vkP5ej6sQfT69FfN$d474019e96ebecffbed9ba00aa76064a21dc2c977b6b0155c29ac609cd5639aa9cec510aff8eed6137ff2989cc370b4415b494a7dc3c3a350858db5f1cc6128d', 'saudi arabia', 'tabuk', 1, '585601'),
  (595, 'Amal Al-Enezi', 'amal.alenezi76@gmail.com', 'scrypt:32768:8:1$YpIWCDuJVoouxAkZ$27a97977c980fd7493bdfa7c1c5ac94ddb9302d92457c9d623ce6b672975715e80a6005ef9780e17abead1684fedb518a470361ef536599835913cb5d6636747', 'saudi arabia', 'tabuk', 1, '427734'),
  (596, 'Nasreen Al-Marri', 'nasreen.almarri@hotmail.com', 'scrypt:32768:8:1$F4970E9jAqvNlwFo$5cd4655611537cc365623f2fb27e583f5e490ee67ab65fbd7f0daf58d8f89cede40d7a0514195a5c3fa16ae6d63c78f6a5591523574ce35521035a635672d427', 'saudi arabia', 'tabuk', 1, '175152'),
  (597, 'Abdulmohsen Al-Sayed', 'abdulmohsen.alsayed@gmail.com', 'scrypt:32768:8:1$zPnA6UzcCsYvSkoB$7a1ab840b37c7a95e6a1910faa869a622db718b39aa0f9911bafc46a60cc6945b6549cce1a9ef90e2b123ea1871c7d8bebb733eefd4dae7ba138758a5b7d0ae2', 'saudi arabia', 'tabuk', 1, '116831'),
  (598, 'Saleh Al-Otaibi', 'saleh.alotaibi@icloud.com', 'scrypt:32768:8:1$D8JbFHSHm1WZ4MX5$3e4ed22d0163916bc29d4ca8a1671deecf337b51789315e679864a6178bc98e1921a39a7c6b70b75181df46f748ce7394b01a9e4f3c1b60a9bc48a05f8f1a554', 'saudi arabia', 'tanūmah', 1, '684465'),
  (599, 'Hanin Al-Obaid', 'hanin.alobaid@gmail.com', 'scrypt:32768:8:1$szama8hEcYSmZmnh$4142b4687d76f6332179e607171c7949368f277e5ad15a04defe8fb2fb77ff6e94c0c352f765e721022d7c8470cd9d5a5b08a0426dcedb5f4f3e64be978457b8', 'saudi arabia', 'tanūmah', 1, '321053'),
  (600, 'Mamdouh Al-Harbi', 'mamdouh.alharbi54@gmail.com', 'scrypt:32768:8:1$HDuHaXvTqaw6AT50$50995271f0db51c1c5aed8cdf72f118261f4a8bb022f74611aae28515bd995e94b62510beabffe134292e43ce28094319a096aa5b2da17cc8ae791652c07e8c1', 'saudi arabia', 'tārūt', 1, '219960'),
  (601, 'Remas Al-Fahad', 'remas.alfahad1082@outlook.com', 'scrypt:32768:8:1$wNDAa30tgYMTcVAb$72372ad5338d940bddf06a3b19e7938db0d776c63e03fa266b0b07d9807119221ee088687cd15589127d8f198ad81c1a475198e5ebb406dc8de37e49181db9c7', 'saudi arabia', 'tārūt', 1, '134054'),
  (602, 'Rawan Al-Jabri', 'rawan.aljabri95@gmail.com', 'scrypt:32768:8:1$hLVSQNuyegKWg6vG$aacbfc614854c730bff7dbb792fbcf1f482887cfe7610b01d291c33124ce24999eb4f28af4d5e4335ec8e735edd788816a7f23a336dcce07f9e5b3427ad557b0', 'saudi arabia', 'ta if', 1, '081781'),
  (603, 'Nouf Al-Balawi', 'nouf.albalawi@gmail.com', 'scrypt:32768:8:1$dQSZGkv40XvmneTN$971a63c662941ca15f85b91c4eb6df0888e2c1265a266f70ba49a29b625dd81f6bd9032c4a61a6b63cdaf6ab3dd69da09f0cd4951b0c0c5d9e4d03bc96291ba3', 'saudi arabia', 'ţubarjal', 1, '460189'),
  (604, 'Hisham Al-Tuwaijri', 'hisham.altuwaijri@outlook.com', 'scrypt:32768:8:1$h1OzO3WmuRElON4r$39166eaedae42389f8a83da1fb04ceec99e61454bfa356739603f392d0ddff993ecf099c3f5bd4524f8261a66c3337765d76b866eb5f304cd489efe4bb8b0ebf', 'saudi arabia', 'ţubarjal', 1, '233098'),
  (605, 'Khadija Al-Yami', 'khadija.alyami@yahoo.com', 'scrypt:32768:8:1$t2M9bdh5eT1aME3J$2d0ced0a6bcbd2dfa6d69b1414bb2bed0a20c13e5b0987983c9911ba804e9293f203b54f790e666fee6a5c92377c96548e915d494ffc0f9e1c8f86348b5634d3', 'saudi arabia', 'ţubarjal', 1, '139865'),
  (606, 'Ghazi Al-Hussain', 'ghazi.alhussain844@gmail.com', 'scrypt:32768:8:1$9N4R7VZZvmiXIuip$2b168eca1dd906a5dc1f9d060faaf8f1b880e0f8fa77637f1b8b71f6df1029f47acae54c775d118e8f48ac58e757b61779d185149cec7db76e947609282f44bd', 'saudi arabia', 'tumayr', 1, '270528'),
  (607, 'Rahaf Al-Rashed', 'rahaf.alrashed@hotmail.com', 'scrypt:32768:8:1$PhkxKpjLGnkhFtR4$8af0a5bc80667946f1f786d122e048158da12665e29f8c1249d5442010ae2bb3838357f766d57410abbd63e927dbc5a45afe1f59b2ea8e2a85c5062083d9f34e', 'saudi arabia', 'tumayr', 1, '227684'),
  (608, 'Hassan Al-Sayed', 'hassan.alsayed@hotmail.com', 'scrypt:32768:8:1$BAAcJ5EEqf27IEeK$324f28fa44572fa442530fdc968536e47ea342a3b79027b6102c3a3381c5d1da8175b5d76ce4b16d327857b55256208493a4cccd1fb8eec44328764c2f891130', 'saudi arabia', 'tumayr', 1, '235040'),
  (609, 'Bandar Al-Anazi', 'bandar.alanazi1587@gmail.com', 'scrypt:32768:8:1$Iz6v3PVS0FWE7cBm$01792fcb048641a11cdb9b11c09afbcb58457bc1200e668ae0284a0f20e967e12add2ee2b6b07bb64d5584065eb40d6aa7ac718c9a4f22a926fcda99f03f1908', 'saudi arabia', 'tumayr', 1, '287237'),
  (610, 'Razan Al-Fahad', 'razan.alfahad1895@gmail.com', 'scrypt:32768:8:1$c6vemfp0PSvqKaTH$7c0294eaf15afee035a8e0129c216f16642eac6a57480a74b94d17b63c7314ed7ed70c35ce959a6a017257151c10d5b131c1f325c650fde8c421d0115b5b0fe7', 'saudi arabia', 'tumayr', 1, '054442'),
  (611, 'Mashael Al-Maliki', 'mashael.almaliki170@outlook.com', 'scrypt:32768:8:1$e5M0GaiGzgi4HrpV$d97ee6b460b132754015e199b08c24a24eeb142e73f8e95c5693a8244ddf21b9a28499c909c4f862631e164fe27e7ce3adb074dcc90b19fd1f43619e14365bbd', 'saudi arabia', 'turabah', 1, '807281'),
  (612, 'Joud Al-Anazi', 'joud.alanazi415@gmail.com', 'scrypt:32768:8:1$vg00MIydwJBcKaNU$c5fc09ac886c18911a6326609fd9906eab7c095d6ce753bc1fdad2309098dd0d92daaef00a335e86d431741c3af3447873f836bab4b1ae0de670ec69ab9d55a7', 'saudi arabia', 'turabah', 1, '338465'),
  (613, 'Hajar Al-Anazi', 'hajar.alanazi1042@yahoo.com', 'scrypt:32768:8:1$XcT7DegKZIkwLsAV$751a9805119bfc1775bb6c7986d1d07eb6080e8c445553627539e43748a61c9628eb770fad7ce63f8b4cb54b5dc951cc75781a061654efb6a6afcf9d2d087497', 'saudi arabia', 'turaif', 1, '676958'),
  (614, 'Haitham Al-Bishi', 'haitham.albishi72@gmail.com', 'scrypt:32768:8:1$3sJ3PjJMo4QytCKN$bae76f0b9f0c94ee61014954772bc0cb1234c612cc5c3285b1e5d987bb6842468f64d290c0e60200abff4b174d3f13d735a9a8097cc29fe78d5ff8e847bfddbe', 'saudi arabia', 'turaif', 1, '841828'),
  (615, 'Muneera Al-Marri', 'muneera.almarri98@gmail.com', 'scrypt:32768:8:1$LvvQifqgsbKVuwvn$662fa0140750a1de079d6f7c21de2553aac2c4aad2311e9e2bb8000dedf688a2f956a4838d2e82743626ba750c84f2e5eb0ad0485084c7c3deed4cff3521e65d', 'saudi arabia', 'umm as sāhik', 1, '982689'),
  (616, 'Huda Al-Mansour', 'huda.almansour3@gmail.com', 'scrypt:32768:8:1$ZYsBaBwRZWtAdgUy$3d1afd24ca47ea282a9d902236dd44239939034bb01430f50f501416a6bdc1a655561528b67821bcddda74692c5466be95e984d9c71ccd1aa73a2e59a09a6b35', 'saudi arabia', 'umm as sāhik', 1, '895962'),
  (617, 'Reem Al-Mutairi', 'reem.almutairi364@hotmail.com', 'scrypt:32768:8:1$b5FeMzoSiz04IoFu$d04b6ac25539ea0546b8674d43a06ca88188403ae7c0e07b5fe01533fe951c0e87ffbd7d500c25f0dcab6c21a0541b2d3c746efe8ba5334ed536ed64ae2c579c', 'saudi arabia', 'umm as sāhik', 1, '180335'),
  (618, 'Ruqayyah Al-Subaie', 'ruqayyah.alsubaie46@gmail.com', 'scrypt:32768:8:1$DcZRN754Qu7veF15$f974652a115257c2f4ab758278009721ff41d5f21f54426958239655e157978e9e046f223e65e60d61d834dfa007ecf827b203217d3bd76e6544051a4db0cb66', 'saudi arabia', 'umm as sāhik', 1, '110032'),
  (619, 'Mohammed Al-Shehri', 'mohammed.alshehri18@hotmail.com', 'scrypt:32768:8:1$Uk8XkbseUuFjEi1B$dc41f5dbf2bc1878de4d87c493d9defc1396dda3543dd030fe56286811cfd74b31375e83279dd828cad0f9719adb305a63203627bd92a05d4abe5be64c4b01dd', 'saudi arabia', 'umm lajj', 1, '757273'),
  (620, 'Hind Al-Bishi', 'hind.albishi88@hotmail.com', 'scrypt:32768:8:1$k7VRqjj5BUmzIlf1$51a2caacba7df938953d6f52a4cce3b9ad55e62972e099e8eea0fb690c7831cd1dd522e5716701d9c2aff5046165f0f02d8f9ada74b0d589ad24e34348c5a98d', 'saudi arabia', 'umm lajj', 1, '512923'),
  (621, 'Waleed Al-Dossary', 'waleed.aldossary@gmail.com', 'scrypt:32768:8:1$0YrbyijHYsdnAuY1$42588ee57524c599291b21df330dcc355ebc1c73840cec27143aff7d03109f788074734e34ea6d62ea141cbd1f0b004202fb7b528a9ae6837e2c360db9ed2bb7', 'saudi arabia', 'umm lajj', 1, '795119'),
  (622, 'Wadha Al-Qassim', 'wadha.alqassim@gmail.com', 'scrypt:32768:8:1$g8BZvlMcuLQwe0Lp$1c1c9aa7a0c5216a64e46a98371faf9f8a0ef0b7c02133dcf0fd790b4f9bfdc1788c6543f239e1e00f9b6135f8777bda471d6e4edff5d53cb2c500ce0491c6a3', 'saudi arabia', 'umm lajj', 1, '359350'),
  (623, 'Mayar Al-Qarni', 'mayar.alqarni@gmail.com', 'scrypt:32768:8:1$xj8J55fGbbWDpRr1$b4164a7c9812544f1d076fe423753c8ec08b76feef3c781ee02b77776e24e190618765a16e622f22abfdd22092c4b6d2ac948c2d6b63fadee2aee9f22d131c12', 'saudi arabia', 'wed alnkil', 1, '386731'),
  (624, 'Ali Al-Ruwaili', 'ali.alruwaili@gmail.com', 'scrypt:32768:8:1$qRi8p3Lce4fYyT5Q$8ed32de96bd2846bc716a6273775f8f98634f75087f4c3210d6196f4c596ec71ede770fa6c07a0cc7ffdc3bee2fcfb40cf90419c093f1a7039439faf70fb6514', 'saudi arabia', 'wed alnkil', 1, '413036'),
  (625, 'Manal Al-Subaie', 'manal.alsubaie@icloud.com', 'scrypt:32768:8:1$ltNVZVhC5LUSBR2Q$e7af6bd2b167b2262e710e2aa5abccea39dc2c26b66ff9cf678b81f3c4e1e43b0ad396f051751c6202810a12c64a4c7abd277629cd1958b3250b3773ff817432', 'saudi arabia', 'yanbu', 1, '554056'),
  (626, 'Khadija Al-Thubaiti', 'khadija.althubaiti693@gmail.com', 'scrypt:32768:8:1$GnIWhmU50mdZ2Mc4$bfe9e00109aac1b728e0db2dfcc4615a4118e4d251821b35f972547051e2eb683561ff561a84b3681d27732b280e94724b390cf90a1067faeed31e96ae04a76a', 'saudi arabia', 'yanbu', 1, '102641'),
  (627, 'Bushra Al-Hazmi', 'bushra.alhazmi755@icloud.com', 'scrypt:32768:8:1$Fg1qCwK0ZJ7QM6NO$c77c119299443480c4b4fb58b17380886f901853a1fb1627305140d5ac0a8cf6af407b11f5d79040baceddf7289695f03d4e796192a8c8cf807e01ab92d23269', 'saudi arabia', 'yanbu', 1, '417607'),
  (628, 'Jassim Al-Qasim', 'jassim.alqasim26@gmail.com', 'scrypt:32768:8:1$N5ts5uUvcO2Rw097$cfe0b96771bcd9a07082c5c87cc7df9bbe58bc3dc2ac677c4713ba4504a39c63694c01b0c634e999705d1d4021341b306f98fd84102c0c0c630173e253db6e79', 'saudi arabia', 'yanbu al bahr', 1, '460920'),
  (629, 'Abdulrahman Al-Zaid', 'abdulrahman.alzaid653@gmail.com', 'scrypt:32768:8:1$yP06NWifmu3IeDRI$cefc321fe9fb8e63160b5db0d99c7a13534791444b5e90362e766444126fa8bf0649463962ffe627a424eb5cc38615e274a9701ec65831b6486db082932b587f', 'saudi arabia', 'yanbu al bahr', 1, '572517'),
  (630, 'Saleh Al-Hussain', 'saleh.alhussain46@gmail.com', 'scrypt:32768:8:1$90S7yAb5fRJZ7Mso$0424d837b7a17b5fa77a76f4d4237e7b4fcda7b8dfd3cffc57680ae9d0298123807dc47138c3f759ed10d040f68e8796b161bb00164205b7ea030cb089b92b74', 'saudi arabia', 'yanbu al bahr', 1, '498511'),
  (631, 'Rasha Al-Shammari', 'rasha.alshammari@gmail.com', 'scrypt:32768:8:1$Dy9gxsUrynOSwePC$5643f19911b469ed1b87d5e24fb2879ca3d56db936ef79eddd323b6909e2505e1e2dab0f56b6b59d67e2dd70d5c6f69c984b1498e6c10fdc0b7eaec4398be3e8', 'saudi arabia', 'yanbu al bahr', 1, '843952'),
  (632, 'Abdullah Al-Falasi', 'abdullah.alfalasi@gmail.com', 'scrypt:32768:8:1$ljRQTcF3YR2cyqX8$3d559ac29b81b0046496bd45f84427239ad2375af9868868c2aa114e82d969c9c8823aecba3b2725a46c36cd46b934453982216768b969d12b851dd194ac2e4b', 'united arab emirates', 'abu dhabi', 1, '990739'),
  (633, 'Zayed Al-Remeithi', 'zayed.alremeithi1709@gmail.com', 'scrypt:32768:8:1$FAW25ePipRvt1iaX$422edd85fe5f872c42765a40a70f88eead3eae6c3075f38e9911eb19afa2b08cc79705d1931854da5f69ec6276a80bf0df771019e58c9529f235f6d5545e24b7', 'united arab emirates', 'abu dhabi', 1, '010560'),
  (634, 'Ahmad Nasser', 'ahmad.nasser1126@gmail.com', 'scrypt:32768:8:1$zQUbpoXxMfNS6h1Z$26d26c91595bbd400cd935b4b974ecaa94945a9723a9407fab0c72480cc49e182232e8d51096148676e2f6140d065cf3788d840481513e2056bb940d04cbd887', 'united arab emirates', 'abu dhabi', 1, '986973'),
  (635, 'Salama Al-Ameri', 'salama.alameri587@gmail.com', 'scrypt:32768:8:1$WEIIRwVRJ4Ihs3OM$99ec4591551f591b22d5924826b61d14a0d22bbce2571b5b50ac63a1ba321247ebc309d0f4df60acdba34f7658e564c0b0ae2cc43a16ccc647671c377c8d1573', 'united arab emirates', 'abu dhabi', 1, '604430'),
  (636, 'Dana Al-Mansoori', 'dana.almansoori76@gmail.com', 'scrypt:32768:8:1$5TX6df15Gp50a4R0$c6c83524aa84b82bd2acae1616e60cb90c78c7bbdbf42f6b0278e631a0edbd3994f11d9833bf2849f578e3d081f7f7a7221816b0df7ef9221d591db1a9560a19', 'united arab emirates', 'abu dhabi', 1, '788119'),
  (637, 'Divya Bhat', 'divya.bhat@gmail.com', 'scrypt:32768:8:1$i97olhltQZEORm71$34f323bbc4c1dcef87f7be618e2439111aeefb6c13f75a41a0485352042090e824a9c5a531afa8cede46c2acafd8f7f5cb136fb1be918ee15f7dcb49bf93c217', 'united arab emirates', 'abu dhabi island and internal islands city', 1, '282899'),
  (638, 'Majed Al-Mansoori', 'majed.almansoori1284@gmail.com', 'scrypt:32768:8:1$9hs3hzWLX0QqaaNq$7938df3d7032d0e5bcae417ead42cd07f6a54ec4ddd8cccdda85874235ed6e3fd55737432ae0e13a551db989a3d9a033856133985e74621bcd3c71c17904656f', 'united arab emirates', 'abu dhabi municipality', 1, '384534'),
  (639, 'Lina Khoury', 'lina.khoury@gmail.com', 'scrypt:32768:8:1$wVBaE7kzOBMIt8gg$763e2123639ebfd246abb050666b498f1c7a5464eee602bd6533d08771381b5e2aaf7118af987a99903723d868d6fb6f1eab4d9a395cc60a073967bbddf5a6d9', 'united arab emirates', 'adh dhayd', 1, '713011'),
  (640, 'Amna Al-Hammadi', 'amna.alhammadi@gmail.com', 'scrypt:32768:8:1$roBIq5m4jj1TTnEJ$ccf3ab671411cb7236aee58ad32325affbef745f89ef157b5338505902f109e3734f187e5891155417d4b3ea312e66154321a6b0ee55e04b7479217425da79e0', 'united arab emirates', 'adh dhayd', 1, '980383'),
  (641, 'Angelica Cruz', 'angelica.cruz70@gmail.com', 'scrypt:32768:8:1$nOiGcP8td0k0HJWr$efa9b1bdf096f208bcd2d8dd3d7677130faba6d60428c296950c50595478bbe1bf8ca24252e8461f0b7c6406022c2007855570dbd0035fadd512a989e89f90c0', 'united arab emirates', 'ajman', 1, '424154'),
  (642, 'Tariq Mehmood', 'tariq.mehmood1905@gmail.com', 'scrypt:32768:8:1$Bll0oeKaNjrtlmeM$7de5ac0d55f59093773c357e9c1face4c22fbc00bae5c91005ac1ed3337df79fedec25d71ee00f701a6c841c83f63d4cafcfff2fb8e39e97b1bc45ddb1fa5766', 'united arab emirates', 'ajman', 1, '195040'),
  (643, 'Khalifa Al-Dhaheri', 'khalifa.aldhaheri1835@outlook.com', 'scrypt:32768:8:1$CpyjGapwmGP1xuVD$5c7cf93f4bad64971a25427d6e63699c3b7c228a333bfd57d2a300cf9c915781c394e49a977ef9d02315af4b5497b0a42dcbcb9d8b0888f9273c5e962a607049', 'united arab emirates', 'ajman', 1, '801116'),
  (644, 'John Reyes', 'john.reyes1676@hotmail.com', 'scrypt:32768:8:1$JPJuhxw9ZP0oYMvp$f26a96924fda38e9fef335aaa7ec5464ad3bf097cce9d67c4072c6750df560e3c53914495045b505c65b806b67a016180bcb4b7e23e27a36482d5aa3096ec044', 'united arab emirates', 'ajman', 1, '106776'),
  (645, 'Anjali Krishnan', 'anjali.krishnan8@icloud.com', 'scrypt:32768:8:1$xVe38bFQlFqVmERz$bbd5b818c700907a6cd3f2844d8e0f55617abeca447144e0a79ecef9ec5d24155dfd130fe4735dc888aca34f5a4ccda3e14598ecfffc2611d5b5e03ef8099507', 'united arab emirates', 'ajman city', 1, '911884'),
  (646, 'Rami Haddad', 'rami.haddad@gmail.com', 'scrypt:32768:8:1$DrsDvTYJH8KFRD0O$2e09cbdf59ed76ef64d18b0d4204258904f3b6d74d44e7fe58e0052d7c788a0361c24b12ae4680d174e04f7c4a3ea0aca565cf77701fabbc24479771c54748f5', 'united arab emirates', 'ajman city', 1, '395622'),
  (647, 'Zayed Al-Marri', 'zayed.almarri95@gmail.com', 'scrypt:32768:8:1$QDTTlSCTD2VE52Z0$34572f5ec1f9168080c66fa8d7563993e8d2e9f3055f1f02d9eb5bc4e226171e25a71b5470e19bc9a69ddebacededba36be8642cfe0535c91fb61663448eada7', 'united arab emirates', 'ajman city', 1, '014026'),
  (648, 'Mansoor Al-Kaabi', 'mansoor.alkaabi@icloud.com', 'scrypt:32768:8:1$u3ZxLrPynbGNVK0S$b3c34c19bb9ff1411d226ae3b69d6db57c7f36aeafdf47416a525e2b115727307580274167285ff598e21dfa5dec3abb852e6192369b21a6569ccf10933996a2', 'united arab emirates', 'ajman city', 1, '145949'),
  (649, 'Amal Al-Tayer', 'amal.altayer1800@yahoo.com', 'scrypt:32768:8:1$n8MylB5Sqoi8xbEe$102d6de5915736da8cb434f4a95c9dadff8c4e68278726de8e3714188cd021a0272383b77e258091592cb787e47deef18ef4628b07aabff4eb57a65599bd9723', 'united arab emirates', 'ajman city', 1, '087715'),
  (650, 'Ryan Delos Reyes', 'ryan.reyes@gmail.com', 'scrypt:32768:8:1$p4EzRfThiR0B9mVQ$1a78f109fb8f66a257e3cfa55614e7360786a9d785c8b11b79aefe6b1364b1f36e344c23a1705304eaa90ddbe6bea3cc98f6707ddfb9811405cfa4f206a44800', 'united arab emirates', 'al ain', 1, '208560'),
  (651, 'Rouda Al-Kaabi', 'rouda.alkaabi52@yahoo.com', 'scrypt:32768:8:1$D2QpJElWYUfArWOW$6e7a886d4a15c032ba8f6b6e7cfc2b202d55b9185243867d5946b433ad4f3db129483a6ab4d6e5367d3f42ebde622c38601c989e8d39c0c5ffdf816cf6d39e0c', 'united arab emirates', 'al ain city', 1, '921344'),
  (652, 'Neha Kapoor', 'neha.kapoor@hotmail.com', 'scrypt:32768:8:1$dJVj3EDpO0xgA2NE$23fd34e4f3cbaa88e771881be063954ed2e799306ccf8c4d4e0f7618ae14921fc9ea2c3f55187779828d061c23af7255ba58ddc3405e517a85200f395606478c', 'united arab emirates', 'al ain municipality', 1, '352626'),
  (653, 'Samer Ibrahim', 'samer.ibrahim21@yahoo.com', 'scrypt:32768:8:1$kFYnAuV8Vj1zaO3e$23eed8779d640e16a1faa4b8a2d50a1375f7d229cef859e829cc92dda4e42fe77b202761da67362561a6bd50d4586fcf9ecfad427ef0b7b507066acf30dffe2d', 'united arab emirates', 'al ain municipality', 1, '183290'),
  (654, 'Hind Al-Matroushi', 'hind.almatroushi57@gmail.com', 'scrypt:32768:8:1$7X7FtWVaOEMyxJAt$2b0b08bb3644b5b606bf42d190384582f035b552f5b4676738607c27d41c70d3e36c06f4d5e7bc6fb1cbf4ac7c47abe472e142d3208163970d3b3b0f38f0ceff', 'united arab emirates', 'al ain municipality', 1, '154918'),
  (655, 'Hira Javed', 'hira.javed879@gmail.com', 'scrypt:32768:8:1$M2QHtw4WFTdNN4xJ$afd3c8ef767781ba430df216b594305d8a7056471e97931aeccc19eb4d1940b0ace171e3e3f016a961b183817f5b127a33995e965aa763f32b7962dd2611a4e2', 'united arab emirates', 'al ain municipality', 1, '739414'),
  (656, 'Rizwan Ali', 'rizwan.ali@gmail.com', 'scrypt:32768:8:1$bTWU24yY1TShjxb0$2a4d3b078994d2f0f514178cd14906306b8a44ffbbb040ea939cf37e84f966dc4585b707fccc5d3805449c95b8a9a111a3c7a2a82b8e81bf62b0fdc39f09ddaa', 'united arab emirates', 'al batayih', 1, '266081'),
  (657, 'Joel D''Souza', 'joel.dsouza4@gmail.com', 'scrypt:32768:8:1$ApjRygPxU4PNFrmp$2fc9e9113c3232789c8d7014d323055e6e072204e5538fb6fab5fefd7e60f3c6242616eed9c2f38a87356b57d236310f9764c7307be4eae78484887f4aad6074', 'united arab emirates', 'al batayih', 1, '536635'),
  (658, 'Ali Al-Qasimi', 'ali.alqasimi466@gmail.com', 'scrypt:32768:8:1$tHlUxn2apf7ZHD7P$5344c8baf2d5fbf24547ffc95258c7347b1c7784ca553c8e097b9bd4bffe76121e78a8205aa3f895e5485513a0cdb818c5dd1cdedbe0c471472e81ee99b154df', 'united arab emirates', 'al dhafra', 1, '135399'),
  (659, 'Joseph Nassar', 'joseph.nassar22@yahoo.com', 'scrypt:32768:8:1$xRPqYKrnAyOhx9NI$a4cb567712362ccc7ce9b862101b1776c125eaa58843c362154ca9a2b4d6a233291d2d3776bedc80ba258850ea0afa604eaddb0de33d60ef14cc3b197f53c2e1', 'united arab emirates', 'al dhafra', 1, '033257'),
  (660, 'Shouq Al-Mheiri', 'shouq.almheiri@hotmail.com', 'scrypt:32768:8:1$KDO4zCHO5VJtgVB8$19202161d177e66410095bded59888a9191097ea340f0e32952fa4f17eb75bfefbe4678138abfbc553c439b3d4595509b327917a58f2771d46f0c045ae9044fd', 'united arab emirates', 'al dhafra', 1, '616895'),
  (661, 'Ritu Mehta', 'ritu.mehta1861@gmail.com', 'scrypt:32768:8:1$znTmkBBw9Z8DDFbZ$4ead7808573c8d36b49342e43d875c120283c03bceae9061cde0f6f98b0e4aa19edca524cc15942fc54735956a7122639a446f17571a822d6adafeb51560ffe2', 'united arab emirates', 'al fujairah city', 1, '059178'),
  (662, 'Khaled Mansour', 'khaled.mansour30@gmail.com', 'scrypt:32768:8:1$2xr4A1aSZDIzeR46$0d80b5ff6454c898f937699f009782a569b5354cc124852038a371dc1fa2001da63cc916644b9d327e8b846739ea46c4ba89f939425d5b22759ac059fe745aee', 'united arab emirates', 'al fujairah city', 1, '238083'),
  (663, 'Reem Al-Blooshi', 'reem.alblooshi1612@icloud.com', 'scrypt:32768:8:1$rCPZwigZBeuEjy8e$fe5b3a7ae3dd1278246c62998fb340d0e06998c57f48a3956363c8a57bae9441e8ed4365b96dffc683595c4aec93ffdc910199f85822fe225b65bd8d50bd9235', 'united arab emirates', 'al fujairah city', 1, '515394'),
  (664, 'Jad Haddad', 'jad.haddad1467@yahoo.com', 'scrypt:32768:8:1$aVNLyh4kYXgfgBr9$81a6256cb439a78dc4faa8883a6ccb75aad8ffdc3f8305fa3310858700799277bdb30e62c677551df7d4afc87adeb1c70b93443560061aef6b693113f92187f9', 'united arab emirates', 'al fujairah city', 1, '175148'),
  (665, 'Anoud Al-Shamsi', 'anoud.alshamsi692@gmail.com', 'scrypt:32768:8:1$PYt7rVOCAy20v19g$ae2368139cb035d4b5aca835771dafdac35424109b2f43c19c5a70248f4cb0f5b513786a556def0d65d72412d6c8af34d728a871dba6841af1451bf823a08257', 'united arab emirates', 'al fujairah municipality', 1, '099962'),
  (666, 'Mohammed Al-Shehhi', 'mohammed.alshehhi65@icloud.com', 'scrypt:32768:8:1$qeffjUOflYiv2zZN$a2134547839c11669159af582addf64a57d7e683fb06e38baf21bae4534d9937c81bf2bd4650e54ddb56256ea2e9e86cd7a0771bab27b21aa2fd9fdc585591fa', 'united arab emirates', 'al fujairah municipality', 1, '089909'),
  (667, 'Kavya Shetty', 'kavya.shetty494@yahoo.com', 'scrypt:32768:8:1$YiVGdhsu3GWKKWVL$90c8f861d53308c9f47c4bd78b42c7276bac612ab6969453d517c140df3ce5b77bfbeaa6cbd0635573fc4314697eae72e3b5fbd3bd2f86af9d412ebc4a61b376', 'united arab emirates', 'al fujairah municipality', 1, '568327'),
  (668, 'Moza Al-Suwaidi', 'moza.alsuwaidi70@icloud.com', 'scrypt:32768:8:1$8W1qtWMpW7CXXHYq$bd39c135f0c47612b308ca131271583351621826f4d5483fcc683504b088a1b931e87eeae612b948e1362b70a1fa624307cfd2b350a139aaf69e6a16479b6238', 'united arab emirates', 'al fujairah municipality', 1, '313202'),
  (669, 'Yousef Al-Hammadi', 'yousef.alhammadi@gmail.com', 'scrypt:32768:8:1$ZC2vLvKNXtMxlgER$0590af6122eb29b6031e88a314c2637a75f66c10ae49784a314e5287779fc0cb48caf9458a90af13c2b60f2424795dba7ee99b5695020cd7135e0316b4205c1d', 'united arab emirates', 'al fujairah municipality', 1, '875694'),
  (670, 'Pooja Patel', 'pooja.patel49@hotmail.com', 'scrypt:32768:8:1$ftZeV4SEPsO7GfPF$220330d54f48efec9432f882a77d589d45ad7889ce4ac584ca160db38b1df0e6093714da1796abb3e902a297e32cea918b0071d39737d2595e503ca4789cb2d9', 'united arab emirates', 'al hamriyah', 1, '814270'),
  (671, 'Juma Al-Kaabi', 'juma.alkaabi@yahoo.com', 'scrypt:32768:8:1$SF3vGeXauqjUe6Eq$cf9c9e943b79248d4786909c44b6ebeadd56dd00561c0f7770e26183c52cef4d98645a9e54e4ff55bbc1c65d894fa070c068956a6b5f539daa52fdffa4f25afd', 'united arab emirates', 'al hamriyah', 1, '227751'),
  (672, 'Alyazia Al-Mansoori', 'alyazia.almansoori1849@outlook.com', 'scrypt:32768:8:1$vmYTDF1Bw8uti1l2$cc7b8b8747dbe341010d2d2aa6dfd87d8ec3aec5bc44add3291c561a716b70d6a5aa084756785b06f7ab0f0e1abb6e598f31d4420346ca976fbd0831cf72ca98', 'united arab emirates', 'al hamriyah', 1, '934181'),
  (673, 'Nasser Al-Blooshi', 'nasser.alblooshi1175@gmail.com', 'scrypt:32768:8:1$WmMzrtRNcrPK9r7W$922307aec60b6f7c5b4d43f49db85070211eb317c2a2d7024b04c41a960866d85679576dcee55f84384c3ed82a4f29e835d1d8027bb70070eb1f35359a42bbf2', 'united arab emirates', 'al hamriyah', 1, '413966'),
  (674, 'Saif Al-Nuaimi', 'saif.alnuaimi155@gmail.com', 'scrypt:32768:8:1$K3LriTz8z8KrUYMD$25c90c9e0ba066712c52163edd1a1ebbaee87215403926e2b92d8be7603305c4f5de0d41bd784103f51eb4fa5a1eaf9d216150cadc7dfa4bc4640e0d5bad380a', 'united arab emirates', 'al khan', 1, '313484'),
  (675, 'Meera Al-Shehhi', 'meera.alshehhi@hotmail.com', 'scrypt:32768:8:1$gpimC2YEiI381xqJ$f17cebc2d342800c12c584d93e1af2df46373e8e19d7392b9cd2f4c3a89ba76e2b4a6c65e66cc8d40075eb0d03003321ef8d62f873ccc4e90410ff472688202d', 'united arab emirates', 'al khan', 1, '487830'),
  (676, 'Afra Al-Qasimi', 'afra.alqasimi@icloud.com', 'scrypt:32768:8:1$VHNDraPhb50JjZEg$c58b5a517e615ed28d632164c6ca92e9871a99323e30d78cfd3a815f3d8461d49e2b5ba15540019d0910beb97845edd042b8b03d1afeb3487739eb510daed8d7', 'united arab emirates', 'al khan', 1, '400882'),
  (677, 'Ayesha Malik', 'ayesha.malik@outlook.com', 'scrypt:32768:8:1$lh8n4p9m98JTfVMh$009af1fcad3fe83e0f62f861e2c90669f8df07e2ca6cbbb2184e27400afb12f113b07540163ee0ba6f4b0df45b36bc2331badc3bd6bb10af88b78f9bc323d1ee', 'united arab emirates', 'al madam', 1, '065174'),
  (678, 'Deepak Verma', 'deepak.verma42@gmail.com', 'scrypt:32768:8:1$3QgspLYmuETuN5UA$15d2a295b9629657d07dfd42fb87eb73e99cb4184e7823ce9511b0e8172b1980145530adefdac5e5f232135211f89e130f86b6c957a4e962b5295abdccf8cfb7', 'united arab emirates', 'al madam', 1, '829615'),
  (679, 'Waleed Al-Marzooqi', 'waleed.almarzooqi55@gmail.com', 'scrypt:32768:8:1$WJBVvkebCfDcK61A$7b6e6b8b9e4f6175aad0b7f656fc3dde7e9c1abb25e1847d9662b32a3cdd0cb34bb40f50d9683c77f948ab7f77cc891df23479ab80aeb3de1826fe0e90ad06dd', 'united arab emirates', 'al shamkhah city', 1, '796709'),
  (680, 'Cheryl Mendoza', 'cheryl.mendoza1372@gmail.com', 'scrypt:32768:8:1$QW9eWUxhy03qbNYo$d331abdf5ad88b48620a48804f8867768bcab7df17d832ebfc9f413e90fa61fb20e1f596ddd29530c19ff14204d8e8ae74221872fb1845887033542b9a98a23b', 'united arab emirates', 'ar ruways', 1, '166262'),
  (681, 'Hazza Al-Hammadi', 'hazza.alhammadi34@gmail.com', 'scrypt:32768:8:1$wyKCjRMQkP5GKbWi$3b413f2ccb3e31d042029a20a60b80ee8acd2efc3ec268de28996bfad638bca475e5537fb5b96d0bcb85f8c50d57edd60965f7358e0936832dadb5c73949a6bc', 'united arab emirates', 'ar ruways', 1, '802777'),
  (682, 'Aman Singh', 'aman.singh@gmail.com', 'scrypt:32768:8:1$iyWrE1UBEJBxLnm1$ee154b145dabee84b28bcbd658ebd7dbd732a7472294ba966467f12467da3a8a0031ef411c9d067a4dd29445c41504d9673dba9c7abe1aa69cea8a48513795cb', 'united arab emirates', 'as satwah', 1, '025115'),
  (683, 'Usman Ahmed', 'usman.ahmed@gmail.com', 'scrypt:32768:8:1$wmkogQhKF9m4xvjH$8fc9a6604ac5b01dcfa5d8542a8b2a93053f6fcd5d3f9fa1f0236fea9f6f2e2cde2cd8fe67237b866b4bb81b425b18b0e30672fb5472379af895e2892c47e729', 'united arab emirates', 'as satwah', 1, '783268'),
  (684, 'Vikram Nair', 'vikram.nair333@outlook.com', 'scrypt:32768:8:1$Wq6pVg2VH531qokI$87290c3182714a4a55411e62a992cc19ed8a0ab4a9808602cfcc31c09cf5c38ee00872d3f7761b838037bdd5df375e6f0cbdd392e6b621e02e6259bdf7187c78', 'united arab emirates', 'as satwah', 1, '022274'),
  (685, 'Fatima Al-Nuaimi', 'fatima.alnuaimi@gmail.com', 'scrypt:32768:8:1$68SlEapU1UACpaj5$e6bc76af0053942925cda3ffa7f2ed7965a829c859d2fad70684974dbd6541e5223bbaa7ec71841455229cd49e742507bc8105f5fabadc992cf0e5b3a7b8cfe2', 'united arab emirates', 'as satwah', 1, '803370'),
  (686, 'Hamad Al-Shamsi', 'hamad.alshamsi15@yahoo.com', 'scrypt:32768:8:1$nAOHtxlustjebHGq$b9fa1efca3056e98894d73e52c3d1620f98a5b816275dec717c7f10d24ff9a719a8a42e2b887522f4a4df1bc0e9ebb058f57fa7dc68bb3a3c03e0b465c3475b9', 'united arab emirates', 'as satwah', 1, '466756'),
  (687, 'Rohit Gupta', 'rohit.gupta26@gmail.com', 'scrypt:32768:8:1$kPTiFpCwycgeqwEe$8f2ec99f30144e8d1ef2bf70ff4141d987f2e7ce6775cbf9fcda5ebe3d5d791dd008aea0d3d2519e8a8d2e8cd52f528b5861a1c4936ae25c0120a46837dca315', 'united arab emirates', 'bani yas city', 1, '106659'),
  (688, 'Arjun Reddy', 'arjun.reddy13@outlook.com', 'scrypt:32768:8:1$ioOhiNLIJMvVN0H3$aaa761686d2b57f9abc80c6905992746ac7dd1bfb5f54acf5b6c2df1d724bd2dd2be498b74cfb29595600940a1925bcb6afcfa0eba97a642ccbb556cca249711', 'united arab emirates', 'bani yas city', 1, '602597'),
  (689, 'Dina Hamed', 'dina.hamed@gmail.com', 'scrypt:32768:8:1$BEuYLRqIkvQcrFj5$87dae235a50ee0206e28c1188d591b4d09dcf6350e866e051da552056a475f5dfc565113299285449c185f15d3a3f68c1021904d4aa48a09100dd3362b7b79d6', 'united arab emirates', 'bani yas city', 1, '992151'),
  (690, 'Obaid Al-Muhairi', 'obaid.almuhairi8@yahoo.com', 'scrypt:32768:8:1$sjgggfdfUaA4o1Zk$394e7dd5b5e7ecd499e2c0020a40bff84c6c0faffcdd03cb26de898461a6b25185e4d43177b5b632c85cb354affeec4aab298a45179c56397b5b824e4235445e', 'united arab emirates', 'bani yas city', 1, '044845'),
  (691, 'Imran Siddiqui', 'imran.siddiqui@icloud.com', 'scrypt:32768:8:1$BsYwpgl62hR5zxQW$b0a48931df8405a29eaee5b52fc07815138092db0a522cdd0025566f18a60caac5c710bda43b0341be5de10ef7f2d8de027933620d9a3f6321e55fcc3382488c', 'united arab emirates', 'bani yas city', 1, '385934'),
  (692, 'Sumaya Al-Nuaimi', 'sumaya.alnuaimi@outlook.com', 'scrypt:32768:8:1$Jbli8ocYt1GXoro2$37773cc2e7f655e67b0482283854c06273925a79d522e212d0a88966c7cca7ee249a6126a3d75aadd51ed6218c13c29fb04ae4a94af8455c23b7e54002422880', 'united arab emirates', 'dayrah', 1, '545403'),
  (693, 'Nadeem Akhtar', 'nadeem.akhtar@gmail.com', 'scrypt:32768:8:1$cIKaxZB1ePsoq4cI$102a855014d273b0bd5e5c3a1b987cc19364dcd909579d076c568780d5f9870e7385ea125aaa1ac5904eefddd0696c52a276abe7f9e9db55004fa378858e79f3', 'united arab emirates', 'dayrah', 1, '529162'),
  (694, 'Hazza Al-Blooshi', 'hazza.alblooshi1813@outlook.com', 'scrypt:32768:8:1$foSXEoO7PfX8pOS4$03b6da55ed22b0ece764118c62e855d43a3b652f2c13d3dd72dd03bf7df499695921bec6c1e3869ac463d9b1963642c915d863846ae16bcb51219f8641c0b9c8', 'united arab emirates', 'dayrah', 1, '500961'),
  (695, 'Michael Fernandes', 'michael.fernandes@gmail.com', 'scrypt:32768:8:1$XNUFcTn5ZYqsF1EG$8511ffb5e7006c24c296c342200943b68f8c46607870412742feb611f94ce67ddfc970edc86b619b7089937b4ce123490c630d381200d612fa4c134ac11b2516', 'united arab emirates', 'dhaid', 1, '147627'),
  (696, 'Salem Al-Zaabi', 'salem.alzaabi41@yahoo.com', 'scrypt:32768:8:1$oKCcvQxki0z7iQDH$1ebf51ce3b95e6e8f8353a6c3e9a3d6e17155bd7ac952c672455e56a47da77ae6b98d157d57fdfd83143e052c73c3334c4295caef51fef03f67c6fda4f190e3e', 'united arab emirates', 'dhaid', 1, '536115'),
  (697, 'Hamdan Al-Shamsi', 'hamdan.alshamsi35@icloud.com', 'scrypt:32768:8:1$suVsFXiMEb55NstM$339418f202afc496291a4a4830eb830d55e04ff96874e46f9766e981cf8b09895554c5a8f7ff32ba6fec6c01c6c63e801b003aa48366965749fa93beb9316597', 'united arab emirates', 'dhaid', 1, '224523'),
  (698, 'Reem Darwish', 'reem.darwish@gmail.com', 'scrypt:32768:8:1$AIgH6qKmY7udDhyh$248722c4bc9e92eda2779e281910d2144766e72ff92111a63bfd1db5ded871d8bbc40fa52c3eccecf9a741152d9251ff49d7c82439bf95c551f1be31f34f523e', 'united arab emirates', 'dibba al fujairah municipality', 1, '810999'),
  (699, 'Maya Tannous', 'maya.tannous42@gmail.com', 'scrypt:32768:8:1$IzD7HkPWydy9R7ru$1ba2b6b15b3c3ed96c3239fa2b119469691bd3dcdb1d1f9fdb49c084d961ab1e70fa15fabd53029ea5b9ef5da606930739e151f71bde116a6bc4071b33afa01e', 'united arab emirates', 'dibba al fujairah municipality', 1, '880029'),
  (700, 'Saeed Al-Ketbi', 'saeed.alketbi614@gmail.com', 'scrypt:32768:8:1$dkAP989kjeS0pBeM$e282e50fc4994ef340a2e671e7067a7b58da91250507e591b5d46d6ced02e1011dc936e0461120320f5e25530db8b4a2fe8f3d00989b8dfd14e0053addbf827d', 'united arab emirates', 'dibba al fujairah municipality', 1, '222647'),
  (701, 'Heba Adel', 'heba.adel1498@gmail.com', 'scrypt:32768:8:1$9ZlPX4HH3MqFUwon$d4037d144216e854e40248abaa407c2c2b900a664dc5a7ebde7014c7c9ac663adc8c4bb62aa0a89fa30958e2777d18208d9766800c7fe1dcd3b2eeba0bf5a7d6', 'united arab emirates', 'dibba al fujairah municipality', 1, '561869'),
  (702, 'Mohammed Al-Mazrouei', 'mohammed.almazrouei1178@yahoo.com', 'scrypt:32768:8:1$sGyoLPUjOMQpZ12L$e4fa057ef7a54a6cb4d7f9212f0ccb6c3d33ea1a39ea49289c5846eeb886245a2f0fcd94a04b0951bae9a9011c728f7f9e1df71fbb6d8776b225d05ddc6643c0', 'united arab emirates', 'dibba al fujairah municipality', 1, '103945'),
  (703, 'Manoj Kumar', 'manoj.kumar53@hotmail.com', 'scrypt:32768:8:1$kwaLQwBjm9QIRhqj$5ef65ec35665ffa2c33aa73c511c673100203293e8757c2ed420d63545a6ca378721b8189fbe35dd4e11d10808858a36e7ab37e1f5142b18f3c52c64ed251a0c', 'united arab emirates', 'dibba al hesn', 1, '254844'),
  (704, 'Omar Khalil', 'omar.khalil90@hotmail.com', 'scrypt:32768:8:1$LKfy7emWh4wPeRgL$2bc660c272f56553274c264687f77310cd0c14a16be8ae907f5396b12a0d8bae2ed2786e181d5f71413acba5ab069ead38b8e8fef3fb500af1b66e78cc73a5a9', 'united arab emirates', 'dibba al hesn', 1, '520643'),
  (705, 'Sami Jaber', 'sami.jaber78@gmail.com', 'scrypt:32768:8:1$ewS7ehxXejTcVDhd$fdbbaff9d223756d41fcd79ccc015080e061cc355bd4d1ed5a993ee1a4af7b2719e6f83c752c7029aecdaa143afd19a2e2b9d7d591a121d372247335a594a236', 'united arab emirates', 'dibba al-fujairah', 1, '772700'),
  (706, 'Hassan Al-Ali', 'hassan.alali@gmail.com', 'scrypt:32768:8:1$75orKH9taPtdAPpA$af0f058c53bc13ba62d14ac00552e0840479ea653b70a6f65337b4c05ec34bad187253177faa9164ba0b17b363264467626dc77b15c7139251fba4360a80d6ff', 'united arab emirates', 'dibba al-fujairah', 1, '585905'),
  (707, 'Rashid Al-Mansoori', 'rashid.almansoori61@yahoo.com', 'scrypt:32768:8:1$qEgYNjAAOXA2Lqri$57cd093ee527f780b9c03ea166109bd530c81a6000c1601a390e206f5185c8bbcfee044f80feeb67ce5b7bf111433fe94c22e33866cbb75757cb65c8766eb295', 'united arab emirates', 'dibba al-fujairah', 1, '436447'),
  (708, 'Ziad Bitar', 'ziad.bitar49@gmail.com', 'scrypt:32768:8:1$6vwGjvUU3SjaLbMV$27308efc036c4151d9350209bd05d07ffe816b6c68c92be9f4e95e5de7897c83acfd490b4593c12253dc4141063ec8a2ec05a8485e505c888d725bed39b2950d', 'united arab emirates', 'dibba al-hisn', 1, '550611'),
  (709, 'Tamer Shawky', 'tamer.shawky80@gmail.com', 'scrypt:32768:8:1$R05uvfbxlB8huLqh$c731659db57ea9a3497954fdd522f09804b694ab81dc4cd3a2c10201ecafef3e1055167ea16c70f331f7b10c90e2895eb3c323ff78fe36d583f6496af045c7fd', 'united arab emirates', 'dibba al-hisn', 1, '699296'),
  (710, 'Noora Al-Falasi', 'noora.alfalasi1268@gmail.com', 'scrypt:32768:8:1$VkShTKQvaopJkLso$76ae05c3dbc514c99980ab3327ae7e01fc4d8eb5478b6dea7d237a969184f73cdb11576e22a7f6dd7bf7f4b1a19b202ac4e7486fe72b7bbef9111d56f466611a', 'united arab emirates', 'dibba al-hisn', 1, '879168'),
  (711, 'Ahmed Al-Nuaimi', 'ahmed.alnuaimi@yahoo.com', 'scrypt:32768:8:1$ZQWbhkv2XFYA6YV3$3b52c56531a74b6b9e0c645333ba10b18c2d77a49632a2d916dc817fb0737a5af0aa6413e2a5c1a594de5c7fdab1872dfcf5c5f81ced08fe119a7eda2b6824dd', 'united arab emirates', 'dibba al-hisn', 1, '030732'),
  (712, 'Ouda Al-Zaabi', 'ouda.alzaabi58@icloud.com', 'scrypt:32768:8:1$Ej6nTj5NIyAfKfTr$f0ac0758acb78e155701b0ece7335c001c7f22c4d9cd0d603eb2b7d8516a7fa7497a77a1bb087f6a002a619aad78c3155c8007c41c4cb1df45be89557666ffc7', 'united arab emirates', 'dibba al-hisn', 1, '715233'),
  (713, 'Sultan Al-Dhaheri', 'sultan.aldhaheri@gmail.com', 'scrypt:32768:8:1$Tluic4DFdNs6GLii$7620b970cd4dd6e01e0bf8113eb69b7da9862156674f6fb952fa33966693b74f664bcec85b4fe98868b2de4275a995f12188138bad25baec21fd172b9f65024f', 'united arab emirates', 'dubai', 1, '514698'),
  (714, 'Humaid Al-Nuaimi', 'humaid.alnuaimi@icloud.com', 'scrypt:32768:8:1$zFAuQE4L4S6ophbV$376105b81c44a70b041b31d4e7448c1fc05aeaf16ed1abc3b9f46b5a1b2eeab2c842deeb760023b9032e289f82b5703832236afa193be17f1f853bcf329f964a', 'united arab emirates', 'dubai', 1, '948950'),
  (715, 'Sneha Iyer', 'sneha.iyer@gmail.com', 'scrypt:32768:8:1$EKLpqBaygflS1s6a$9d5d59f4c9644826df0114dd5dfb256f87f0d51b29cddc3ab273bfdaacf29d94553f78c13d5a9b4922c8ef5c8e2c0895fbce76c0b163143615582cfb3758f98a', 'united arab emirates', 'dubai', 1, '982552'),
  (716, 'Ebrahim Al-Hosani', 'ebrahim.alhosani78@gmail.com', 'scrypt:32768:8:1$Ij5JxjiOktH1zNoS$a57e9ff53eb49dd499a42de8c7345a2cd8e719572a1f68dff495214caa76700ef42d8850d68897ca2bae5d94166d1bff868bdf32639fd06d13bc1663dbbe8cb6', 'united arab emirates', 'dubai', 1, '862015'),
  (717, 'Salem Al-Ameri', 'salem.alameri@gmail.com', 'scrypt:32768:8:1$pk04HeKtUUi20IGB$519ed91aeefabac4b9117f472f9407e4b8494120b7cf1c3ff68d9128d18a84feab2abf5e79efb4d03de0adf0d03bb0415bda62194e2a4bdae8a07d49643adcce', 'united arab emirates', 'dubai', 1, '542331'),
  (718, 'Aisha Al-Marri', 'aisha.almarri895@gmail.com', 'scrypt:32768:8:1$1VjyHPPJnHapDulq$dde49ac5b06f4542faaedb0a61a1b458878b3d8c9b3281fc7475d055dc379e597393527ea3651c77902fdb7588ba1368a4ec8621531178baf44120112fa5a3e6', 'united arab emirates', 'fujairah', 1, '764084'),
  (719, 'Abdulla Al-Suwaidi', 'abdulla.alsuwaidi2@gmail.com', 'scrypt:32768:8:1$gl39IZfvvTJb0JIS$90c3dbd6a77020d219704440325738ab94d3c04d6ccfa5e01c2bcce956e0c1ad568abb60de6e53c628428c5122d510c76eb21e882047579793eac800427c3394', 'united arab emirates', 'fujairah', 1, '404233'),
  (720, 'Hessa Al-Dhaheri', 'hessa.aldhaheri1606@gmail.com', 'scrypt:32768:8:1$mr4NkTXN5M6AuvS7$dcec435e51f484deaaed92de31db176cd0421ccc91969960b272b97de4c93546d0208d049f211bead02cb4b9b2ea84c207e3b94d1d6ccdf9532ff9ae0fc41cb1', 'united arab emirates', 'kalba', 1, '479157'),
  (721, 'Kamran Sheikh', 'kamran.sheikh1900@gmail.com', 'scrypt:32768:8:1$R46AY4eKVdVJBLUh$8dcee65276a1df03f5c7b8aee097b2d7f490d22c529794f8c3cc003420e558f72e5f19305a1dcdb2cf860c8ccce4d10e51641775c1f8d5bfb5c14c9db6749e41', 'united arab emirates', 'kalba', 1, '822863'),
  (722, 'Nasser Al-Shehhi', 'nasser.alshehhi@gmail.com', 'scrypt:32768:8:1$8wmVCmajtIcMUERT$2dccea18decc88bbc6924eb43008edf10d1a2139d4dd800d60fbc4e2079a4842a4faa1f203a5b278de071f291bf42aa2bbf8ee42a935dc09d09bc9277dcd667e', 'united arab emirates', 'kalba', 1, '086128'),
  (723, 'Mubarak Al-Junaibi', 'mubarak.aljunaibi1975@gmail.com', 'scrypt:32768:8:1$N3PAePi56ekntfBC$98aa65c9bf261c644f8cb24f9b1515e5a7034eaa0bb3ba237e7fbefd924ebc2521881f464de278f3bbc551ebe18c25c814e8f47edae97f5d23b00dc000e6928d', 'united arab emirates', 'khalifah a city', 1, '072903'),
  (724, 'Hamad Al-Mheiri', 'hamad.almheiri97@outlook.com', 'scrypt:32768:8:1$VB11brRPWG9wLy3p$efbf3a5a358029c9e824e381feb5fd88bfda4258f627f1073ae8ff825564116e216b6e3a3621155c038a9649d8d829b6d85ab71c007913a1188150365d65d293', 'united arab emirates', 'khalifah a city', 1, '093590'),
  (725, 'Fatma Al-Hammadi', 'fatma.alhammadi38@gmail.com', 'scrypt:32768:8:1$2lU0Cy1q3RZVN6nu$c9ad0c843e59101ce71a03f386d1b04b384912b56bcd84c1a92cd2bee27f48a68d4a478382bac116884aff29e7c3d229a744e19a06761f53957f67289b3009f9', 'united arab emirates', 'khalifah a city', 1, '263644'),
  (726, 'Rashed Al-Tayer', 'rashed.altayer@icloud.com', 'scrypt:32768:8:1$6juHQoFXeZ9Mgs5Y$dc3ae63d71b4180b9564e1ba5527855bcb12f84a57624bc2f6d93622c066ae8d57ee56265e66882890007f104114caf06a213d80bf35129f74ce891ab84125a3', 'united arab emirates', 'khalifah a city', 1, '148415'),
  (727, 'Sultan Al-Suwaidi', 'sultan.alsuwaidi89@gmail.com', 'scrypt:32768:8:1$03XPbj0rUhMHkcDy$c7ba3fdcf12656c49462b404b3cb690ff18ea152ff5027ab367c404a493cc27ff370128fcaceed554e4d701db17a467171007724a67c8e04cc74d4136ad47836', 'united arab emirates', 'khalifah a city', 1, '547167'),
  (728, 'Maria Santos', 'maria.santos@yahoo.com', 'scrypt:32768:8:1$zkKhI6g0P7lwKVZA$fb8b07cab0fcaab4867b8aae76c6d93a56729cab80f5bf4e2cdd58c54725f13b5d4ca0de051377833e233597b72bfc62d7368be1f725746ddf6e20372c3dae44', 'united arab emirates', 'khawr fakkān', 1, '975696'),
  (729, 'Ahmed Al-Muhairi', 'ahmed.almuhairi@outlook.com', 'scrypt:32768:8:1$wFxi6fuL9uHpkCSP$0e51d2bdc89c4dd9deb109d1827eb32e259717604050570072439ac2f194a9a9bba1b38fdfcdf168681b35abf61f00002ca540ec29f400cfe7552ca193d6aa1e', 'united arab emirates', 'khawr fakkān', 1, '882219'),
  (730, 'Obaid Al-Ameri', 'obaid.alameri@gmail.com', 'scrypt:32768:8:1$2LcHcwIwxLGuuHQV$0880bba4bdc0537f9868467b0ef3265d38c8e054b78c97fe715cde41bbf6db8b85400e70e549b1e35f62702e3db2e82084033058b27743609d181c0608045ed6', 'united arab emirates', 'khawr fakkān', 1, '403919'),
  (731, 'Mariam Al-Mazrouei', 'mariam.almazrouei4@gmail.com', 'scrypt:32768:8:1$LL0rfnqQOIpy8Jk2$6ecbf39a0551dab20c9133c88d61d849e3ef47a4656b357634e47b7c7565b63049303d244225a07c9e665fad50edc5a2c9c60cedd3ed330bb680ac36957cacef', 'united arab emirates', 'khor fakkan', 1, '537291'),
  (732, 'Sheikha Al-Remeithi', 'sheikha.alremeithi957@outlook.com', 'scrypt:32768:8:1$0qsXestYyez8iUQG$5bcb62bad1f147c5f58ca71513e5b1d42d75b02bdf9d4b90087bf7b0452fdaa41bc624cf322a58f93d1cfded5dd15745b513769a24f38ccfb87c7c8736700614', 'united arab emirates', 'khor fakkan', 1, '422668'),
  (733, 'Khawla Al-Muhairi', 'khawla.almuhairi10@gmail.com', 'scrypt:32768:8:1$R4jyFjad5VHzBg87$bfe6d802620c7fc6ca5469a0fcfa78b9333ef428297217632517182be7b6455c4cae7bb700067314d033d237fcdc3eef3738ac4e60608757896f807ef3d8f21d', 'united arab emirates', 'manama', 1, '328312'),
  (734, 'Arun Menon', 'arun.menon@gmail.com', 'scrypt:32768:8:1$C5bOurkwtIFazBaE$651033d6a66c2f2cb5bf02807987f74047b7e5b4a2d4cd28213c93b2226e24991df80babb599fd5b2e99ca9d10bb3d3bf2c0a4ef6d0eca2073e4f2142e1fb427', 'united arab emirates', 'manama', 1, '627180'),
  (735, 'Faisal Al-Qasimi', 'faisal.alqasimi858@gmail.com', 'scrypt:32768:8:1$9DSge6PnJkkUzz2Q$8b2648e219f704544a484b6a8e7cf42abd0f4a6172f9231037611741f74f11a25d1679864b2464d3f9c6ad7613817de04dec34c66334ac30f91df3ab461c8fc6', 'united arab emirates', 'masfout', 1, '110162'),
  (736, 'Maitha Al-Remeithi', 'maitha.alremeithi1271@gmail.com', 'scrypt:32768:8:1$ccPhEsLaVAKdj9RC$ed4f829c21f1ba3963e2971ac3ec5a1b5cabb376b385a2e4cc31b400ffbe7ab161dc1d3d3c9832fd6fbf7de6402daf47e2f745d5a0c7db0f81960c034a9a3020', 'united arab emirates', 'milehah', 1, '874073'),
  (737, 'Zara Ahmed', 'zara.ahmed583@gmail.com', 'scrypt:32768:8:1$xAGM6oKixoS2pkgJ$1eac5db3e6e9f879fa19251ade3908451b3f2cc16c7ac2802796804d842450c7cfd15a653c80997ecbd792407940e0645a90b16dbb9b9ee523cf1193d259b151', 'united arab emirates', 'milehah', 1, '625906'),
  (738, 'Yasmin Abdelrahman', 'yasmin.abdelrahman@gmail.com', 'scrypt:32768:8:1$kpIk0hvGXWXbQkix$2459621aad19e8b30a5efa8ee65857c442cc178ee7d50b11df5e2157a3297fa9573f387c8ef269db585c68818fc1bebf332ec2e8ce345630620779561aefe134', 'united arab emirates', 'milehah', 1, '220890'),
  (739, 'Hassan Al-Masri', 'hassan.almasri@gmail.com', 'scrypt:32768:8:1$255NnsBVWvyZQQGV$9334306f80dc75ad7690b660876ca3ad8c9b8d4b80de156ed93fc1231632d74b8036cb4a266446b5ba681448f516acbab8ece2aa6705b29c25fe3d412a9b4f92', 'united arab emirates', 'milehah', 1, '981444'),
  (740, 'Karim Sabry', 'karim.sabry@yahoo.com', 'scrypt:32768:8:1$wiFFiZM2R7AIeBFX$6d8277f2edf70d6f2f6a03b7d21550d7f6073913e4835c2847341821ce5e9216b49b48fb845c1992469214a81af3913255b47f4e36d82839666f209ce272db47', 'united arab emirates', 'murbaḩ', 1, '869737'),
  (741, 'Rahul Sharma', 'rahul.sharma1454@gmail.com', 'scrypt:32768:8:1$182dzUtbgZ71Li4z$206e3bb8a799c2608d4f95a4be8942b6832d30511e78acfc3ef38f970d61840d0041e53f2290534bc2ec803b4db2c6515f910bc8d4d4bba16a653a5adeceeb61', 'united arab emirates', 'murbaḩ', 1, '431663'),
  (742, 'Sana Qureshi', 'sana.qureshi46@outlook.com', 'scrypt:32768:8:1$1Zpa4qLGtC0S3Cef$7d445296d88acff386eeeb6d832a7abc28e6deccffe3535280c223b7c6557f70f57ca3a63571abc1e5742f1cb1d3695e032745f25e55334d621b315fbd96e4c2', 'united arab emirates', 'murbaḩ', 1, '481075'),
  (743, 'Mahmoud Fawzy', 'mahmoud.fawzy51@hotmail.com', 'scrypt:32768:8:1$4mJu0JwGMATeJZg0$d1a35c2dfabab23fca4eec8795a2b3d39e49c27ece0d4c20922ba18a2dc6f148ef5c248ce60740288995fb26b82fa3efd2575dbc098c2de5a69f78f75278b637', 'united arab emirates', 'musaffah', 1, '545015'),
  (744, 'Thuraya Al-Dhaheri', 'thuraya.aldhaheri62@gmail.com', 'scrypt:32768:8:1$2Gj2zoMWdVd1wNuH$c1af5908fcee59c56205005decedfa44c2170e4b5a130277e82809483ba985ace3a44d8c38d643fd77f691552fc9fa46f6023e78d791a9d0e57a10508d471795', 'united arab emirates', 'musaffah', 1, '998996'),
  (745, 'Ali Hassan', 'ali.hassan1335@hotmail.com', 'scrypt:32768:8:1$cdrznsx9MwCBXcP9$154b521f6f40de3a903b524bd2ebdfdb79b830bdb27217520bd5600aa15d8a718cc1f5de09e7d1d9e4aa2108539dc13b4a5ebc30c03016be195912fe5e472c58', 'united arab emirates', 'musaffah', 1, '420808'),
  (746, 'Nour Mostafa', 'nour.mostafa@yahoo.com', 'scrypt:32768:8:1$E8rug585Rx2DmcVe$a179923326c269f535cffdff42defa84f8e2b6b222ace4f71aa149dddf7066b991c590c62f56ab830a726560df403b3507a836da5ac9db170013299f3ec97abf', 'united arab emirates', 'muzayri', 1, '818032'),
  (747, 'Majid Al-Marri', 'majid.almarri@gmail.com', 'scrypt:32768:8:1$UgFepiWwp0hKf4bk$6d788c831b71b0be2a61ec7fc3a27c71a5bc112af1477a0fef13e14b904cba274994be31ca84ae5c808e415d595f9bf1f51db41274fa89bd9379e37c866e0be3', 'united arab emirates', 'muzayri', 1, '408402'),
  (748, 'Rashid Al-Falasi', 'rashid.alfalasi63@gmail.com', 'scrypt:32768:8:1$bj4ExdTbAJIdz5bc$487324ee82ddf3250d7218507ee87fc83ef55c9b8a812a4ae6c102cab849cb5ae780076da31e87307610aa3923c2413e517b0b8f8b470ba264236d0001d4a631', 'united arab emirates', 'muzayri', 1, '564212'),
  (749, 'Dalia Suleiman', 'dalia.suleiman1411@gmail.com', 'scrypt:32768:8:1$nYGfFblZitHxNPqJ$4109d84b183eeefdd503e7d1d2076012b4ff4a74060d86de24f8e11473836ae41301fdae1db7364231b67d21e82df91b9dfba9129ed083d3d62226bb8945d86a', 'united arab emirates', 'muzayri', 1, '320269'),
  (750, 'Georges Saad', 'georges.saad5@gmail.com', 'scrypt:32768:8:1$N7sk1PA8ftdzmhhP$1560ed357dfc760774834b0e2f0a23e82a69fb5721710803cea116a416340e672a7be00301e3b2b9112ba21b91eb6714e70426835eedcf34bd26847fea786292', 'united arab emirates', 'ras al khaimah', 1, '822943'),
  (751, 'Priya Raghavan', 'priya.raghavan493@outlook.com', 'scrypt:32768:8:1$LPV137zsrjIxLgwN$9c766616905eb4da35c569b4d33841ea05a6bb2d92047fd62197c1b7bfe4823d67351050197edee661f94140b5be28f5615047f0b99274c6a04871ce77b3513a', 'united arab emirates', 'ras al khaimah', 1, '241803'),
  (752, 'Ali Al-Zaabi', 'ali.alzaabi22@gmail.com', 'scrypt:32768:8:1$eNUPw1LrfLJhzcpp$4f843058677d8368a690910f13217fd608a23c2c124d96ad70167a5d15caa6d36edcf4cde278e6e35fb1e2781c75f4c32a321fc4039aff818b64f15a80f80fef', 'united arab emirates', 'ras al khaimah', 1, '097754'),
  (753, 'Sanjay Pillai', 'sanjay.pillai@gmail.com', 'scrypt:32768:8:1$ByQeNCQ7b6J1osXY$52df5e24cf324d5706f2b1b98916cda9dd331a7959a3bbe186835c8457050d0197d65a638f82e6327e99df780c04cf6ab6d784b11542d472266eba81e7f196c7', 'united arab emirates', 'ras al khaimah', 1, '279016'),
  (754, 'Sheikha Al-Zaabi', 'sheikha.alzaabi88@hotmail.com', 'scrypt:32768:8:1$09F88diKuc260GNQ$8845f7e940ac26b6d342bb01cb6ab95ffa4ee5c3ddca74c05e1d583cb948d221a3125153a19e3847cc9407bbc946ab1ca97ac0985014f7ae94d40e8015892e37', 'united arab emirates', 'ras al khaimah', 1, '396176'),
  (755, 'Khalid Al-Mazrouei', 'khalid.almazrouei@gmail.com', 'scrypt:32768:8:1$WqqlMiK7cz6NiwpK$50f067c5c4eea726b79d0a59e8f9291ddcbce0535c77206e29d39ba945f62e25de02bbd9edf71c79a48c4a19975537c871961f82bab931e9ab06719cbb4adc21', 'united arab emirates', 'ras al khaimah city', 1, '087424'),
  (756, 'Zainab Raza', 'zainab.raza706@icloud.com', 'scrypt:32768:8:1$p8PVudfaXEJ9dApt$6823a47d9a8d2073087f4726fec77e9b821c6ea63f8b4c07a6217fb650b7ff28e64c43341c6f3a8160528c51841fac6949500e9f698a4205ce8b9856103ef510', 'united arab emirates', 'ras al khaimah city', 1, '629454'),
  (757, 'Amr Eldin', 'amr.eldin@gmail.com', 'scrypt:32768:8:1$vPuRc2Nk6sOoVsbJ$ae2b84042809ba66822fa9463785ad2423cd890dc40022efc9fa77f3536cfd88cb9b2a7c24ccc60afc0298b012b7630f7500e2488c794386ec1f647f359d12f6', 'united arab emirates', 'ras al khaimah city', 1, '811661'),
  (758, 'Bilal Hussain', 'bilal.hussain16@gmail.com', 'scrypt:32768:8:1$ilIK2CAgZGTLtKyg$935fd321dae3a7087762a0188e07e77f09d68092fa3207ea8e538ee4e89c5f91b24df1c9148dff242d44dc196e670d3966afa10cf7a779c12b2b24b6055a076b', 'united arab emirates', 'ras al-khaimah', 1, '357669'),
  (759, 'Roudha Al-Kaabi', 'roudha.alkaabi46@outlook.com', 'scrypt:32768:8:1$U7DGBVFGgPkPlWS2$cf2ab90f841faa807a56c2626854fdf43fd44d5ab29be847788896a239d253ee0dbfaf09e508eb8633d27d42a3800f13fee3cf85510f013da0711e3cea230f61', 'united arab emirates', 'ras al-khaimah', 1, '902863'),
  (760, 'Sunil Joshi', 'sunil.joshi@hotmail.com', 'scrypt:32768:8:1$DNME7YEfitDqLWEY$5f9373f067ab2e5378fa37febdd2b4a0be652c1581ec7bb4c6ae6e771ff40af451feae9e9bfc2b326ef3db71043dbf86b69fbd5bd873de80fe545c67944e9ac0', 'united arab emirates', 'ras al-khaimah', 1, '669698'),
  (761, 'Anita Rodrigues', 'anita.rodrigues27@gmail.com', 'scrypt:32768:8:1$00zw0U309cnRmrfj$5213c572589003a0b9abc8733d2aabb13bb5758251178df7af133882b1ce94a715be01b917beb84646ffba934829d7e99a970be36873e97fbc75632c19822b9f', 'united arab emirates', 'ras al-khaimah', 1, '827431'),
  (762, 'Carla Aoun', 'carla.aoun1066@outlook.com', 'scrypt:32768:8:1$6Zcb2RNHe6w5uJIU$863f061eedd15d1ac7546ca478551600294515ea2cbeb85275bda84214ab3177edf842e0f4852fcbac5de09d9202fecb2b69eaa44cbb9f0e8d1b6f685cd1235a', 'united arab emirates', 'ras al-khaimah', 1, '672942'),
  (763, 'Rana Hijazi', 'rana.hijazi794@yahoo.com', 'scrypt:32768:8:1$JBbkgko3AIi9Jiy2$6009449e1fd2b3b9c4a9866d99580de2027756a3d2ec65876815d65be4d235cde785e0596498013ab18113c22708c5312eb459078a675ed4cda4984312686844', 'united arab emirates', 'reef al fujairah city', 1, '975976'),
  (764, 'Nadine Karam', 'nadine.karam8@gmail.com', 'scrypt:32768:8:1$06lYiCVMDZnQiaqS$de490bf181228979347035d8c46083f04c57867d1aabb52647bc32ef42206fc585c8471e9bd1b2bd752d6c9bdd19217efece0e5aebb619bbd66547ed671a76f0', 'united arab emirates', 'reef al fujairah city', 1, '193238'),
  (765, 'Joanna Garcia', 'joanna.garcia@gmail.com', 'scrypt:32768:8:1$CBbBAJ8LsckkpKWz$01480b4b4a75105fb4aa23739df7ccd41250873db3dfce5fa5f62c3eabab4c3555d13f272dcccd6a06e0ae3f10e48c550d00f57231656e2c68f7f78591bb9a38', 'united arab emirates', 'sharjah', 1, '377807'),
  (766, 'Mohammed Al-Ketbi', 'mohammed.alketbi11@gmail.com', 'scrypt:32768:8:1$NGoe1KqxKWCvuU2b$eb7ff598328ad239e36cdfb63fc83ad0c582ec4a1f2473ee5f1517074ea08bd99a9ab1be3838b25915e552d4e20034bbf6ba1cc6359d6351f480c11b02597e32', 'united arab emirates', 'sharjah', 1, '145333'),
  (767, 'Jerome Villanueva', 'jerome.villanueva198@gmail.com', 'scrypt:32768:8:1$TQON481XQ4C0aO5p$a18a6e5b214b9c010c18bcca5547ce86884673961ad86b0f82b16e092b58f14dae01e24cd1e4154a2a09927271bd9c69818efe81b01034bb172a0af371d8d849', 'united arab emirates', 'sharjah', 1, '247313'),
  (768, 'Yaqoob Al-Balushi', 'yaqoob.albalushi79@icloud.com', 'scrypt:32768:8:1$u8ReRefg8Qu5lQ0r$ed84acb0962f7af29bb9c206abab580d24d5d73e3c7f44ad03d53038e80438eb44654f8a07cc8d579d7aab7ac55f1009247e8d0aa2c9c6f5d862b9d873174707', 'united arab emirates', 'sharjah', 1, '377176'),
  (769, 'Ibrahim Al-Shaali', 'ibrahim.alshaali681@gmail.com', 'scrypt:32768:8:1$g1pahJsngXLeCy5v$e5db7ca0248c725062da7111e81e5486733926ff84603bfd1625761ad8c7e0978d9e9adc064a7d5fce641f9fb0fdc26cb36fa129e94ddcba3fe24abcf1d26fff', 'united arab emirates', 'umm al quwain', 1, '111205'),
  (770, 'Latifa Al-Shamsi', 'latifa.alshamsi55@gmail.com', 'scrypt:32768:8:1$2gNnS21v8P9CzEgV$bdc50c14e5e228002788079dc25ae5784b9d8ec4e320b69461b62ea66b9a86ef5d92f3ed61a517312e7fa1b17f173a74757bc3eb3be74879588722c0396d576e', 'united arab emirates', 'umm al quwain', 1, '843570'),
  (771, 'Mark Bautista', 'mark.bautista@gmail.com', 'scrypt:32768:8:1$HGQCJBOMZniuetNY$d56c27dd8e4b94a1a5231f8f27d1c211c536b0257a8524a1f31cd96633ef8ab711a6d8c340badb5a104c84082c5add7b411938a3d2a2120f37bb94434353578f', 'united arab emirates', 'umm al quwain city', 1, '855814'),
  (772, 'Shamma Al-Ketbi', 'shamma.alketbi60@gmail.com', 'scrypt:32768:8:1$bURgGGe4K57yJqM3$d092684da4ed23202911ae26e7308231a9d3af29bc99a1ee2f3a00a8ef9750b37d1aafdb700cd3c66e1667d98e64150029acba2c5f5ed12663d809ef6592d126', 'united arab emirates', 'umm al quwain city', 1, '460692'),
  (773, 'Omar Al-Matroushi', 'omar.almatroushi@gmail.com', 'scrypt:32768:8:1$HESO9WtnOTjx9b1B$e27d925de35f36e41c517c3aa80f85602df1c84c899d1a0ed88ffef3813a76cbee767f921ccb5c83c9b2dd8241b4376204dca33324ba0d4cc6c6550b8a08f00f', 'united arab emirates', 'umm al quwain city', 1, '451238'),
  (774, 'Mohammed Al-Jaber', 'mohammed.aljaber46@gmail.com', 'scrypt:32768:8:1$Md86yTXoWE2CwaUd$b24a2cbf79dec4c33dffb8ac3ac012e1f17d52044fe5c2fe839daf424181a0a41416715e8b8ca51ad86861277339ace9ed80f4dc841ab7bda6c962c8840df735', 'united arab emirates', 'umm al quwain city', 1, '673573'),
  (775, 'Faisal Khan', 'faisal.khan1910@gmail.com', 'scrypt:32768:8:1$Bsgvm9r1xKXar3Co$5966db2559d4bd12def3948b01f4a436c93e2cedd3fd8509f95859fab61027b91da4316ae5b6670faa582803d183e1077147a3c6dfaff8ac9e25ae9bbb7e55d7', 'united arab emirates', 'zayed city', 1, '127856'),
  (776, 'Juma Al-Matroushi', 'juma.almatroushi14@icloud.com', 'scrypt:32768:8:1$7nVbzO1HJwUAynse$b2adfc7e3475f70857b5e319a494da8171f2989ad6b7aedc178fc21bbd99d6fd9166fb14ae78ba8b7e0de68b05cf2ab9170c94ddc57c35738a6cc09a33ec0c55', 'united arab emirates', 'zayed city', 1, '313212'),
  (777, 'Mark Dsouza', 'mark.dsouza86@gmail.com', 'scrypt:32768:8:1$87zrcDAp7PVdj7I7$691ecf010b59dda8e97f75a34e05a8ef19975429b21874f4be2f22068e847b0d02c5c8c1b08ce3e6445df68be6d402fcfaabfe8dfa95b7a66d0775225a8355ef', 'united arab emirates', 'zayed city', 1, '158664'),
  (778, 'Suha Abu Ghosh', 'suha.ghosh85@gmail.com', 'scrypt:32768:8:1$FSx6INCsfDAOHfHd$cfca6e32c4ff2f96a47ca036b2ef3c123bad719df5ecca412470f2f8dab2c508eb30e484449d24d32d41b975c62e1a029a137b7e02c1904307ee9b5679eeff82', 'palestinian territory occupied', 'abasan al-kabira', 1, '253812'),
  (779, 'Mohannad Rabaya', 'mohannad.rabaya1174@gmail.com', 'scrypt:32768:8:1$9LptBOP8mfOG0Jpn$fe7de1b25d35c3af9e95f05e962ab9ec6b0fcd74f0b19b35bf832e9737de4c110f7a466be2709cc1ce22815a246ab526718c12f7a1e075aa4f68c8a9203a6ec9', 'palestinian territory occupied', 'abasan al-kabira', 1, '506332'),
  (780, 'Ramzi Barakat', 'ramzi.barakat@gmail.com', 'scrypt:32768:8:1$YWA5Lr6lb6IURvyR$6c5592ba95bac85c67e3f336d1c3a38cae6cc93cd563c3c53a3381c3258cd63ac47c8d247d972959a82afc2a20b1938513a66fa01d76e17901b98df74084fb23', 'palestinian territory occupied', 'abasan al-kabira', 1, '194848'),
  (781, 'Amjad Shawwa', 'amjad.shawwa374@gmail.com', 'scrypt:32768:8:1$L54kU97SMwB60yzU$3684ddb87738cd890b50baa443a2e228b46fc1caa6a16ad2cf14f336e0e7bc82ec6736123e3f5d4a8384bc4034bca31be8c76c3b3f9c2c7bd5488b6ba5ef30d4', 'palestinian territory occupied', 'abasan al-kabira', 1, '042350'),
  (782, 'Samer Daoud', 'samer.daoud459@gmail.com', 'scrypt:32768:8:1$p4rsWJdExJctR09R$d49ad806a26689f0dd41a1e3a1d5de5a259b892bd7cde1f717414374542df6b9620122d143563b8d870243fa208bb0300b9c25891e51f951d3efdc2e36435090', 'palestinian territory occupied', 'abasan al-kabira', 1, '162637'),
  (783, 'Marwan Kassab', 'marwan.kassab784@gmail.com', 'scrypt:32768:8:1$rDRyL6TfeIYylbaZ$18168647e2b7230f7f65c2f58a7c8458327695f7431338fb93e201ec7a91d5bc5635f7e7dbef5bbe433a782759e98d644dfcdb7784f3cba73b3d428f9d0426ae', 'palestinian territory occupied', 'abu dis', 1, '692731'),
  (784, 'Jamal Zaid', 'jamal.zaid@hotmail.com', 'scrypt:32768:8:1$tyoXNokJRaRajEpf$4a5cdab75965792a5a2f6fe2a5ec8d9278bdbb54e170f812fbe2c2cb4e8ed221df9f4894f7397d1f286ba9ce21cc842ebb87ec3698b4a2da195530478aeada58', 'palestinian territory occupied', 'abu dis', 1, '676343'),
  (785, 'Dima Rabaya', 'dima.rabaya@gmail.com', 'scrypt:32768:8:1$WPjrIcOER3HVoQaw$877b889d1bfe3222744e09b4475e5f6fd81974bc4c899711c1038ed4b74e6316a8fdcb7c9e81651734c6296d71afb4963f4b1618eedeab01b1b4793df98145db', 'palestinian territory occupied', 'al-bireh', 1, '308191'),
  (786, 'Ismail Asaad', 'ismail.asaad30@gmail.com', 'scrypt:32768:8:1$00rBR2oGM1YtgFYg$75407cdac57a792e6326006a077ed8fd96ee93da954cf94f9aee2f402bfc2304e4f2bd5b1edb563c77f6e2a6cd9a5254c1d6689ecb6b3878b4d142ffd84b0085', 'palestinian territory occupied', 'al-bireh', 1, '299768'),
  (787, 'Ibrahim Barghouti', 'ibrahim.barghouti54@hotmail.com', 'scrypt:32768:8:1$0ENrwbSDnA2Ayeek$3aee9502dee56cfda04e51f55890d551acf4842f5303ea9a0bbef14d3254c4a0665bafa0c3521c4a66c15e679293ba422f2b35424f251a3937b29142eea422f7', 'palestinian territory occupied', 'al-dhahiriya', 1, '900686'),
  (788, 'Israa Natsheh', 'israa.natsheh37@yahoo.com', 'scrypt:32768:8:1$PQSmj08low8GTLnd$3546b513a792c5e1782426f903652ad688ed9f4d5bb36a442d2d140bb272e811334fc1a9db9257d8d6c197b222f8ecb1f441f16aec12451a0b8419de8f145243', 'palestinian territory occupied', 'al-dhahiriya', 1, '480607'),
  (789, 'Haneen Salameh', 'haneen.salameh1@gmail.com', 'scrypt:32768:8:1$yKTmSYpXr3K4vqrE$9f23975d6834f5dacfff026d8c9bc7f667a648f34747bc9faf0c5d79e15f8409e5f6713c49b608179d246c47c65b1517ae6a505a020034afbfc673af7b47943b', 'palestinian territory occupied', 'al-dhahiriya', 1, '023791'),
  (790, 'Jumana Shaheen', 'jumana.shaheen572@gmail.com', 'scrypt:32768:8:1$95NxJDgRKgE5tJHB$3060174677f801011870bbb4365ef9e85452d11afaa5b422f739a60db924cc9c1b786ede7ce064216d3e20c5801885aa2c659b38db91000dfb4162ba1a0ab1cc', 'palestinian territory occupied', 'al-dhahiriya', 1, '806902'),
  (791, 'Majd Dweik', 'majd.dweik27@hotmail.com', 'scrypt:32768:8:1$TUGB3BWIG4nJrgef$07cf4c610c028ec647b5de2919bd19034b176317c6e383923743b9fa75fc54386875a0346eb9daec5398c5792e6c6f45e1309bf2e62f8cc7b5145e517cde62ef', 'palestinian territory occupied', 'al-dhahiriya', 1, '470854'),
  (792, 'Hiba Abu Shanab', 'hiba.shanab44@gmail.com', 'scrypt:32768:8:1$1iMlEhncBsgkzrZa$5abd6685fe9fb458116795c5cf4ddb7d210d2fb960717670e9161f35cc6ef90fe55adcb253b12539c67bfbd3d6f8708503013dafc766d0ace8e5bd5a0974a92b', 'palestinian territory occupied', 'al-eizariya', 1, '241709'),
  (793, 'Nidal Ayyad', 'nidal.ayyad@gmail.com', 'scrypt:32768:8:1$FTpxvU3dreW3CJPI$2c57cbda3396b944170e4860b3704f712aa17502713d22b316c87d7b0040af929c26646fc127feb55c3aff31ac561238bdd07a2868c4a77de7f51e9b04a24a5c', 'palestinian territory occupied', 'al-eizariya', 1, '504161'),
  (794, 'Karam Asaad', 'karam.asaad733@gmail.com', 'scrypt:32768:8:1$zHucBU3cCbRXHeN6$70b15db70ea89040c657d66a14e4bb18f18242902894a534e2d78402dc06c60dc2e9ea928a6df854f14b1c2e76c92f069677c18f42c4d7c1412895b118d14e3f', 'palestinian territory occupied', 'al-eizariya', 1, '139153'),
  (795, 'Khalil Jabareen', 'khalil.jabareen41@outlook.com', 'scrypt:32768:8:1$S3JKPH65ZugJXhzp$9a829dbb889d2120e59f34c4d8495c32a8d5e9b83fb7ec5fc92877f9a6caac1055d83010238e7218b21342586bd4660e3ce07401a5db55bd1b1c493ae0a2eab6', 'palestinian territory occupied', 'al-ram', 1, '935465'),
  (796, 'Abeer Abu Ghazaleh', 'abeer.ghazaleh41@outlook.com', 'scrypt:32768:8:1$ujcmx02gFSRctgL3$2e5d105c4cbf53784b31f3a2359053bcb272e41ed4fe647c37acc3186aa0cb67d926d7dedf7ce5681f0377e85e17449f8e7cebe23589a1db6669d5bf36197e0d', 'palestinian territory occupied', 'al-ram', 1, '272310'),
  (797, 'Hadi Kassab', 'hadi.kassab@gmail.com', 'scrypt:32768:8:1$IU3CRSZd9KMzrUTX$2ec0ad777f443363f6d4f9250a53d4ee4502fda3578adc76f7eea714cddd45367d0a5b30c077eed4714ab0f58f6878c0d752fa71de5fa0fc1af8eb3e44308fd1', 'palestinian territory occupied', 'al-ram', 1, '470153'),
  (798, 'Mamoun Hussein', 'mamoun.hussein1109@gmail.com', 'scrypt:32768:8:1$gBJgstg5tO8k8HKy$85f6f606ae1ed0e7e0bda6fd1900412a2c658350349f108534fcfe11bd22fc047de782dfd0ed40a7cbee6093e6ea2617627d6925de846425b675fc293e3d69ee', 'palestinian territory occupied', 'al-ram', 1, '681756'),
  (799, 'Anas Tamimi', 'anas.tamimi@gmail.com', 'scrypt:32768:8:1$HybYBYMGSI4fdRv0$2c3ddf6ca1fa80ad8368bc085dc419220344738b6379a8b282cb62bf11154c120d38112537399f101726b2f7cb366d7c952ba336d0337046c89718e0781a801b', 'palestinian territory occupied', 'aqqaba', 1, '233402'),
  (800, 'Yara Ghanem', 'yara.ghanem292@gmail.com', 'scrypt:32768:8:1$ZMGCBzlt0E78GSOv$cbabae17d4668bb89faea2f220a7e044926be057f92172f805c1dc1a6d7d6738be3331683641b15a8bdd9fd8e5c9d81070a34668e048654b5ea4771b39b57349', 'palestinian territory occupied', 'aqqaba', 1, '635767'),
  (801, 'Nour Daoud', 'nour.daoud544@gmail.com', 'scrypt:32768:8:1$FBdTNwBAPHT3PpM3$10a7ba58db8030aa5c6575a83c156ee61abd8160ef440a6a7b367d00b31b4576c97a1d46afc2e9033b9153d588ac03caf41ae14296d698d1d683b742616869c0', 'palestinian territory occupied', 'arraba', 1, '221350'),
  (802, 'Hussein Awad', 'hussein.awad@outlook.com', 'scrypt:32768:8:1$haj7HBNzHhEuPp5N$6a9a794db82ddeeda5e286ca4acfd609ac1e9621b09a20c03972d13660cc243f4332f1ebbb1646994e6726d81708a80347b992c8028282febd13786f8c2760b7', 'palestinian territory occupied', 'arraba', 1, '408069'),
  (803, 'Nabil Shalabi', 'nabil.shalabi78@gmail.com', 'scrypt:32768:8:1$HYtxqaUa9K9LzaXj$2e82902bda394e0c78219993d7422bc89a2277b93c08a0f361350968e191639580e9fdd606043e0241a91cd37d73d4bd182b4d4119b6260f05f84ef6bd986717', 'palestinian territory occupied', 'arraba', 1, '648859'),
  (804, 'Salwa Khalil', 'salwa.khalil1036@hotmail.com', 'scrypt:32768:8:1$qOQxBsZblrTIbAfX$d1890874cb6e65ddc3380f2493ce9a6792fd15d7584857ec53d9df63e17d3782ce3e8f1c35f41cdb85409335ee9d23ac730e443d97a4e62e72c61a55ce993768', 'palestinian territory occupied', 'arraba', 1, '958558'),
  (805, 'Aseel Ayyad', 'aseel.ayyad@gmail.com', 'scrypt:32768:8:1$gw4VEuh2AHt4iKwl$ad309814efbcd32bac545d8500020839c27f3305bd204d16a4bd790f069f1bbe05e8e7c53bf9ac515f839dc34202edeb205a563e1f09b0aec4c53c3bb9c3c0bb', 'palestinian territory occupied', 'arraba', 1, '064078'),
  (806, 'Diana Daoud', 'diana.daoud@gmail.com', 'scrypt:32768:8:1$pvtZApeKJV7O7IXU$65878efd3c03c6ded9255e72b099cde1f59f42248fd06311721d6e2f69fbde940acf982dc937518959de2c945abfc26ed895c110c16ac9c33542612dada422ce', 'palestinian territory occupied', 'azzun', 1, '276900'),
  (807, 'Tala Barghouti', 'tala.barghouti76@hotmail.com', 'scrypt:32768:8:1$3PRLWlKSpW2ehKYC$89731a90e94c24e06f62f25ef37e53c5202d5a9bfe083f9ca4f18235f03e0f724f92e9d3a56447e346a1fcd3068edd8b52cb86b89ab9a19fb2a2c33a75ba4150', 'palestinian territory occupied', 'bani suheila', 1, '799467'),
  (808, 'Hanan Shaheen', 'hanan.shaheen1809@gmail.com', 'scrypt:32768:8:1$8unT7HLCfB9wF3gq$a96f4237ab9226277e8b2fca5f8e9ecd7826daaf6d1b7bd63880045e16f538c1c9cc28618b1088f6120f450a3428842728ffe953b3b952d27821db0f3fc2525b', 'palestinian territory occupied', 'bani suheila', 1, '175110'),
  (809, 'Taher Zawahreh', 'taher.zawahreh@yahoo.com', 'scrypt:32768:8:1$7bSOXJIPGDmCrbY6$32d502d64daa50986d146fd746e8934a88b3b74dc21fe93616d36a73882b52961077851471d230a975ba526b2faf2e2f2580f44a9d93afc90d719ff4fb456f7f', 'palestinian territory occupied', 'bani suheila', 1, '331811'),
  (810, 'Sari Mansour', 'sari.mansour@outlook.com', 'scrypt:32768:8:1$fJ5MdEXwWmRlxqfp$5b712711b16af5e5e40bfa546a74bb89440ff8ebce203620bc6d1de05fb35d6118ffb1467701ce8e0cf5b5c3b7950e7b1e27a3ec7d2b91774eeae55d834fd54f', 'palestinian territory occupied', 'bani suheila', 1, '982957'),
  (811, 'Rashad Fares', 'rashad.fares@gmail.com', 'scrypt:32768:8:1$L0DdY2A9XtF0pffx$730e7be19f42ca4d75f89db319875cd8a1b1db0de91f55e394d4bec3ca99212ab2ad4701df0fd6745afc460c2acf220d20d4e9ba2dbd27d670d327dfd9a9d4ef', 'palestinian territory occupied', 'beit hanoun', 1, '282079'),
  (812, 'Ghadeer Zeidan', 'ghadeer.zeidan575@gmail.com', 'scrypt:32768:8:1$nT7GNEkDwHyVMf57$3bf270b756a049e9bb6d87c6fa8a7855a8db1c74dfe6b18951eab022e0dfeb8be55b1e5a1e21c8cab30f57bb8bc9fff19cb811c740455476155d5574cd63bba7', 'palestinian territory occupied', 'beit hanoun', 1, '406166'),
  (813, 'Ghada Awad', 'ghada.awad@outlook.com', 'scrypt:32768:8:1$AwbJbJmGYueHcjpE$8883ac67428c9a5ae37d462d00758fbff8a13fb2b1f6c910f9a23a2569efe0de8eaebc733bd02cac999eccae60c995e9829261235cdfabcfcf2ff7714540ddda', 'palestinian territory occupied', 'beit hanoun', 1, '642862'),
  (814, 'Bisan Salameh', 'bisan.salameh@gmail.com', 'scrypt:32768:8:1$vi9l8IRmoEwemBrq$64039eb8d03e0f832baf556a64cdd0d30b2b7b2dd23b965cb8b82d57e1e86882f70b052f60b9159457dc85f6907cd2abe4c2bca4bb801bcc33086206ced20321', 'palestinian territory occupied', 'beit hanoun', 1, '947705'),
  (815, 'Jihad Aqel', 'jihad.aqel64@gmail.com', 'scrypt:32768:8:1$fGiaJ26WuHVKYSTq$0669fe95ae43a3dbf8374dabaeae4223456f428f72a3653c1f18aa6caea813820a1b2c4adf6518e4c5fd79ed729c563d01c1eafeb335c43571c3bd4e88f4ed6c', 'palestinian territory occupied', 'beit hanoun', 1, '878739'),
  (816, 'Hazem Jaber', 'hazem.jaber@gmail.com', 'scrypt:32768:8:1$XNrtbEjOAXg0fY2H$d512bb2f76431959a85392dbc891a6716837550570ce2b51d283a5fb14bdae602fd8d2069ab5c6ac376fa4abb2a1733ba98a62eebd37115b864970ae5e0bda61', 'palestinian territory occupied', 'beit jala', 1, '355477'),
  (817, 'Nadine Hijazi', 'nadine.hijazi906@gmail.com', 'scrypt:32768:8:1$ufVfGB9CkXHSvMnA$8511a78b7d701059a40cf8500bb667b59f9b2d75c4a9145733dbae646377ebd0b47307c2d0c440421d9626c1146d2c157374e8dc6623f3ca0cc54b21e7f3ac2b', 'palestinian territory occupied', 'beit jala', 1, '941862'),
  (818, 'Tawfiq Hammad', 'tawfiq.hammad69@outlook.com', 'scrypt:32768:8:1$Cv965JFzAQta6S0T$1e7f0a6817cc3fdf36f9ccfd1c78580c3b489f082662257deb79a2d2361f3f494abe166efdb957d2451b5c6e950a73339697f8832e8139766e0534c71d88044c', 'palestinian territory occupied', 'beit lahia', 1, '564821'),
  (819, 'Lina Abu Zahra', 'lina.zahra70@yahoo.com', 'scrypt:32768:8:1$UAO7WtKSpP4QhAdn$89408042af0a5341cf2d6a7e7e1f6ffb2a761089723af1fd7a804310c1f8668119244f07d6645f43ffa8e6cd0fc840a1ac6c041869022dcecd374e87bccbe835', 'palestinian territory occupied', 'beit lahia', 1, '369650'),
  (820, 'Basel Khalil', 'basel.khalil1342@gmail.com', 'scrypt:32768:8:1$DMb1KuGnut0A0ZQ2$0c1748757c610a00369586ec5b5af5f092a70a60b3e063ac5e744be7bc96f855ea5c5a44581c43973190006546288038f5b3c6306bd7bcbf5f43b681ac851e3b', 'palestinian territory occupied', 'beit lahia', 1, '932281'),
  (821, 'Manal Shawwa', 'manal.shawwa4@gmail.com', 'scrypt:32768:8:1$wcxvTWciJ7LO2YwB$7e92b50cd199a2d1b563142a01cd70a225ac580900324f0d689cc2037d7ac7357173dfe29dde11b54870e0d8624ce6db59adf1f591e725474e81dba7ad1bff78', 'palestinian territory occupied', 'beit lahia', 1, '716716'),
  (822, 'Rasha Shalabi', 'rasha.shalabi54@gmail.com', 'scrypt:32768:8:1$51IhYGsPji6lwJzl$2ab08ca254e9bc7071e0691747d2c66884dcb2e217a917c2533c3217941adc611bc57cc0e3766be740d81cc41a48248a93e523828e9524069d6ced23003be9a2', 'palestinian territory occupied', 'beit sahour', 1, '256971'),
  (823, 'Nisreen Nasser', 'nisreen.nasser1911@gmail.com', 'scrypt:32768:8:1$D2ZHMOmJhH6i5Me0$1abcd1df0d0f43c27a8acd28ae9f7b05b157379c752fc25f88c3b6b16df1330613b1ec0fc825ba52b00d6a2a0f9d0a0e038597fb959ba5783639269b20391e1a', 'palestinian territory occupied', 'bethlehem', 1, '041602'),
  (824, 'Samar Odeh', 'samar.odeh47@gmail.com', 'scrypt:32768:8:1$9z9otK64gvsy4EvQ$2a1daf280ac986b2a65546e496654ecb1136f426a2345a39346c6af20a75779538ef7bb778b47a153c1f82d588c4bd9b2ff886cd0e057a8320c60575da8c323b', 'palestinian territory occupied', 'biddya', 1, '348073'),
  (825, 'Suhail Jabareen', 'suhail.jabareen54@hotmail.com', 'scrypt:32768:8:1$E4HhYVpalUfa4BdG$70456846d6a970997114371bd80447e83d40613dcdcbdfdbd38e14d58438f22b69090812f32ac3bbad8b3de218c343ca29c431e28ec51097a1ff893c6245bed4', 'palestinian territory occupied', 'biddya', 1, '288968'),
  (826, 'Ayman Rimawi', 'ayman.rimawi21@yahoo.com', 'scrypt:32768:8:1$CLRs7R4nypVdcMjb$1a4cf69f1dac2545e3b28983dfc2ebd7d5e22ee8465b2ae0f8f710fb0554e4b8342554c8e6dd88a9c57256c3eefdea89455c86123602b12b1b5451c2f712dd94', 'palestinian territory occupied', 'biddya', 1, '181539'),
  (827, 'Layth Ghanem', 'layth.ghanem@gmail.com', 'scrypt:32768:8:1$7THTLqt9dWKAX9hx$2b38520a0dbd8203940465725bb4b15f2ced9b411dfd812b757e3b5c435565004b460c37b114acf2365180640d23f0dc3b08feccce192b71ba5516a8afcef0d6', 'palestinian territory occupied', 'biddya', 1, '076892'),
  (828, 'Qais Abu Rmeileh', 'qais.rmeileh346@gmail.com', 'scrypt:32768:8:1$ynF6N72Xfx6iiSkO$acc6494c6d3b4288344d305974b99056be084f10d9efefa2a55f6d324c7170c5cafaa7d3a8206c618e6bc8df80b82aab1b27360e4e9c0df85e2b5a17c88ecaf9', 'palestinian territory occupied', 'birzeit', 1, '303470'),
  (829, 'Sufyan Sawalha', 'sufyan.sawalha1228@gmail.com', 'scrypt:32768:8:1$53MpPmSAYZ7OsfFU$52c8b7e1c1dee83a4e89ebd0cd7f35e14481f6df751101b2eb78eac3e1aea81a03e6d77fd0b2e18044b27c0f9c01b836b1da3d721ae963aaf6a362db1d4e5df8', 'palestinian territory occupied', 'birzeit', 1, '275457'),
  (830, 'Tamer Salah', 'tamer.salah@outlook.com', 'scrypt:32768:8:1$2sdPCgP04ngedVFF$17b6ad654fcdd931eb651f88e80ffcea1a1bf13d12844517d4e49bbbade35df0f6b10e7a848fc6d60a13e20b257a6ca87e8696b97f3ee90a96ea1aac6bf5db4a', 'palestinian territory occupied', 'deir al-balah', 1, '578510'),
  (831, 'Nasser Abu Libdeh', 'nasser.libdeh@gmail.com', 'scrypt:32768:8:1$F3ZErdh3wcb5lp4F$1d2122c645f5a123a5c7c1f5dc37faa054f7ef283ffaa1d439933660290aa845e2762df22892b85948773935336eee9de6545aa9818ab75f3827fec06df7a2cf', 'palestinian territory occupied', 'deir al-balah', 1, '452533'),
  (832, 'Muath Amro', 'muath.amro@gmail.com', 'scrypt:32768:8:1$KjWiQR9mzliR2VIM$665ccb36e9fb8e897fc00fd71fdc9dd08791fa62f3ef18337652ec5efc988f2b1c314c12b62f4f8d2cc8c1cd049f506be8f523aa38c8bf2c8026b69418f39d88', 'palestinian territory occupied', 'deir al-balah', 1, '584266'),
  (833, 'Duaa Jaber', 'duaa.jaber1859@gmail.com', 'scrypt:32768:8:1$1oEprU5bJM5ydgHT$9b7a4393bcd69d16a3d0a38e3d0c6fc13bb7985a03dd1b8ea065ff6c95e5c0abea2f9742da6d5f72684fe867f51a9585f8d8cc066ca8d2b662f777287754ef66', 'palestinian territory occupied', 'deir al-balah', 1, '542554'),
  (834, 'Ammar Hroub', 'ammar.hroub1257@gmail.com', 'scrypt:32768:8:1$sv19oxt9a2pseiUr$b39430815e7647d441836b472010a06fae8056ec41abf9e554bf86565ac2c63e8b268753c7f600881257165bda77133b12ec5b09f7d79313680b544f0535885e', 'palestinian territory occupied', 'dura', 1, '498895'),
  (835, 'Mahmoud Shaheen', 'mahmoud.shaheen@outlook.com', 'scrypt:32768:8:1$X36GsB3JeWzerwKi$6748205623f3cbfec56ae2549af306c5c73cc407bbff62a8258890b627667743a78a3cd92b398c9450df70c782d868b5f8bf25bea6d9656bb8598c7e5191fa06', 'palestinian territory occupied', 'dura', 1, '575780'),
  (836, 'Shatha Hijazi', 'shatha.hijazi1056@yahoo.com', 'scrypt:32768:8:1$xFdlIcy8LB3K8bQT$856e1974736cd2b21f9676375be3b98df280e68ff548b9bee0c65cb17c78012f01b67247ce5f90110540ac100175806ba9f554ed1b5c9d359670258bc8b39822', 'palestinian territory occupied', 'dura', 1, '990563'),
  (837, 'Hala Qasem', 'hala.qasem34@gmail.com', 'scrypt:32768:8:1$uEs8hDZ6Cf6fodmk$1593625ab6c57d848939b0d1a2755fd87efab046a5c704b3146f39f7c8cb5f5c6d8a7fac02c256e2263a7df9abcf9e7a51d0dceb30844ca87a2cc8757e300a5c', 'palestinian territory occupied', 'dura', 1, '510945'),
  (838, 'Hassan Amro', 'hassan.amro1866@gmail.com', 'scrypt:32768:8:1$CCzn97xGVGrE7zuu$46491d4c1425213a10c819b8b535a990e7577ea4b0603e91d9d54738310de9e5f68a3f614c1c73f5d1d748dfa1964af96f61bc24faa089e4424370774b2d6ee8', 'palestinian territory occupied', 'dura', 1, '283713'),
  (839, 'Rami Salameh', 'rami.salameh@gmail.com', 'scrypt:32768:8:1$f5Qwb6fQBwtDoeEm$b9f209633cf1603ddf22ae7ff862c5500d3f1b88cf992060a31960cf04522ae4f43fbbe98cebde4e1c7f6489cd42c80c5d7a6a44f293cb44f60509c290fedcb1', 'palestinian territory occupied', 'gaza', 1, '755102'),
  (840, 'Issa Rimawi', 'issa.rimawi@gmail.com', 'scrypt:32768:8:1$0fk3vukRJOW0YxEa$79297de9b68af1f6082d17be0b92f73d61b33138f6ef73fd3409f2f39fcd2fb54ce2c102836994c8eeaa874caaab01ab5ab04d233a18bf46382a023a9be90c9d', 'palestinian territory occupied', 'gaza', 1, '039791'),
  (841, 'Hadeel Zeidan', 'hadeel.zeidan@icloud.com', 'scrypt:32768:8:1$qXYdv2xu4hzW7bZ1$9b1ce9fa10c701cdc45c066f0605ee52d9784f34604a90f78598479583525691816f0e7ce19da8a87681b7a121b4bf327fd828c8c635f4927160a5d1e3347319', 'palestinian territory occupied', 'gaza', 1, '145480'),
  (842, 'Leen Jaber', 'leen.jaber84@outlook.com', 'scrypt:32768:8:1$112bz87c1KTIxAV5$8e140a28ab849cced9e0e772bf47529ca9f68b98f3c11dc860721c01611938955f357e7a74cf2729c81bcba495dae4f2d616a2ef67dbd968db48cf4b5419f823', 'palestinian territory occupied', 'gaza', 1, '405639'),
  (843, 'Zaher Shehadeh', 'zaher.shehadeh45@outlook.com', 'scrypt:32768:8:1$A5VYs9Ty4aAb3f7P$83626f003f11463be61ec8a468a2d3b185c7135d5eded5905a49eaae6992d18b9db61cb1b4c798d6522c8dbec32750ace8cbced177477c7abfc7883d155696f4', 'palestinian territory occupied', 'gaza', 1, '175360'),
  (844, 'Hamza Natsheh', 'hamza.natsheh1129@gmail.com', 'scrypt:32768:8:1$0NZVuA244rFAGpJt$b9bf197cea1c0895b6454c8a2a7dbf3f1fa04c00d20f80e69ab86e7fe44c85f5fde689eee954e1b37bb044d6564d9637844e6bd2285c3a1a96b710b625b1217f', 'palestinian territory occupied', 'habla', 1, '082470'),
  (845, 'Raed Zaid', 'raed.zaid@outlook.com', 'scrypt:32768:8:1$OZkGUf347SlLgchG$826c98ccf969f3c7f7879585904fb4df3ae1405141de2eb0e4c34f3bd94a84c93e00cc467af6938d31a4049b7d2e10bd38e4be0113dd69bae94a45c77e41c537', 'palestinian territory occupied', 'halhul', 1, '954429'),
  (846, 'Bashar Karameh', 'bashar.karameh@outlook.com', 'scrypt:32768:8:1$SBkFmkz3KqxLPdTq$8f7cfb51367e408be32750159758ef065e24a9c9bcfaa5961d215156235675b7c31e481362d12441aeb47209822fa6c1b3c29d59289187b796d690d346757332', 'palestinian territory occupied', 'hebron', 1, '350252'),
  (847, 'Tareq Odeh', 'tareq.odeh74@hotmail.com', 'scrypt:32768:8:1$1ufemSF74uJ1hzxt$eb9855a54c66f43cb689300e6e16bc78ab83d52962b81c217414246401719316d213bcf26b7a4ceff8ec3bf110c1b99f012aa2eb7d6aa86483812c0869e93152', 'palestinian territory occupied', 'hebron', 1, '973155'),
  (848, 'Mariam Dweik', 'mariam.dweik1407@yahoo.com', 'scrypt:32768:8:1$slokmqIcVf8PIQqy$6bf6c60508385bfe14722acffdc76d9d75394b5a280d40b861c1f86e479fa18aea209c0619b4fdeda300ac6b2dae66e19a21286990965a73f40a8870e80b3888', 'palestinian territory occupied', 'jabalia', 1, '177752'),
  (849, 'Ahmad Al-Najjar', 'ahmad.alnajjar99@gmail.com', 'scrypt:32768:8:1$mPkC1PPKVBMscKdP$fb8201e57479c4b84cc89445b8b9995a6ccce1192c37022fc861773c5d93f3e740bd5c41d29be338043a7d1bab32734eca221937bd8d0f820ce191d6a56b1ed5', 'palestinian territory occupied', 'jabalia', 1, '675721'),
  (850, 'Louay Joulani', 'louay.joulani893@icloud.com', 'scrypt:32768:8:1$qcY8rKOfAAe2n4Ow$0f18b84408e2ae555b7879c1ed4a9d0ef3303b22b9c0c3521fab3e183cb4c0ccc96e989acab58b66d41c7b2af7b96f929615c120e74b90341c45e3ba365ffb48', 'palestinian territory occupied', 'jabalia', 1, '286460'),
  (851, 'Maram Najjar', 'maram.najjar495@gmail.com', 'scrypt:32768:8:1$q3Q7EiLgAaoq1a3a$cf3ce547d1a6d10c402ea146cb2f9ec81d528dc0a628388ea088dabfc9a9ef19fd15c547fae45a3fbcdb57fa527ac8630b55ef95a53eb5743313e2942aa99533', 'palestinian territory occupied', 'jabalia', 1, '288091'),
  (852, 'Sarah Tamimi', 'sarah.tamimi301@yahoo.com', 'scrypt:32768:8:1$obYjbeH8RTrejMr7$a43f0362018831d7c2b83f4d2467209549e8c9aacec9b3c77b5f036b7849684d4055d8147cd857d1bbbb415170f71967a0f627f899623431bfaf8813d1f39139', 'palestinian territory occupied', 'jabalia', 1, '984130'),
  (853, 'Tamara Rabaya', 'tamara.rabaya1923@gmail.com', 'scrypt:32768:8:1$aOxl0aqFpfpRq8z9$f109a7fe23bd8bed9fc58bf3ae013cf0bd5de6cab7564359b265462b310282ec47931074b1f33aec2f00d452249e34449ffe6cfc794b6caea2a86d023f135ee4', 'palestinian territory occupied', 'jenin', 1, '181559'),
  (854, 'Walaa Dweik', 'walaa.dweik1573@outlook.com', 'scrypt:32768:8:1$QblHmbXZ40iv6d96$b498938680f3d1e6ac61815af7d750d5886f62e2a402663bba79305faf9cfe322b59066d85fcc95e11a5ff43e6538c6eeab2fa1deb83a16b87ae047970e97d76', 'palestinian territory occupied', 'jenin', 1, '871300'),
  (855, 'Wael Abu Ghosh', 'wael.ghosh32@icloud.com', 'scrypt:32768:8:1$EdcJfGwrA8SDJglL$b6f8b090b51702117a3aa55e74002a2cbd85ba77e6e59b27bc2549eccc6d53f260f7451f262de1412f0d74dd10d5c60d5162f9564875d04be5bf0b738b7bdb30', 'palestinian territory occupied', 'jericho', 1, '380088'),
  (856, 'Ahmad Nazzal', 'ahmad.nazzal@gmail.com', 'scrypt:32768:8:1$2aty6Y544EoqaD9q$48bd93f28eac7d51b3db8e206f9a13fdb7c916e015dd90e44711bb8c83c94d6dadd0c1fbb04c48129257d4fae2fe9e4f82c70f52f2aa71f3ddd886f43c012d41', 'palestinian territory occupied', 'jericho', 1, '371269'),
  (857, 'Mohammed Sabbagh', 'mohammed.sabbagh@hotmail.com', 'scrypt:32768:8:1$k4NXSr2QbzKSkC7O$9e9d8c225a36efdc4372e693d216fab45e17d91cce10323d8eb4ead83b0fa7c2de900d6d8b7816e198b3d2a0f1307657bcb9c95bb4b1f5f313a3e5bf78686e6c', 'palestinian territory occupied', 'jericho', 1, '932805'),
  (858, 'Sondos Hamdan', 'sondos.hamdan@icloud.com', 'scrypt:32768:8:1$TJTGKqf5UaWQr0Wl$3f796a615505d1728ee9d44b63326fb201dd8e2d122f4816f8d9c8e7fc4cdaccd451438734e3955374f63f817391a4ca9cd4a62aa80197eabb6ce2a9eb8f7c2c', 'palestinian territory occupied', 'jerusalem', 1, '445301'),
  (859, 'Yousef Abu Rida', 'yousef.rida@icloud.com', 'scrypt:32768:8:1$cIn9R5ALO4fYHW3J$648bdf64878925d41704989c2528a09e079ed4a39a7efdda0637723859b949f08e5760465ed8533d0c634a54b04a4777b055d6f59c3a0f59ace23d1ba2580335', 'palestinian territory occupied', 'jerusalem', 1, '478864'),
  (860, 'Mai Hamdan', 'mai.hamdan@hotmail.com', 'scrypt:32768:8:1$pCx2fpkc6xeHa50U$17e8b482056f85854aa50abd83e8ddf23355eb1fec042ad0c2535571f26208a8a56feac4c29bd26b60ee58c72b50533bf922860aba9eeac979b7f771059ff10b', 'palestinian territory occupied', 'jerusalem', 1, '608922'),
  (861, 'Mahdi Fares', 'mahdi.fares397@gmail.com', 'scrypt:32768:8:1$J4jHTxmDx727N3Q0$08303c3af5e9c3f226bdb0aff00f92db0e18c34e413f2429ac7a2cf0ddd228f391b6ee410d82766be36d88facc727aef5c727570c2ec4d95a916e838db67da77', 'palestinian territory occupied', 'jerusalem', 1, '275990'),
  (862, 'Fadi Hijazi', 'fadi.hijazi@hotmail.com', 'scrypt:32768:8:1$0bqBP7kf4f5milwb$945c22eae7117aa14944ebc4c5c0dbade408e168ee7efebb8de50a9470369037c1cd0b11b8cf53be2e072989efaeb7320989c1a1e5e494c6bb2c0f017b0cca8f', 'palestinian territory occupied', 'khan yunis', 1, '985194'),
  (863, 'Saeed Shehadeh', 'saeed.shehadeh20@hotmail.com', 'scrypt:32768:8:1$3H66vbygFMlpDZuF$422a573cf589e8f230a1dc373dea0ad9d39fec87e6814832528dc5838160c34754e6598917ad98764f01f85c1991c6a7899174b22247cd4e6ed0bdc6979390ab', 'palestinian territory occupied', 'khan yunis', 1, '780496'),
  (864, 'Abdelrahman Sawalha', 'abdelrahman.sawalha20@gmail.com', 'scrypt:32768:8:1$8Xe2EeMQP0ccupsU$d7e95aaaa8a1bb2fb395c2ff8157508ff6e651749fbbaa3dc3d738ef195a1eb1067c351809befc419fa148d38b964b80712a73a202d2d9d989d61b881b542fa5', 'palestinian territory occupied', 'khan yunis', 1, '223923'),
  (865, 'Moayad Barakat', 'moayad.barakat336@gmail.com', 'scrypt:32768:8:1$lO2gEEg36vsr6ISX$03aee23cf340b8378349ebba05b500bd206cbaa9b9cddacddffcb50ceebaaad416bd0b6f38451ddf4823f467ff86caeda6f099c6ae464bc65422b65574e4bf14', 'palestinian territory occupied', 'khan yunis', 1, '276166'),
  (866, 'Dalia Al-Najjar', 'dalia.alnajjar@gmail.com', 'scrypt:32768:8:1$EyMTmHUNpi3pn42L$c31dea49aa8911539d7660854f266f090fd42c2fbb683ac2b5efc4fd2056fbee7a076af3e5cdeb7effb3dd7aeaeedf3bfa5927f6a9a9e43937f1feba997be064', 'palestinian territory occupied', 'kobar', 1, '886998'),
  (867, 'Wafa Karameh', 'wafa.karameh136@gmail.com', 'scrypt:32768:8:1$9abmkeYMawk0IDNW$a6d5f8c4124cfd607674d0aaed1b34d5d31ae59691989048cf2d0927de3d8af5e45377906132d50ce02e995c5c21a5cb024654fe4d88a5bb02abddad9758dacc', 'palestinian territory occupied', 'nablus', 1, '395523'),
  (868, 'Eyad Sabbagh', 'eyad.sabbagh@yahoo.com', 'scrypt:32768:8:1$HRzxRz9Qqrr1cksR$d6d5a4a7b74b81742cc51319a22e2b2a129578880bee9367a8bffe5f153fc54357570a33912eefe06207e0e744d1ae4178b9fb2ffc4bc2394dd46bc8b6a898ea', 'palestinian territory occupied', 'nablus', 1, '119045'),
  (869, 'Fares Abu Libdeh', 'fares.libdeh@gmail.com', 'scrypt:32768:8:1$oH4N963DmCmD5Ebj$18ce1d431e343716ae065818de6afc4ce5be8e4ebf70712a09dd85d821fd9a184d77ead406129637deb333ada3c4090b3ac5fab8cec629eaa121120696388d3b', 'palestinian territory occupied', 'nablus', 1, '508625'),
  (870, 'Khitam Kanaan', 'khitam.kanaan18@gmail.com', 'scrypt:32768:8:1$ug8ilItBUT4lAIsp$9ad488e734fd3bf6d4822a0d371c8204665eb2e16eddf387cf5c2c9a741cccb257e88b6b115222f070f20a3f123c02e2ca7838fd15d7dc2467fe7f832ec00759', 'palestinian territory occupied', 'qabatiya', 1, '241244'),
  (871, 'Iyad Nazzal', 'iyad.nazzal1849@gmail.com', 'scrypt:32768:8:1$lf7hqWm2omco6nQj$cba4f8506a0141651bb951eeb4df77db578b50b961412990bcef47cfc733f6bd6eb961e2735fba157d7dae71935bd553c8bfe2d0825ecc0a49ba017c479303e2', 'palestinian territory occupied', 'qabatiya', 1, '672448'),
  (872, 'Yazan Hussein', 'yazan.hussein@gmail.com', 'scrypt:32768:8:1$fRxXYWvEwf1B9Wib$0e6c6f293412125ec7dfa82d98c6927f4627431785ea3693a529c98310cfe9e4b8b7f5e15a2231b1e73938918a45f86050c1b5db1d66cbc98ef541288e6c0728', 'palestinian territory occupied', 'qabatiya', 1, '836861'),
  (873, 'Murad Kanaan', 'murad.kanaan460@hotmail.com', 'scrypt:32768:8:1$gCI7NTLbulvgKumW$15724fbaf259b34d41246eb70c337ea02dfd75af1ad076a56d1290eeafe42752f197a72506d887ef51c01823ac07d0a90daf85b5ead661762539daf00710bf15', 'palestinian territory occupied', 'qalqilya', 1, '677874'),
  (874, 'Hatem Joulani', 'hatem.joulani1492@gmail.com', 'scrypt:32768:8:1$zjhpnoUBOjOI3exX$6cdfec519ec68ee7bb7862c0ad4d34a856c3ec4a96c838183a98c73d2124f41b0d6c130d65beaad2a9e0c6886edbc2492a8f42219748bf7066682d2623a777e7', 'palestinian territory occupied', 'qalqilya', 1, '602359'),
  (875, 'Reem Mansour', 'reem.mansour1267@gmail.com', 'scrypt:32768:8:1$CJmOi6py19LQ4TnT$5c064f54b6e4e1df6f73ec17177d90d87f7138bb1bf84584ab480f660a281c8cb67d3289ae80b89592d88e814874244afe53f3892ab12473e2d5aa0d9564e95d', 'palestinian territory occupied', 'qalqilya', 1, '761951'),
  (876, 'Ibtisam Sbeih', 'ibtisam.sbeih951@gmail.com', 'scrypt:32768:8:1$NEIHisJ3D1Zb3F4E$0f19cf24db9a92907d8bd0b90149f410df92905f6b1df40db1132849ab8c9b2d57b66c26374c61bda3e04cd5b0a0dd7925ab46ca353c287f82ac43c7ac32daf5', 'palestinian territory occupied', 'qalqilya', 1, '799114'),
  (877, 'Areej Tamimi', 'areej.tamimi1470@yahoo.com', 'scrypt:32768:8:1$YB2QmLFWcwZtkjT4$247b6c52d8f02dbe247e1ef0fa3f18a5c0a6eae26a609023f079e719d79420d6241d523513fa5a72b2e826a0d4d0defd4855a2c9cfb1a4a4cf8274d10f871177', 'palestinian territory occupied', 'qalqilya', 1, '144391'),
  (878, 'Lubna Hammad', 'lubna.hammad@outlook.com', 'scrypt:32768:8:1$yqpobDIjDlq6QzUk$6e915f0a9818cd8cbbbf2a203e134feacb2469a39d4920fc8a68168f0381bcbf236da1e9cd14149eb150e3fd2d9ab1cd593a1cb37767136c1743f1e32e104f75', 'palestinian territory occupied', 'rafah', 1, '911521'),
  (879, 'Yahya Taha', 'yahya.taha@gmail.com', 'scrypt:32768:8:1$XA1AhFGiq0nWClMz$3a0f36993a81937e6815599ff43b5bb606e90a60c69cc243d537d8a449da46c146ceaba7752604e306abd802b8dc451b4b7a1e8a33917a7c87a01124d75245cd', 'palestinian territory occupied', 'rafah', 1, '327443'),
  (880, 'Rawan Natsheh', 'rawan.natsheh@hotmail.com', 'scrypt:32768:8:1$YIgRzXwUVnyXlSsS$7f3a485e2518dce69ef7d5898f0db1f12ff21f6d983549c3bba569f58f361a21ccbbe64724615df808c752bf79c25d7b4d4d977314a6760dac6ff67b7d73d0fa', 'palestinian territory occupied', 'rafah', 1, '684933'),
  (881, 'Lana Khalil', 'lana.khalil348@gmail.com', 'scrypt:32768:8:1$Sq4sz0OZEWFvq7eI$ea2739443e8b7807d4fb60c86db02e4a195dc11aaf63b5759070e731de9806fa6deabaf9462753d9d5a97ef0cf330e2cc503827e6bf98831396ef5bd804b1c7e', 'palestinian territory occupied', 'rafah', 1, '028895'),
  (882, 'Osama Zeidan', 'osama.zeidan121@yahoo.com', 'scrypt:32768:8:1$x5KIbTyj1YNuytlU$2b0685803e866b489ff5d1ad0510c999ad475457dff8dbb32d83ad96e5cdac774c4f9e4a95a865ec9c04584a9b9946e42ee4c90b7a15750dea6084f793661c03', 'palestinian territory occupied', 'rafah', 1, '479427'),
  (883, 'Mustafa Nasser', 'mustafa.nasser@gmail.com', 'scrypt:32768:8:1$pr784BJD4F3mO9EI$8e77a6c0a88a8a6f69a045828dc2cbca0de86062fa92997a3f16ea77ae0cf72c1b41bb571a3f72a9e101bedf61d45a64017962f8752e7d4e1710a3a7257fde55', 'palestinian territory occupied', 'ramallah', 1, '197442'),
  (884, 'Raghad Aqel', 'raghad.aqel@icloud.com', 'scrypt:32768:8:1$p06juyvTZICxQa67$7915b463f69c753debeba9d3cc2646f702bc4c0b2c6bce1c3e8ff9ff60c2acc5f3cb549d2b6a5090b6b0d58f4a0a091cdd160feb7141e06f8a5abebbc32f0cfd', 'palestinian territory occupied', 'salfit', 1, '169713'),
  (885, 'Alaa Aqel', 'alaa.aqel1527@outlook.com', 'scrypt:32768:8:1$hk2wqQOuELjQSIxH$63ab879579728f9487e8f6563d008de8509195fde6e722eba89a2483348f82cc9da2e89ef2fe8428d8134c4ebf79a70880dd7d40114959c8c65e59c215c77e0b', 'palestinian territory occupied', 'salfit', 1, '396438'),
  (886, 'Odai Taha', 'odai.taha1160@hotmail.com', 'scrypt:32768:8:1$bp0JUv4Nf6DQNBV2$c0d77a6d8e7ab2747606eeec34a8a64110ff8285e6f47601cd29ef32a4841d72afcf9b94d318644270c9f0e86000a3312c88bcdd865661fac1cfedafa2b58576', 'palestinian territory occupied', 'silwad', 1, '895871'),
  (887, 'Yasmin Qasem', 'yasmin.qasem1571@gmail.com', 'scrypt:32768:8:1$9LBPrZUAIKdMS1u9$df29a2af3dc72c29a257c73a2626914a6d7aa13fdd5430fc80ac7139f907789fce88aa9f7dd4c4459eb98b37f48fd0bb7024a7173cfafe02c1f832c43d711911', 'palestinian territory occupied', 'silwad', 1, '333087'),
  (888, 'Firas Zawahreh', 'firas.zawahreh125@hotmail.com', 'scrypt:32768:8:1$vuuniydWQqlfOMET$9beb096833194ae3dd9dece6a5f5ff000138bd4cec1800e2e43b2b22ea89198c14ce583817b5241be198600de921ab7cf628122ac86d3eb3c95021d271a9eda0', 'palestinian territory occupied', 'silwad', 1, '327671'),
  (889, 'Rafat Salah', 'rafat.salah1170@gmail.com', 'scrypt:32768:8:1$JX3gRO9hj7VNHGo3$6b8ecd2f7a230cd447929d169a7fdcabb1f50a7a165268108d965804bda337994210c086278a5a36a81366ffe4838900bdd940be030eb8a806be9957d15d1d87', 'palestinian territory occupied', 'tubas', 1, '674791'),
  (890, 'Noor Mansour', 'noor.mansour519@gmail.com', 'scrypt:32768:8:1$Yo3pq6XTDxRU2xJK$3a6e9d587b1e5f18eaa5a96b74eec64c4cd99d1856300bf48f5ef44490cfafd6c21cd78e8f1dff045b45b0a9cd14f5d2622822d6e5718bc9dc747ccab5f31c2a', 'palestinian territory occupied', 'tubas', 1, '819075'),
  (891, 'Abdullah Sbeih', 'abdullah.sbeih1265@gmail.com', 'scrypt:32768:8:1$kKcOplWGXFKspbDJ$97ecad2f5c0923385467c09acaa1a0e16a8c02a160b3184f6f5e92445804533cebd214f5a5cc88ba0460e9fbf2019ddafd8285a4097ecc5b09bb1f8c605c184d', 'palestinian territory occupied', 'tubas', 1, '830890'),
  (892, 'Jana Odeh', 'jana.odeh77@outlook.com', 'scrypt:32768:8:1$ZBfCm1W49nUWQsiH$11c5aa7adcce3e7fdd32e20942a714351ca8f3b07129b84fbe3933a2ef024609a8e08b5c5af6bdbba6ecd4d63e21cf227cf3b84e416878ca4566dd64d4173245', 'palestinian territory occupied', 'tubas', 1, '561270'),
  (893, 'Ziad Qasem', 'ziad.qasem@gmail.com', 'scrypt:32768:8:1$Qk9I2TRjNz8XPyT4$638ced9fb1a9c619b69090cb31c2f143b192b4701b5d16d71479fc2f29ff5f0374652f7eeea8fdb7e7b0af4cc250ad7816a85e561ca6633f25d3e9a66c8d65f9', 'palestinian territory occupied', 'tubas', 1, '366427'),
  (894, 'Amal Shawwa', 'amal.shawwa1301@yahoo.com', 'scrypt:32768:8:1$vVRYNg1Mqxdn4097$742da92d48044eee92a9c8da8118870f13fa89183aaf057afd98fbc1ad328899aa1f034cb5a5fc8ab6471ac2cb8df1ad7437a62c9dac4a9cd3e2bccc6fa06a0b', 'palestinian territory occupied', 'tulkarm', 1, '160718'),
  (895, 'Sameh Dajani', 'sameh.dajani1735@gmail.com', 'scrypt:32768:8:1$lbjmb2rRs6ytjW3i$a9ef304bf2ea697ae6cee082402ea6c3adc333eee835282418feffa8a93d4b794672cc7053ad00d96469ef8b515246cfe3ec51d13747fd236f2b958ab28c4b88', 'palestinian territory occupied', 'tulkarm', 1, '232510'),
  (896, 'Mohammad Abu Shanab', 'mohammad.shanab@gmail.com', 'scrypt:32768:8:1$s96MdI8Y4rlWrdpW$4681714b68cd5028665fb570cae140279a6211b50d0619d4ddbc980062accbd6517572f49e8be7728e2e48e43536a3dcb7bd60159ac233c416761625468ba25b', 'palestinian territory occupied', 'tulkarm', 1, '575393'),
  (897, 'Ali Hroub', 'ali.hroub3@hotmail.com', 'scrypt:32768:8:1$0wZ8aXl0c4epqKqN$47e97a86c0fa1c04c712da95d2d3b9731f4599ed124e212e7b81a179bc01036e3effe50c4c3a321a4a6eae26527744079f6e0211f0aacb2eca3f2bf4a67f67dd', 'palestinian territory occupied', 'tulkarm', 1, '303667'),
  (898, 'Khaled Al-Masri', 'khaled.almasri@gmail.com', 'scrypt:32768:8:1$QbBrt6qXHbRWCPei$7d899b5dcd0dfd322fa86394fa5a3a9f3e076b31122449890b9344892f347368e4969d16b0b3fd66d24d37ed63a467815a978227b05023c548641d9575c5ab59', 'palestinian territory occupied', 'ya''bad', 1, '330623'),
  (899, 'Aya Masri', 'aya.masri1355@gmail.com', 'scrypt:32768:8:1$ArYYYewZRKEAfdGu$522b489616eda7257e11c4cf48d4387566559a5f0895654a8d90098343cfc519f170c60deab91cf960d750db1f6692bab4ddd77d49ff3570e8cf95efd3aaa34e', 'palestinian territory occupied', 'ya''bad', 1, '785408'),
  (900, 'Ruba Ghanem', 'ruba.ghanem@outlook.com', 'scrypt:32768:8:1$TT0fEnHbPjWnUyD7$d9c1004081d37e43d9297c1bc89835139612eaa5c4eb55992f217267c5cd6fe52cdc2f08d202bd02e84a9ac0be047faf63b2303427aa7794cacb0ba268e257ff', 'palestinian territory occupied', 'yatta', 1, '092875'),
  (901, 'Farah Shalabi', 'farah.shalabi34@gmail.com', 'scrypt:32768:8:1$IKKrq5dabNNWE0Mt$c0aacc2be8d18b1d8c8c1a89c82ddf1b9620cbf2bbbae64ccf202ee76c908fe9ce1c954df9328797f4d35ae85cfaa0377ee1af720c5e73eb5ab9de48a6218410', 'palestinian territory occupied', 'yatta', 1, '198838'),
  (902, 'Rania Barghouti', 'rania.barghouti70@icloud.com', 'scrypt:32768:8:1$YFF6CubbVvpaAK3N$8a41a135a8351052707be8872269babe0c8a3e8ecf6684e2285483a32167a52f2ca4bb165d2d7517d07616e85576ef864cbe024ce60c1561ad839d3ce24a9a54', 'palestinian territory occupied', 'yatta', 1, '975899'),
  (903, 'Omar Hamdan', 'omar.hamdan33@outlook.com', 'scrypt:32768:8:1$zfmX4DsK6qarKs2E$3035cd2558f0640e2e44d9e4f2fcbb7cc5be439a387790db27ac12348a8d1e5ad4e57f4695e4c64dd5432d99ab48e00aa5febff09cf587f2b16b0b8fc841e88d', 'palestinian territory occupied', 'yatta', 1, '270368'),


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
  (1203, 'Ayman Helal', 'ayman.helal@yahoo.com', 'scrypt:32768:8:1$0f36f623e63e8ed2$84f75a66581a1472fb97803b74584e01de0ba7668a0f060b45119787518a15818ad2b1e1179f207853d607d29671b0a5cfb65718b2f83755e85739ba9ce9dded', 'egypt', 'new valley', 1, '352503'),


  (1204, 'Noura Al-Otaibi', 'noura.alotaibi48@gmail.com', 'scrypt:32768:8:1$f7d6b6a8d289247e$51ef35159ccdac3d4ba0d513cd2b6aa3a2b12fac3de7d1356b3abb80465376fc968e4f0121c1b8a084f894bbefbc586b2b898a77b6288dbc49820ff4a651f9a7', 'saudi arabia', 'riyadh', 1, '224972'),
  (1205, 'Hessa Al-Subaie', 'hessa.alsubaie65@gmail.com', 'scrypt:32768:8:1$3551d3ee42f8bb23$c49de5057487e3f60bda11ebbe5611675342893930b451953f441e9a581e2a7cbc9490a4e691dff868ab4d1dab7300f05009fe808c9f55b2381dbf21e84eef86', 'saudi arabia', 'riyadh', 1, '542703'),
  (1206, 'Nasser Al-Obaid', 'nasser.alobaid82@gmail.com', 'scrypt:32768:8:1$5f901a653965746e$9df7de74f0c92abe99e22ccc990940e10d7ea24cb187908f64ead40e4c4a3a64f2f36b18ed8d4f5bd6cf07f016838cd2f547ee0be3bc7f7311c0489f9db6e36d', 'saudi arabia', 'riyadh', 1, '866071'),
  (1207, 'Deema Al-Shammari', 'deema.alshammari99@hotmail.com', 'scrypt:32768:8:1$f48ed3339ddbb6c9$18872cf01b5706974c1bf919dcc39aecc3d3ca3289dab5b84d6bd71db093c795117c7c45f7d766758634a9a8b7c87e460d5b458c1b9555c77165582acc1e900d', 'saudi arabia', 'riyadh', 1, '913880'),
  (1208, 'Wejdan Al-Qahtani', 'wejdan.alqahtani648@gmail.com', 'scrypt:32768:8:1$5daec02f10e630bd$6d4a1e0beaae6567e338218c4ddde15bf17335707262adbc58324a7e5d761bfc577817ef07fdda138bf79ddd29fc0a87a8cc93add2cc70b17042bec32ca71b89', 'saudi arabia', 'riyadh', 1, '414495'),
  (1209, 'Ali Al-Tuwaijri', 'ali.altuwaijri679@gmail.com', 'scrypt:32768:8:1$369a23319cf792d8$93626da8b9c54a33026982f9e12a9186726b230fb0145f63a728187c54b49b06723df2715badbe1c2f43a18741afc37560d5be5a052b2d1d2ea4c77fc108bac4', 'saudi arabia', 'riyadh', 1, '278820'),
  (1210, 'Jumana Al-Mansour', 'jumana.almansour710@outlook.com', 'scrypt:32768:8:1$eb231dde65c6a96d$3d9cb93765c326cd7a78152ef020ba5a8f0750355607c0c1e3ba583c5bf86dc1bddb82d05ba01ff0844f76d778886a7c7110f05502dccb1c88a27bf2141e9370', 'saudi arabia', 'riyadh', 1, '906162'),
  (1211, 'Nawaf Al-Ajmi', 'nawaf.alajmi1991@gmail.com', 'scrypt:32768:8:1$2966c80a3c25e2bd$c8f563403f0050cc4907252849a851419a1975544be433c61874dc68f9f8e7d8518ad6e3e5e00476981636b26601d4b2a8ba2aca56441e362995d14269e43e23', 'saudi arabia', 'riyadh', 1, '953096'),
  (1212, 'Bader Al-Anazi', 'bader.alanazi1998@gmail.com', 'scrypt:32768:8:1$03d224289d7da1aa$3bb6371af24b4e0d7a25c8a55a1db1dd241c5e771f6aa131f35f46262d88f957649f316b1c923a0bdc52026611ce59dc8eb59b329c464a8ffa37402025f16582', 'saudi arabia', 'riyadh', 1, '173132'),
  (1213, 'Aisha Al-Rashed', 'aisha.alrashed@yahoo.com', 'scrypt:32768:8:1$d9ac9fcb9a8a1a43$b5599407914db0abd989fa87845bf929e85965ef3175fc1e4ef34625401e8d906764745e90a4ad3661b9ec7cd672bc78b159fc7ffb522e42861996c55c83c0b4', 'saudi arabia', 'riyadh', 1, '765627'),
  (1214, 'Omar Al-Hamdan', 'omar.alhamdan38@gmail.com', 'scrypt:32768:8:1$259414bb32534918$0a4b9547609436cf24cb3b6bf0c4482984200964341b9f721e9fd3b11580860e6b4c3c98236cb1acdb127a2cae82075d8649d792aa0f05f6f08f6202a9bc8e03', 'saudi arabia', 'riyadh', 1, '509109'),
  (1215, 'Mubarak Al-Ghannam', 'mubarak.alghannam55@gmail.com', 'scrypt:32768:8:1$33831faa889e743c$cfd6f476e2a1cfb65e5c4a94921f0d3e97646564f1ca7efabb8fd1100965cc8c573695f44267a914fb6d826332376e15746a9e054806dbb09ad9dbc4d357ee37', 'saudi arabia', 'riyadh', 1, '540534'),
  (1216, 'Afnan Al-Rajhi', 'afnan.alrajhi72@gmail.com', 'scrypt:32768:8:1$02b743eac1ee8dc5$f8e4256ce3f454a721bb17f80feeab60a6d6417c38162eb05421705c11e98f983dee9c7c311ffb45d6d429f9eabab85297160163188ffe32798a2552a953a1ae', 'saudi arabia', 'riyadh', 1, '856773'),
  (1217, 'Rashed Al-Fahad', 'rashed.alfahad89@hotmail.com', 'scrypt:32768:8:1$f918f52f9b3b7bdc$8137b49438c70112aee14175e1617840ae88dc36745800f943222acab4da40c847063d2bc4db0a1ef3586793908b9f11057041b254dcaa0292748c56753480cf', 'saudi arabia', 'riyadh', 1, '958158'),
  (1218, 'Abdullah Al-Khateeb', 'abdullah.alkhateeb958@gmail.com', 'scrypt:32768:8:1$bd04be7ed07afe3f$a19c822ac51bb866967df08b400394edbd507baa91f833c3450b6ff2d31e4f6135d48d544cdd2010608a8395dc44d41741fb59c5cf88222588ab5c334ec73d30', 'saudi arabia', 'riyadh', 1, '140373'),
  (1219, 'Shahad Al-Dosari', 'shahad.aldosari989@gmail.com', 'scrypt:32768:8:1$0747d82f18c6d850$b108beea23bcea595fd45d3d26efeb800b28382ad7b2278ea6b6ac28244697a18a5092fdb820639de92e422214e3b47e9547d1eca8bedbac6e981bc4f80d73c7', 'saudi arabia', 'riyadh', 1, '671244'),
  (1220, 'Saad Al-Suwailem', 'saad.alsuwailem120@outlook.com', 'scrypt:32768:8:1$4ae48d7612f80fe0$ad025a55f68e641cae5a7e04de39c28dfaa27c0e631d4a8eaa038b4b8294eba026c308c53cdaef3de4181bd332299c8d5db90743ebeb908c1e12483016ff484b', 'saudi arabia', 'riyadh', 1, '764585'),
  (1221, 'Meshal Al-Marri', 'meshal.almarri1995@gmail.com', 'scrypt:32768:8:1$bda4f1fa2c04d843$a450f9c644e34e78f8d0c170daf0a1bdd09a138a41c3f503a172ee3bfa388f327d20a36916b315aeed2304de5a6b2504c104f5e7915c37d70ed96f5cc6d7b00a', 'saudi arabia', 'riyadh', 1, '412536'),
  (1222, 'Nouf Al-Harbi', 'nouf.alharbi2002@gmail.com', 'scrypt:32768:8:1$4eae91675aaddf6b$87469ddff37cb2605a8a4d94ade23f1b5a8c0bbfc9af37151eb93968e02650e622ed0d1bb2349e67509ad974f7b82abb538183f776bfb13681fb40c7404c1b43', 'saudi arabia', 'riyadh', 1, '817123'),
  (1223, 'Ahmed Al-Mutairi', 'ahmed.almutairi@yahoo.com', 'scrypt:32768:8:1$3f414e96f945dac2$a98f795a2febffdd5d83a7520923d71e5d5730c37362e43482770baae2add150d214b5220bd4887f821ebf093b6e4630f11cefdcc0eda901380cd44bff7e21af', 'saudi arabia', 'riyadh', 1, '850428'),
  (1224, 'Sadeem Al-Fouzan', 'sadeem.alfouzan28@gmail.com', 'scrypt:32768:8:1$5e22617f21cd825f$8d140083f2e5d13c6f2bca63157b960763fdd2e857802e65d76b9a1b7439e65c523f377ed11afc0c23159cb80d93064911791e28a9490314e26f82c32e34c159', 'saudi arabia', 'riyadh', 1, '658545'),
  (1225, 'Asma Al-Saleh', 'asma.alsaleh45@gmail.com', 'scrypt:32768:8:1$0341d0ab0f3deefa$9ce777c96f28c297956e2146c8bc83d0f31138e76209c118f5c09f8c9d572b15448f591c59642c46baafb459024461f8bbc8c3f9db52c6128bbe488e6d67bb3b', 'saudi arabia', 'riyadh', 1, '157249'),
  (1226, 'Abdulmajeed Al-Mohaimeed', 'abdulmajeed.almohaimeed62@gmail.com', 'scrypt:32768:8:1$1df2818e66e86285$52d745540779874256552cb50e46266a66a2a0dc446db7c76674a74cb7406c4a3dbbefae34f5559301c65065c514e0772f4bbdc461cbf08da8a96f2c84bee503', 'saudi arabia', 'riyadh', 1, '404820'),
  (1227, 'Ghaida Al-Tamimi', 'ghaida.altamimi79@hotmail.com', 'scrypt:32768:8:1$27f04d6590cd5ff6$3c2239cb9accc4cada42515caa02524f97a7064fcd5afbb94bc5c47f9807d6965d4ed390553f528e5ad2925c7641dc481500533239372330d1cf2df3a96540ee', 'saudi arabia', 'riyadh', 1, '260474'),
  (1228, 'Shouq Al-Zaid', 'shouq.alzaid368@gmail.com', 'scrypt:32768:8:1$93215ac478437a6d$aa259b4fce01afa62c15b87f91dfaaf2f0d76bf9588308b6993c643e1051e27544c89529cb0e11b03d90749b9a87f73fa7e777302a856fea50fa806201350af3', 'saudi arabia', 'riyadh', 1, '671443'),
  (1229, 'Marzouq Al-Ruwais', 'marzouq.alruwais399@gmail.com', 'scrypt:32768:8:1$513c9e0d651cf7c8$ef28e03a0c350db9c475a058a87b084461fe0ed873e89265aa12136e62d28703904fcac0e0a6eec529ceabab69873fe99fd52f199f87577d558dfa26729b4f1a', 'saudi arabia', 'riyadh', 1, '007610'),
  (1230, 'Haifa Al-Otaibi', 'haifa.alotaibi430@outlook.com', 'scrypt:32768:8:1$249e0597d3db26b4$55852b36699b3a4747c17bb4ca7aa4a4313e280e475e146812fc2d6c771f8b38dcc24c04d3cb768643ea481c566aa44929447d9f796f16d3bec12c540eb050c3', 'saudi arabia', 'riyadh', 1, '736581'),
  (1231, 'Shaker Al-Subaie', 'shaker.alsubaie1999@gmail.com', 'scrypt:32768:8:1$dac43f7c18ba8ee5$843b7f2fd2a5e10b768ee8d9021cc4d156eb204a9a63a90ebbafd8e6feaf76d7b5addf3419957500710651ea226a5e26a55c167dde778c4c494884e8d7b218c0', 'saudi arabia', 'riyadh', 1, '650112'),
  (1232, 'Abdulrahman Al-Obaid', 'abdulrahman.alobaid1984@gmail.com', 'scrypt:32768:8:1$cd9afcee8e5720b6$2cf4b525331f9f197e9545ddc0892ffd77f960372f417a01ce8bf68c010512c98e02602914cb83ff7633bcfd050f3c405a75b625db9b291dfd5811f054f19e4c', 'saudi arabia', 'riyadh', 1, '280428'),
  (1233, 'Mashael Al-Shammari', 'mashael.alshammari@yahoo.com', 'scrypt:32768:8:1$9bc87ae7e7134c7d$143be99a4052d1c1b90bc71396a04a47a69419467d9b37f92b6b705035c3b60029713a3835528904d0a15697136e5a390c0ccb69768a912b9c9c83f46f3d6960', 'saudi arabia', 'riyadh', 1, '300995'),
  (1234, 'Salman Al-Qahtani', 'salman.alqahtani18@gmail.com', 'scrypt:32768:8:1$8bdec2054f881abc$cda5fbd946d757df43360c5b88af2f6034b77609a83e823718ea13c27c19ad46f6ef0919e03f03095f9e01b59bd318689d67ff5e768727c85e6f8888b87940c9', 'saudi arabia', 'riyadh', 1, '054195'),
  (1235, 'Mutlaq Al-Tuwaijri', 'mutlaq.altuwaijri35@gmail.com', 'scrypt:32768:8:1$e491dba2168f55f1$eda75b02b67ac727bf8c32261c7c336bf8b68583ea32f32cd62922a8069ff7dfd43bc2cc0f578a453d7896148a24a12b771511bbbc4805f6e24d2b689c959b42', 'saudi arabia', 'riyadh', 1, '311881'),
  (1236, 'Dalal Al-Mansour', 'dalal.almansour52@gmail.com', 'scrypt:32768:8:1$bbfc6ccda28d0d91$cbc5abd932c24f510462a8912afe029750658fdd6b2dc702b22d159cbb3e8df82a2c74c476b755dc5ccc2f13082c321da08a2e3c720104b2bacc2f2bf55e3987', 'saudi arabia', 'riyadh', 1, '609223'),
  (1237, 'Hassan Al-Ajmi', 'hassan.alajmi69@hotmail.com', 'scrypt:32768:8:1$c2cc16220a46df48$862e63a92f93d1f3b16a8875415e39db399c96b083ea4e274d95251d0b73d51a1df5dd74289c2f130861de422f84000ae7eadfc86e95188a2c133fe8dc32ca84', 'saudi arabia', 'riyadh', 1, '760723'),
  (1238, 'Mansour Al-Anazi', 'mansour.alanazi678@gmail.com', 'scrypt:32768:8:1$84701a116fdaea44$60167919558745c46280379c5c1b274a4becd57bfa8ef504957c314a29966f747e3fd451bff7ebf3106cb3fdc1200d96dce6a6be18092930a875343042bf25c8', 'saudi arabia', 'riyadh', 1, '976678'),
  (1239, 'Ruba Al-Rashed', 'ruba.alrashed709@gmail.com', 'scrypt:32768:8:1$5eb03b853f5adb20$05901e686d3b5c43d26b9560c10264a4e0b5d1d5367812b5e66ded4712997a41335a77a4909e7b78b131a77c23cc27a6050bc9395a79b1910d6908ab98a31fd4', 'saudi arabia', 'riyadh', 1, '720228'),
  (1240, 'Abdulilah Al-Hamdan', 'abdulilah.alhamdan740@outlook.com', 'scrypt:32768:8:1$188f28da66189a48$8bf1d62362fde6049a823c1131d4b6e5fefd66121d770f9c10602e2adb0944fc965d5760dce3756efaeea63d5aef1edf99d0a0a02df47bac097b3c13df940a8f', 'saudi arabia', 'riyadh', 1, '239434'),
  (1241, 'Hani Al-Ghannam', 'hani.alghannam2003@gmail.com', 'scrypt:32768:8:1$55f4d7f0613444d5$23980bdd9ff848b68ccd95fd89306820975c9aabc564a6112e78bf3c8969ec52ceb87bafe608262f1febdc81cd005068bdfa4460473c00900e8b9cd03d0aa817', 'saudi arabia', 'riyadh', 1, '572132'),
  (1242, 'Sarah Al-Rajhi', 'sarah.alrajhi1988@gmail.com', 'scrypt:32768:8:1$364fef0a90bcfc63$999b49bb25a55374b2b6a53434220678a0565b1c06c3e6c688c1ef26b2b7eea7fc0d84fe9c78d631a4dc6bc54f741c07bdcd12b80d52a0472677e1ca2bb3d90e', 'saudi arabia', 'riyadh', 1, '087563'),
  (1243, 'Ghazi Al-Fahad', 'ghazi.alfahad@yahoo.com', 'scrypt:32768:8:1$106cac62751328e8$b697decbdf7c9746151b1c78d037085ac9a3a6ae40d3e48ddf1436ecf749355a59755520eed0b19b2425eaa609c5066b74e4e0cafe1865dfb4d34f1e2c177500', 'saudi arabia', 'riyadh', 1, '171513'),
  (1244, 'Rahaf Al-Khateeb', 'rahaf.alkhateeb98@gmail.com', 'scrypt:32768:8:1$bb2efb1f1b633ce1$d4a3d530492b1ab93bb5cf13083250ec53d76b9fc8374fcf1729cfe34632609555edc6406e85d40b1f488a9acaa325d4a335b0b844c71b12a850f28e64c7461e', 'saudi arabia', 'riyadh', 1, '581180'),
  (1245, 'Layan Al-Dosari', 'layan.aldosari25@gmail.com', 'scrypt:32768:8:1$4d6699fd773a2ee2$907ae3f1d8dfc2e1c1695f67c33a5f8ceda1a2e3e7a88a6d8c9b27bd5057e05b200302b56f5938c70b38b95a4b8824075c2b4f34f5849ae8ebb528c76e482ffd', 'saudi arabia', 'riyadh', 1, '113613'),
  (1246, 'Abdulaziz Al-Suwailem', 'abdulaziz.alsuwailem42@gmail.com', 'scrypt:32768:8:1$e1f11dc841044aaa$a331cb5974c3e5b35f6999bad4b0b3519492c82614b1a408deabd0edfcdfaf5e94af84854775857e312e6940dbdf57de8e31c27dfb2dbd6448488ac927358bbf', 'saudi arabia', 'riyadh', 1, '797139'),
  (1247, 'Ghadah Al-Marri', 'ghadah.almarri59@hotmail.com', 'scrypt:32768:8:1$9849fca74e3aa038$ad9fdb00b87fcc76742107c35e30edd2ea58ff7236764f90cbcf2332616a593b207e201900d7398f4fd8998c5bb9f17ab84e00864babe4e13b34531209c90367', 'saudi arabia', 'riyadh', 1, '059655'),
  (1248, 'Taif Al-Amri', 'taif.alamri988@gmail.com', 'scrypt:32768:8:1$18022810030487a2$0989e8e92db2ddf3680189167600d212bb95d2980f11f50aca972909feb3113c3b1d0e3b6395e0c58bebc572f2027885defd04eff0cc275ff9181136c372e7d7', 'saudi arabia', 'jeddah', 1, '487164'),
  (1249, 'Rakan Al-Qurashi', 'rakan.alqurashi119@gmail.com', 'scrypt:32768:8:1$f8715d06f872b715$e89995d3666784bf9a3aeaeb9674134a54c0ae21033368b043aa0cff2d6b7e0a072f8bac49e12c1061ad9ac9242e7a642fa5b922bffa7da2257083cc32966b7a', 'saudi arabia', 'jeddah', 1, '833495'),
  (1250, 'Fai Al-Sayegh', 'fai.alsayegh150@outlook.com', 'scrypt:32768:8:1$127a040a492776ff$2aedadd9ac68c00198120c68f05285e09ce89978e9a05371201170526f48cecd9e7d45495deddb07bc8f48ad51ff0ca9019171302ab85f3b47f52db513ba759a', 'saudi arabia', 'jeddah', 1, '604742'),
  (1251, 'Ayman Al-Nafisi', 'ayman.alnafisi1985@gmail.com', 'scrypt:32768:8:1$c39e9f67da9444d1$06cd7af1be0485585b9bc6fa05daab89941a3352a4ad1fc326b87d90023b5abb102826e0178086ef22c2cdd809d3f9c19da71cc34e665a97e6c1579a5b0e6b22', 'saudi arabia', 'jeddah', 1, '057443'),
  (1252, 'Badr Al-Harbi', 'badr.alharbi1992@gmail.com', 'scrypt:32768:8:1$cf83e1dd9fe3432d$57f054853e60f98f3d3a668eec9f0cbf44c041d7013990d6e4f8153c4a8e907621d1d8c5dcba244666529574efdbdc336a9f0016c8a309ac10e64a0583805bd6', 'saudi arabia', 'jeddah', 1, '304714'),
  (1253, 'Tahani Al-Thubaiti', 'tahani.althubaiti@yahoo.com', 'scrypt:32768:8:1$37ddc7f057d5cef0$1561ca95262ff9f757a99a894f2e7fdab4f4aeb11f2e928a186885a541cb3bab29f4633e2008376a5e8a0f4ee51f19b96ae76cb797608878ed7eb10bf901cc17', 'saudi arabia', 'jeddah', 1, '187180'),
  (1254, 'Yousef Al-Subhi', 'yousef.alsubhi88@gmail.com', 'scrypt:32768:8:1$2c51c680448a652b$f5e619468900b3584649cf37354a19d4d00fea11912e1f791469b032a9ca4e05191441e9004ec75516cdfa7e48dc7f8aea22cbc0e7cb05a3a27248840d24b2af', 'saudi arabia', 'jeddah', 1, '485827'),
  (1255, 'Raed Al-Hakami', 'raed.alhakami15@gmail.com', 'scrypt:32768:8:1$8a3e4154ff80aea2$5ba7cd44de2f49d108d3fd51a61be7c65cdc431645a2421fa78d49503c75d66c231417d508f30243b7f0504d493a0c2c3f29e7cb938c03479d22a3adbfe7f9ba', 'saudi arabia', 'jeddah', 1, '324405'),
  (1256, 'Lujain Al-Johani', 'lujain.aljohani32@gmail.com', 'scrypt:32768:8:1$01bcce1324040fd3$9e96a2c3867365a4e170c4770729aa606c58936ed37a27a45559a955e04d174bff116fc39e285e774d98cebaf6a0937932d62bdc63529b02dac603aad490ee07', 'saudi arabia', 'jeddah', 1, '691435'),
  (1257, 'Fares Al-Zahrani', 'fares.alzahrani49@hotmail.com', 'scrypt:32768:8:1$15918ed5e5a44d21$4bb5e4268a61a4e151937ed5d09263e824cbf79e279d7b983a96d20b1b1462db9454a2353630180b42cce3a9c9a6ec3ea4f7a9a10163767de3737d2bae0780ba', 'saudi arabia', 'jeddah', 1, '462227'),
  (1258, 'Monther Al-Yami', 'monther.alyami398@gmail.com', 'scrypt:32768:8:1$26029d909569d01a$854fd208c34e6e7c86a16fac07240502a3f414c82c3afe563d2a15ba958899d174a9e8aa26c8327c7627408d9c95e76fc95dd6667b3e5fd4ca029c7579344307', 'saudi arabia', 'jeddah', 1, '213317'),
  (1259, 'Latifa Al-Juhani', 'latifa.aljuhani429@gmail.com', 'scrypt:32768:8:1$3220f324fa8ada3b$ca7289f01b219025ff0d5de592e0aea8d2cca7745ed4295eba83795d5278702cd382ea95c6578dfd5a781b1bf0fcbef11b23d80a0165eed42f49fd21dde5f0e4', 'saudi arabia', 'jeddah', 1, '907442'),
  (1260, 'Faisal Al-Bishi', 'faisal.albishi460@outlook.com', 'scrypt:32768:8:1$d9b18c93aa300f70$27760357652e69658d9355f095e8418897da0051a243474fd523952604d1786232db06f21c07ad7013b3437af93856cb8630ad88827e83e00cd5e13553bbbc51', 'saudi arabia', 'jeddah', 1, '477199'),
  (1261, 'Turki Al-Balawi', 'turki.albalawi1989@gmail.com', 'scrypt:32768:8:1$7127d1091e2f2dc0$0af336f0ed7ed12948a63b85852e5fd1aaa824fadcd4a65356c81d80705693fa06f6c224159a6770da0d8b031362ff9f26ebadc9d326793f6446ed756058e437', 'saudi arabia', 'jeddah', 1, '642389'),
  (1262, 'Shaikha Al-Shehri', 'shaikha.alshehri1996@gmail.com', 'scrypt:32768:8:1$67548f1acc9fbbe8$70690cc6b375a85c4918391cb23f4ae25eea9d1095dced6c3bf3ad1cff0f8cf33e0e86b34c994a74cf5f48cccab6e77bf4a0c6e85c7bc30d745d2e3d528c0c93', 'saudi arabia', 'jeddah', 1, '876754'),
  (1263, 'Talal Al-Maliki', 'talal.almaliki@yahoo.com', 'scrypt:32768:8:1$5f2a2091a7047899$1fd87419dcc4578fc8ef3048fa824581993fd0e11915572ee4499e95c91880625c2c74620124800a2432037fae701bb936b17d1a59f5658abf68605c4f6dc683', 'saudi arabia', 'jeddah', 1, '541404'),
  (1264, 'Salma Al-Ghamdi', 'salma.alghamdi78@gmail.com', 'scrypt:32768:8:1$fde344ff4a036ef6$0cca4856e24984b7219df68009d055e4fe4d2b8af79ae9185acf569ed04ad732eda71f0c7730b9ec9499d202717847b42860cc5d0a0caa9dad21ff062784ce38', 'saudi arabia', 'jeddah', 1, '824098'),
  (1265, 'Hadeel Al-Malki', 'hadeel.almalki95@gmail.com', 'scrypt:32768:8:1$aaed2053e9f801fe$20e14e29ff306d81f5ac89407d7b3e40de9379eea16af58f8f5873fa08e67b9d370def0e7321dd714b082490b66f68e5efe6eef7cb21210c1010e4565e8b735f', 'saudi arabia', 'jeddah', 1, '404940'),
  (1266, 'Fawaz Al-Sulami', 'fawaz.alsulami22@gmail.com', 'scrypt:32768:8:1$6a9554304744115c$5c4279d27cc48e603581b54e48d0fa6163db699a61b7ac69650c248db7df6a16e04d2af0e28382e59a2276d2542d3ee98df40f45f9c2c59b1f262d1dabb5f30a', 'saudi arabia', 'jeddah', 1, '939412'),
  (1267, 'Noura Al-Jabri', 'noura.aljabri39@hotmail.com', 'scrypt:32768:8:1$1e159da0149694b0$8ae3869c58b1f9518abf7e12ee146634df1fe29dc9ccb44a67823743efeed04525dab7dcb2c28a28a23b743d4146e6a932a85f2b9e79db2dbc763748f5ffbab0', 'saudi arabia', 'jeddah', 1, '142167'),
  (1268, 'Hessa Al-Rowaili', 'hessa.alrowaili708@gmail.com', 'scrypt:32768:8:1$43e3f68d3cd64f31$dae8ff2a1c40478e0b398211e00533e3b13879861d3f45cdaa11fb57a3959310218c436988668462b026af158bbe22a299b56ebfe5376d6da53e14e51a107433', 'saudi arabia', 'jeddah', 1, '408400'),
  (1269, 'Tariq Al-Qarni', 'tariq.alqarni739@gmail.com', 'scrypt:32768:8:1$ea3dd68ddc941177$35bfc0a62be71951ed19004aed99c1d7e632de9a839be13ee237643bdd5921439b314eea6f25276871f6a157a0366c2c4ecd594f704acf2714b1d0ab80ff9ff5', 'saudi arabia', 'jeddah', 1, '417061'),
  (1270, 'Deema Al-Hazmi', 'deema.alhazmi770@outlook.com', 'scrypt:32768:8:1$f1d3c88ddfc49fca$3be0defb4083b5e94a012c7ee3a9996a0f76f29c4079017f073a369431cb6ca83fa759a55cd4b402fa47f3c2294de77ff61d0153f82e509e2cfa8c75a36ad8a3', 'saudi arabia', 'jeddah', 1, '839617'),
  (1271, 'Yasir Al-Otaibi', 'yasir.alotaibi1993@gmail.com', 'scrypt:32768:8:1$9c5ca0333806648a$5fb31ea9b90addc55106236e3093d943990dd8bd635f7342d5d38eff58d0f90e88980d97480f458f3f9190ccb037fc8dcee597499b1ffb3247d35d210d936403', 'saudi arabia', 'jeddah', 1, '948932'),
  (1272, 'Nayef Al-Amri', 'nayef.alamri2000@gmail.com', 'scrypt:32768:8:1$00470881e7a1a082$1895531beb1491d7b837d5bf38d7d745723964b38560e2cc406d2d83944c46abd6e1380292c8b4cb7f3644a68539af61e49be260444cd43a2b98de9c0a7c3cb8', 'saudi arabia', 'jeddah', 1, '547917'),
  (1273, 'Jumana Al-Qurashi', 'jumana.alqurashi@yahoo.com', 'scrypt:32768:8:1$c025baf5a35f51a9$bb1c3c1c6cff1211ca355c6790816545b2e65ee1d491821924367eb39e9ab924d872aa3810617fa809e4b1b861f151a2f5c3bca834caab1ff884ca8423879fc7', 'saudi arabia', 'jeddah', 1, '583809'),
  (1274, 'Fahad Al-Sayegh', 'fahad.alsayegh68@gmail.com', 'scrypt:32768:8:1$6bf53849508652b6$68bcb5d8c6845000c57b43c9e879a534a5a2fa3eb2616fce35053dd1049e83e653cd01923d1ef4eb72bf51702b7aa55efb6edf10baa559109b190db3da669451', 'saudi arabia', 'jeddah', 1, '100347'),
  (1275, 'Nasser Al-Nafisi', 'nasser.alnafisi85@gmail.com', 'scrypt:32768:8:1$758a96272492a132$200183905745b9478b712d7930aa9a700d5f24449f9fbe4a10486835d6bbd4ab5e79b0dd95ac126a8a6a3958f8669f188b2b21c308f15702c8e3308cdaacc2be', 'saudi arabia', 'jeddah', 1, '985071'),
  (1276, 'Aisha Al-Harbi', 'aisha.alharbi12@gmail.com', 'scrypt:32768:8:1$c0f726376e5b6702$467b38ff6c2e36e24dbdfbeaf795d8e3aa1ea4bd9d594200591045e9b5471e718d459c544e2f6b36cb390d4302bac4be020f50c657846ebf375a27e2d336c97f', 'saudi arabia', 'jeddah', 1, '730777'),
  (1277, 'Waleed Al-Thubaiti', 'waleed.althubaiti29@hotmail.com', 'scrypt:32768:8:1$fc165911d7a385f6$bc277f1defcab21a9aef1a45ce880d7aba0ed4cc18b16619e887487d8be89e9f248a546bb621b2de8307e8260d803de7befedf37a8d1edec0af7ea6d89bdb3df', 'saudi arabia', 'jeddah', 1, '419066'),
  (1278, 'Ali Al-Subhi', 'ali.alsubhi118@gmail.com', 'scrypt:32768:8:1$05878cb7f90a9381$04f51492d4a0f726069c6671e172cfa9edffebe5e2052149216c36d31d7a69b76de12aaca2f18fde977ca42bd273c54eff578bdecd489e4f86c158fc14bd367e', 'saudi arabia', 'mecca', 1, '103828'),
  (1279, 'Afnan Al-Hakami', 'afnan.alhakami149@gmail.com', 'scrypt:32768:8:1$b5a0737f7f2562e5$810dceb44d775b7ed87ed4612ced7c6776f1d92c1bee8c195f9975c9b2c1bd31a69d30947ee63c98506b315662f5810b0ffd418c18f517aad0d0778fb8d1287a', 'saudi arabia', 'mecca', 1, '657835'),
  (1280, 'Nawaf Al-Johani', 'nawaf.aljohani180@outlook.com', 'scrypt:32768:8:1$d882ba82e20a27b7$378618bc6f3cb469b429e7a8015a5231f8085d398a287aaa5aa8488cc50b69d761bede45a24f1271125a982a4bfcdcb37caa247e3184f40f3bd095107aafb483', 'saudi arabia', 'mecca', 1, '652628'),
  (1281, 'Bader Al-Zahrani', 'bader.alzahrani1997@gmail.com', 'scrypt:32768:8:1$dc83314e2ce63c62$05ff9a0d0171aad55c26d445ecd78d90ab0800e6f4933768ada15ba6d367db66c039de913eeabc07e1d1ef6b4f6ac6695703e70c9f29f1fe6915d4cb072dfd90', 'saudi arabia', 'mecca', 1, '398736'),
  (1282, 'Shahad Al-Yami', 'shahad.alyami2004@gmail.com', 'scrypt:32768:8:1$9ae6605409c109ab$9f74e2e15d40c67146326d932444dcf24fc23bedb6460a11883e1ff7c70a05e0de9fabf10a5319d08586fe159e15afb6338ac8f22f01876e94e47fdc99012a8a', 'saudi arabia', 'mecca', 1, '345396'),
  (1283, 'Omar Al-Juhani', 'omar.aljuhani@yahoo.com', 'scrypt:32768:8:1$510e2df9b6d5e86e$af75173749b8c96bd3b4ddc1cfb933249628fa64815e8b5895a5316bc59b025d3ffb456939c6f40ba120f08aedef9f2aab0855c2265d65143c9e652a819b115b', 'saudi arabia', 'mecca', 1, '978731'),
  (1284, 'Maram Al-Bishi', 'maram.albishi58@gmail.com', 'scrypt:32768:8:1$94ef8ba0199684e8$3cf2784a3a4b3d8bed7a6996f597fa6a63ad78329ad12b1908d876711a2ae6c4e1432639f433db4ad5901e40cec9593db9c4c61d5a6a801ce626573b7c92cff4', 'saudi arabia', 'mecca', 1, '933611'),
  (1285, 'Nouf Al-Balawi', 'nouf.albalawi75@gmail.com', 'scrypt:32768:8:1$d5bf17fcdd2f5de9$2b88a7312a01e36c2c840853b4803a973030d9cae2bc6248ca094630240c9ab64e54ae2b7d6adf9a6b1081b39a35098f724470d8496b50614b35cc24c07f3960', 'saudi arabia', 'mecca', 1, '176767'),
  (1286, 'Rashed Al-Shehri', 'rashed.alshehri92@gmail.com', 'scrypt:32768:8:1$147a390b9d766404$242b60ceed5e5ed648d9a96e677ccda3fd1e3a872113e394f5bcbb92171d7d90405367df0227d29f94fa4c9cff4db43ab97cc5b9ba82ce685785cddcf4913628', 'saudi arabia', 'mecca', 1, '242782'),
  (1287, 'Sadeem Al-Maliki', 'sadeem.almaliki19@hotmail.com', 'scrypt:32768:8:1$9cbd5a8f2aea72fa$385e0c075c5569a21df808061fd371fe48339aa5a3b4a89b57c8ddb08921dab651cdf733dcae96f9e240233985211cfc90da791c56c49a8f280be3c09845071e', 'saudi arabia', 'mecca', 1, '820013'),
  (1288, 'Asma Al-Ghamdi', 'asma.alghamdi428@gmail.com', 'scrypt:32768:8:1$00c530bcecadda60$aa2f0f3e6ef454fca6a610347cdd2e660ffcb4eebd98bf1e6130582127dec5108a2613039e71702c708aec15c593b3d52215a623745749c4cd5af67d1d64ce5e', 'saudi arabia', 'mecca', 1, '386638'),
  (1289, 'Saad Al-Malki', 'saad.almalki459@gmail.com', 'scrypt:32768:8:1$1212fd7fe59b6c52$1c251c32ceaca977f4e0f69dc684612ce91243c34f1fe2f726016a6f2030bb811d53e510e039eb372731a67503e6327f3024f7ad5946ba9aacf849e09eaa1ee4', 'saudi arabia', 'mecca', 1, '082389'),
  (1290, 'Ghaida Al-Sulami', 'ghaida.alsulami490@outlook.com', 'scrypt:32768:8:1$4b591384924f6f3c$0520287e71859cfb6fccb3d2aad3431baa425b3e4dcce6c4b5d66c5e7e12102eeae5ace077e001aa96ae8c337487265f41a55f91b30d69ed0db482a81587b58d', 'saudi arabia', 'medina', 1, '410305'),
  (1291, 'Yazeed Al-Jabri', 'yazeed.aljabri2001@gmail.com', 'scrypt:32768:8:1$6e6b8c2f4501e79c$392cd1790cf9d8803cc488d078cf2c30756280926b24bd1d3eb54e9c0f6a6ca59a4575e31fa73c70a8cf6d16981fbc16cda606eef5068d1b7762c97190319103', 'saudi arabia', 'medina', 1, '290755'),
  (1292, 'Ahmed Al-Rowaili', 'ahmed.alrowaili1986@gmail.com', 'scrypt:32768:8:1$719ca2331c1e7a67$7c8c737b86f10e9f2a3a64f5e866b1519f4ac1b25c9e838e8b5e1c518e5eedc53f73bffce5142de02db759328a8df5336304e1c8e6c00191ea9b54015a147979', 'saudi arabia', 'medina', 1, '634437'),
  (1293, 'Haifa Al-Qarni', 'haifa.alqarni@yahoo.com', 'scrypt:32768:8:1$0a2452843dafb8f6$74738113f469da1460caffb8001734dff62ecac4878167c33da5e65e0c721e92c30e0c0ffa91ab95fcc1d9dd1aa4c371d843002dd1d36645e2ac74b8bb590a10', 'saudi arabia', 'medina', 1, '037981'),
  (1294, 'Muath Al-Hazmi', 'muath.alhazmi48@gmail.com', 'scrypt:32768:8:1$cc2ce670afd36c77$897bede580a6bff52cd540c213d7f16dabcbd8c7a36c6a740055ce1535ead97828b806ad0a63d630c28ec4f8f37a3a10f812a06db44fe28e7e6bf5616d4303ff', 'saudi arabia', 'medina', 1, '613894'),
  (1295, 'Abdulmajeed Al-Otaibi', 'abdulmajeed.alotaibi65@gmail.com', 'scrypt:32768:8:1$9b32d85f3bcf8681$883b93220afeb64d5f783d7108e8d1e67e285f892eedbf03a198f002243689cc56995ee4ced6ede82f00f34a6dd194b6d58756a3a546c133940a7bf4bc3d0104', 'saudi arabia', 'medina', 1, '013148'),
  (1296, 'Mashael Al-Amri', 'mashael.alamri82@gmail.com', 'scrypt:32768:8:1$cc2eff9c650d3a1c$dce9afdaa78d3c999a1aec538154dda4f88357ff148e9d66e5538a9eee08a088aad95e8a4e5e648eee1e2aadf425a33da8c970e7857b5765c5fc4ff37b07ca76', 'saudi arabia', 'medina', 1, '595034'),
  (1297, 'Hussam Al-Qurashi', 'hussam.alqurashi99@hotmail.com', 'scrypt:32768:8:1$9aea6953cc8d5b8b$91ef416f15e21adace46e0675ca7538601979918dde20d8d779fb52867bc104d41dfdba459511b9783471486c8a8c8d0460cb31386fb8db2ff2f54f15c9a7b2f', 'saudi arabia', 'medina', 1, '978821'),
  (1298, 'Marzouq Al-Sayegh', 'marzouq.alsayegh738@gmail.com', 'scrypt:32768:8:1$a27127a159bfe2d5$72129c24662ea77a0f69b3b124125a126ab01d9d3972d7a3ebe7ee35d100f5fe89dbf25d2705ef74e751c9319cdb04ececbf47df5960d15ac0dae0316fecf4c7', 'saudi arabia', 'medina', 1, '490254'),
  (1299, 'Dalal Al-Nafisi', 'dalal.alnafisi769@gmail.com', 'scrypt:32768:8:1$1b2300682fb71431$88ce0118ca3ddd7820dc2e51425fdf3892b6306e33b8f46658a14432cd2207cdc763919890e8c70e9159ebcf4fcc94c73ececd4de508f88d58f905adbb4ac5db', 'saudi arabia', 'medina', 1, '256675'),
  (1300, 'Shaker Al-Harbi', 'shaker.alharbi800@outlook.com', 'scrypt:32768:8:1$f02a67c337777bbc$fb3d3b2e12de2e1b02219e5c2aa6eaeadce857dfc2977c1ac1dc0d06fda6b8f62208f099d28b8d3ec078184bba4c233ae9fd26e7993eec20464f66f649fffa99', 'saudi arabia', 'medina', 1, '072927'),
  (1301, 'Abdulrahman Al-Thubaiti', 'abdulrahman.althubaiti2005@gmail.com', 'scrypt:32768:8:1$08dcc1f9c7fa1445$ed93b1df70878f019086f7c3ba91181ddf68885dbdfd5475c5cf7feffbfa32baa6ff41067dfdb4801a4908c5175bb7b45e1f35163b130e4cbf5456d39a9d480d', 'saudi arabia', 'medina', 1, '465113'),
  (1302, 'Ruba Al-Mousa', 'ruba.almousa1990@gmail.com', 'scrypt:32768:8:1$2a5838140cac8aca$a5abc78c58b157e3e0cbfe0a75fd5e747b33616170b256ab19a320d9adce2d6064f79840ba034a950241eb40e3dee31b365e694746c03b6efb203c51a4e85776', 'saudi arabia', 'dammam', 1, '540439'),
  (1303, 'Salman Al-Saleh', 'salman.alsaleh@yahoo.com', 'scrypt:32768:8:1$60dcf176a27ab81c$c5f031c7da6f0b8fc28c07ada684908baf7d11c189e439719710d7c805c2ce9e14b0dcda3de6e11e79b977a1073c92a1ad33954af4e25278a3fc8f2e7a070811', 'saudi arabia', 'dammam', 1, '287567'),
  (1304, 'Hayat Al-Dossary', 'hayat.aldossary38@gmail.com', 'scrypt:32768:8:1$b34b32e5c7ea7dfc$a12639d5ce2df75b6b6171ee3b33d3025abc0e7678ff8940e3ae3f163a12177fa0b70a4ae750667ea336c805b4d14ee3c2669cd3c4c22f2997f35e786a232a16', 'saudi arabia', 'dammam', 1, '323000'),
  (1305, 'Sarah Al-Enezi', 'sarah.alenezi55@gmail.com', 'scrypt:32768:8:1$f7b7444de3aaea25$66681d7369b8b1d8d6934c39a2db9bded6170aca9e623270c71e16247e178965f7f4349c967991fd5da6f2f11202a4a5f30a945b5804ac6566106352ee481aac', 'saudi arabia', 'dammam', 1, '436400'),
  (1306, 'Hassan Al-Ghamdi', 'hassan.alghamdi72@gmail.com', 'scrypt:32768:8:1$b3321990bf58d9dd$51f8140b0a5002947c7b1c76b435acbdda50f91873d13020d283dc109dc7de14ff30edf810f55b2d7dc65d059138b616119b02a67fa90f16ec549edb7c5ba7e8', 'saudi arabia', 'dammam', 1, '055981'),
  (1307, 'Rahaf Al-Mubarak', 'rahaf.almubarak89@hotmail.com', 'scrypt:32768:8:1$90761763ca39396b$713bbc5af7ba5219d5f2db500e7695755f2ee3e46c4e53b95ebcdbbbe211a081ca00ef8353037175563599d8c8bb841b4318d42824b722ce4c17d3d9c4175fa0', 'saudi arabia', 'dammam', 1, '731128'),
  (1308, 'Layan Al-Ahmadi', 'layan.alahmadi148@gmail.com', 'scrypt:32768:8:1$c588e3378cc655ae$c41af789959fd43f32222ced7b0f785a9d21488eadfd83fda46de1bbd4ebaddca5162d47d04ebd483852992723efe019577a93957dc9262e445cf4df92f5ac5c', 'saudi arabia', 'dammam', 1, '963249'),
  (1309, 'Abdulilah Al-Zahrani', 'abdulilah.alzahrani179@gmail.com', 'scrypt:32768:8:1$5ed38d2db32badf5$993bc6610381b10acd07a4281d350b083dc50e4c2a1b49feb3cf0b603babc68dc77b5ec52e28433cb24e257545905158ad1b38b9208440e74e22444b6a58e971', 'saudi arabia', 'dammam', 1, '434167'),
  (1310, 'Ghadah Al-Hussain', 'ghadah.alhussain210@outlook.com', 'scrypt:32768:8:1$284dd310931367d5$199e93aecd907c876a3397d2813ff348685b3ea1dc824586f2c6a65a898d0c650a8de4a5cfc02c4a0593520f323d78821997dcad8d1696ef12e90d8a9312860d', 'saudi arabia', 'dammam', 1, '937343'),
  (1311, 'Sami Al-Sahli', 'sami.alsahli1987@gmail.com', 'scrypt:32768:8:1$7d17b22de7a2b059$c70ecdc2ee4a105699155809cf2947a02982504d5d398fe248d77d860404575b31e7f7e0e2c3915676666075106a793eb1d7c50cd050129a1e5de7670a8baec9', 'saudi arabia', 'dammam', 1, '797221'),
  (1312, 'Ghazi Al-Shehri', 'ghazi.alshehri1994@gmail.com', 'scrypt:32768:8:1$ba1adebdec6a94b7$bcf524ae304ec6fb9414ef94cc45d8402d61a0506f0b252f1f9e5b8bab316a98755408257c23a3b4ec1ab8e305b145536abc9350957ab0c433719c838dc86ae2', 'saudi arabia', 'dammam', 1, '902955'),
  (1313, 'Fai Al-Ibrahim', 'fai.alibrahim@yahoo.com', 'scrypt:32768:8:1$52556c6ad64a158f$532047fbf9a5f79269371dda61030d81c215a888735f514b19ff829c70e1bbdfe98b17e9355b8067916cfb23ba65314ab8d23ff17e9f771295c695fe2cd1bfc9', 'saudi arabia', 'dammam', 1, '223542'),
  (1314, 'Hadi Al-Otaibi', 'hadi.alotaibi28@gmail.com', 'scrypt:32768:8:1$fa9055aea1c49761$6eab6fafe11e3b4b0c59f0304bd6710a5bc10ee91425a8a47a4dd6c3c66b75038fb0bba40f89834539714f931a9a5b5183ab96ca20c95d50d1c79a36d11c0038', 'saudi arabia', 'dammam', 1, '409257'),
  (1315, 'Abdulaziz Al-Hajri', 'abdulaziz.alhajri45@gmail.com', 'scrypt:32768:8:1$427a2ea41d16e4ea$3b7d807a857d0d3172eacd12533572878dea914b9d10079b263f55fe6dc5a9462d963df03c6a6c42d1ddae786c2e5acc3eab50b108d1e26b5937cee4649a6a58', 'saudi arabia', 'dammam', 1, '571026'),
  (1316, 'Tahani Al-Khaldi', 'tahani.alkhaldi62@gmail.com', 'scrypt:32768:8:1$e5645d9b30356736$195334e99771c66b2fa0ef7d238767a02f7b06fbb4f67d6b9773f392b7a9a4236f89d64b01a527e204edbfd440455e4f67903062da9cdb4f0c6ec13fca9ee8ce', 'saudi arabia', 'khobar', 1, '386243'),
  (1317, 'Majed Al-Marri', 'majed.almarri79@hotmail.com', 'scrypt:32768:8:1$845bfe1bcae6d4df$9daad26e08a260b9b1847ffd89b320bff54b960e2a9151baf1595551273b5470990c91ec09178e97e4e5559f9b7188ef7a60004e7a06335019fd16d0bc9b0dd2', 'saudi arabia', 'khobar', 1, '095039'),
  (1318, 'Rakan Al-Muhanna', 'rakan.almuhanna458@gmail.com', 'scrypt:32768:8:1$6c42b4f42b015d02$047283cfa31dd95f33d86509877376b1f08b851998587fe44f219dba54ddc4b48dbaa5e438379cba1a1fd20ee340562e639cf868f7247f6bf445ec2d2d96d88e', 'saudi arabia', 'khobar', 1, '067382'),
  (1319, 'Lujain Al-Najjar', 'lujain.alnajjar489@gmail.com', 'scrypt:32768:8:1$ed327d975bee1d0a$c425e0e57c73c9183dcad437fd5ef64033d014b5cc85f890602a673107b486b59e2e3ef82437a5d15746ae848978fd2f71375bf42413b3873dc44871e073f5ea', 'saudi arabia', 'khobar', 1, '209973'),
  (1320, 'Ayman Al-Qahtani', 'ayman.alqahtani520@outlook.com', 'scrypt:32768:8:1$3f16da2d12887828$97eec20cbbcba7dd0209e79639996f47febc3b1f05be80c499f3c5fae11f7a8682125b3b40a46a715ac6f0aa675a6c30dcfdac9dbc87ee262a3656ba750d0cf0', 'saudi arabia', 'khobar', 1, '690464'),
  (1321, 'Badr Al-Mulla', 'badr.almulla1991@gmail.com', 'scrypt:32768:8:1$2100513b70e808d4$5dd18018e5753a4ed4cc4bd9b68d378a8a9628fa75a9d7e5734d2da5854a4ad2451f997c2915dfdc15247dd4dcb2d64739920dd06c871a137fd26554bcdc5350', 'saudi arabia', 'khobar', 1, '081175'),
  (1322, 'Latifa Al-Mousa', 'latifa.almousa1998@gmail.com', 'scrypt:32768:8:1$4a38cce414b86329$b45e93f0ef9eb12304965726eca3ae760f61ca460c46a90ef497723e783de39d6a19ef46e8ba8223e0791e9c584e2d567009750ec3e6ac6d525ff4a404770ce1', 'saudi arabia', 'khobar', 1, '003004'),
  (1323, 'Yousef Al-Saleh', 'yousef.alsaleh@yahoo.com', 'scrypt:32768:8:1$c5090c5f7ea6503f$66bfc7a553228efc3ab6e0519d262b21babd2a7f1293ebc7ab1fdace303bc474602408b7f368381998e5a82b25424c68a10f48dbd94200c5ca3474f8f66aab49', 'saudi arabia', 'khobar', 1, '415293'),
  (1324, 'Hanan Al-Dossary', 'hanan.aldossary18@gmail.com', 'scrypt:32768:8:1$c874cfb6e3be57c9$c9b9338a0e0e6e53634045c7474ce5e10c97951a0428c9bf87e554445f8cf69a34689f4096d15d35315ba9aba3745ed4af916ac805781b6e10f3252e983b4487', 'saudi arabia', 'khobar', 1, '370408'),
  (1325, 'Shaikha Al-Enezi', 'shaikha.alenezi35@gmail.com', 'scrypt:32768:8:1$3f8bdec076671b93$dd22da7883663a89ec8b79e675747de4b44d4c9de358b0279d207d48431fa74bd037325d9f28b5a282025fc2699da3d531cb56c99fd92aa0aa13d37c53dd8ac4', 'saudi arabia', 'khobar', 1, '101444'),
  (1326, 'Fares Al-Ghamdi', 'fares.alghamdi52@gmail.com', 'scrypt:32768:8:1$9e088f5e12b03f6c$e856a4482b7f8bee81630db6f66e46c1883afe57d7be96b0c92a060083f0934ed1a6c9946422c9e67407da763aa5a40472de10a831050cefc6629e670fe1d956', 'saudi arabia', 'dhahran', 1, '000220'),
  (1327, 'Salma Al-Mubarak', 'salma.almubarak69@hotmail.com', 'scrypt:32768:8:1$750b2b1b6b8305a2$11dba29d4cb7cca27d325901ed9599816cc8a4dcae1e745f4c598be356c765e8d477dce3723ef0d3c56cedaf00ae9fa74c1fd7d7ec594556b8fff3bae39f5f02', 'saudi arabia', 'dhahran', 1, '878166'),
  (1328, 'Hadeel Al-Ahmadi', 'hadeel.alahmadi768@gmail.com', 'scrypt:32768:8:1$e784cbfcd5ec172e$54e75c4b58b58aa8d48391bb6718e0ba87a0307b2d407238a97ed06743b5882c3de6b54730b334259436ea562ec168559dbd8e340939992431f72a93377f7b33', 'saudi arabia', 'dhahran', 1, '212752'),
  (1329, 'Faisal Al-Zahrani', 'faisal.alzahrani799@gmail.com', 'scrypt:32768:8:1$94ef582f41af1f33$0361eb18504edbe1538d9046d0aea51ea0325a37bb51f00e5f8410d542a0e1cada29c30543404c84d42200619ebc973c396d2513897c721fc5e3e6a407f9f897', 'saudi arabia', 'dhahran', 1, '212946'),
  (1330, 'Noura Al-Hussain', 'noura.alhussain830@outlook.com', 'scrypt:32768:8:1$2862bf5181f92509$f52e9acc39bcba5fe30c22871b4e98746c1abf86c5245c217705c15df3e0d1c905ca75ebce44e816cc527ae2ecd3d19525448de4d6825a4170fbb37d434d01a6', 'saudi arabia', 'al hufūf', 1, '250628'),
  (1331, 'Naif Al-Sahli', 'naif.alsahli1995@gmail.com', 'scrypt:32768:8:1$5f10851407346eb7$6dea65b73686a3302b6d1e9ac4fc92a9594df04f2095938883dd08fd9b1b23fc65c1310a4785181ec551be887d9acc1623f7fc80849ce07a60decfdff4f7c2e5', 'saudi arabia', 'al hufūf', 1, '873523'),
  (1332, 'Talal Al-Shehri', 'talal.alshehri2002@gmail.com', 'scrypt:32768:8:1$07e5c5ea506f0652$9412f93f33b5620a02966e67008c61ae0b00cd47bc460f1fb06a40c726ff5961a641b868888bf1d0e6853b779e01e6f845c5fc42e02116e287b7e65a9f041622', 'saudi arabia', 'al hufūf', 1, '391877'),
  (1333, 'Deema Al-Ibrahim', 'deema.alibrahim@yahoo.com', 'scrypt:32768:8:1$e3bc27ac066229db$1b029c3c811c8af4b6ffa74404e29c169c58f30e6a28aa7e8150bfa938b1a2e9e651391a7a45e27763ed83847da544e9c5903fef7fd575a70e198d4204d7cfc7', 'saudi arabia', 'al hufūf', 1, '552667'),
  (1334, 'Rayan Al-Otaibi', 'rayan.alotaibi98@gmail.com', 'scrypt:32768:8:1$e052a229fc134901$319aacb522b44b9fc3f2d4c9ab0538e4dc1c841237f76ba7d96941010297988cdebcfafd83f322d437f1ff6a601e20fc44db2bbd05d2d6a389ce5dab8ad8f51c', 'saudi arabia', 'al hufūf', 1, '159100'),
  (1335, 'Fawaz Al-Subaie', 'fawaz.alsubaie25@gmail.com', 'scrypt:32768:8:1$9b8519cc298b8556$3c326614065b02776f9e098530d70c9f1da81df80d263a4507e1e539d1ed3cd7b6bb13e78457a001e3d6562623a786c85652d366bd815a87905a335184f14cee', 'saudi arabia', 'buraydah', 1, '403466'),
  (1336, 'Jumana Al-Obaid', 'jumana.alobaid42@gmail.com', 'scrypt:32768:8:1$dce1c5a8f30f3fd5$e4958805ff2257ce0bc2a8de553087e9a6185e9734b6a2615c484c2c4356965ffbb8077f6fb7480f81e48dd2a0983ae4aa820b28c3514ececbe3338fcf096627', 'saudi arabia', 'buraydah', 1, '661519'),
  (1337, 'Mishari Al-Shammari', 'mishari.alshammari59@hotmail.com', 'scrypt:32768:8:1$50bcc376d7fb2497$0be5fd3a98c936f706ba0cd2c0e159d6018dee1058a6c69922ae496cf3028e7430de89003f417e8619a9099c15c0ae77edc3f1362c7b256a908a3e3c0b499551', 'saudi arabia', 'buraydah', 1, '205653'),
  (1338, 'Tariq Al-Qahtani', 'tariq.alqahtani178@gmail.com', 'scrypt:32768:8:1$19dd17339fb3017e$91a34402b4fb696e95ec3036d205d3d673c9fb8e06d1af33aa02ce4a60fa32d7526aca66d9ee19e7ed68161b89d566bc76b7064922b345ff85922c6e44532f52', 'saudi arabia', 'buraydah', 1, '317199'),
  (1339, 'Aisha Al-Tuwaijri', 'aisha.altuwaijri209@gmail.com', 'scrypt:32768:8:1$6800cbc7d223200d$9598bbfc73be29ff31665853cc96437025ad3be839c0d642b044840399c6008b24a1d072e5eebe09607f0ee302bd9f1c9c26b072c68d2e24502698679193095e', 'saudi arabia', 'buraydah', 1, '649870'),
  (1340, 'Yasir Al-Mansour', 'yasir.almansour240@outlook.com', 'scrypt:32768:8:1$5bbba032aa198d6e$35e85bd0ac3a815b14282a23644c2977d3b4b864b075cc9980e80985fe709a0da26601945bfdac2dfe1e084d6755ae2363ae1326169ee03aa63fbc8b794f8ff5', 'saudi arabia', 'buraydah', 1, '828348'),
  (1341, 'Nayef Al-Ajmi', 'nayef.alajmi1999@gmail.com', 'scrypt:32768:8:1$6c439e716ea3b02a$83ca8722541a152de7aac6bb3156a09b86d92486860e0af3b5cacc107284e054f54f33d0cf56d4f29189d17c26cea5a2d21202b3c081cedb000fd9a4ca08fa3d', 'saudi arabia', 'buraydah', 1, '880154'),
  (1342, 'Afnan Al-Hazmi', 'afnan.alhazmi1984@gmail.com', 'scrypt:32768:8:1$f57880ca7049ca3e$e331dc603cc0f2ef42230ff56b43c385a22adc8bc59eb802133812de3c50e32e615d7e84a6bd42bc8baf42ee2280ec0a7e1c4453fbc3b1e19782db0465915e0d', 'saudi arabia', 'tabuk', 1, '745734'),
  (1343, 'Fahad Al-Otaibi', 'fahad.alotaibi@yahoo.com', 'scrypt:32768:8:1$d894ee5d28533a33$7a8e3cc0ada008dcc78552ed4f1cd11b0cc2071dcb1cacb6f6c2b384961fab80bc3f5593fe2ff0d796f1289b967f9412b9f1fb9070f3459d5bb3d689a057dbf8', 'saudi arabia', 'tabuk', 1, '988414'),
  (1344, 'Manal Al-Amri', 'manal.alamri88@gmail.com', 'scrypt:32768:8:1$fbd7d7becc65bbeb$ba7102c412af6a5c43e340af992f17f3439b97f3ffc28496697fd6af29d2ef9de137aaa70a8b1b41409c8055f0316f1a24f307b37e7474f333229eb138801197', 'saudi arabia', 'tabuk', 1, '865297'),
  (1345, 'Shahad Al-Qurashi', 'shahad.alqurashi15@gmail.com', 'scrypt:32768:8:1$3888b1f7709e7fa6$5d3cc321fd5c3cd951e42b3487b9e84608d50ff62d84d815cf65cb1af995bd2c46266a36b4105407b234ee0935ad9484f2b660c11846e5d6b09987790038df62', 'saudi arabia', 'tabuk', 1, '543172'),
  (1346, 'Waleed Al-Sayegh', 'waleed.alsayegh32@gmail.com', 'scrypt:32768:8:1$6851db4e6b6f8d32$d39fc89aec9158988b02cfc4ac61947289b75cdfd0d6b2dc584732cab22d55a6e5dd9e860873bae1ef9f0d8682761d0db8cf09c88c564a4190c82f25ae6b47d8', 'saudi arabia', 'tabuk', 1, '261527'),
  (1347, 'Maram Al-Nafisi', 'maram.alnafisi49@hotmail.com', 'scrypt:32768:8:1$76b993936243cf5b$baff3eb85aff3227a37a45d1d78b5a97b0847447f9bbe72cb32e26a30cffa74b445c77a7ec9fb8f64c2e1c4424267b1b70cda5d438093c1e9d35a6032871818b', 'saudi arabia', 'tabuk', 1, '701794'),
  (1348, 'Nouf Al-Shehri', 'nouf.alshehri488@gmail.com', 'scrypt:32768:8:1$869261cad6fb012a$6ff5019f2b9792b22cfc599ab2778975acd3bade8274d24b92c792c6f9051591771c8260c6512d4ee0f2fb22d66be2c5b9e3e9bf38d4ab02a278d75fd809d380', 'saudi arabia', 'abha', 1, '938572'),
  (1349, 'Nawaf Al-Hakami', 'nawaf.alhakami519@gmail.com', 'scrypt:32768:8:1$dc415881c7ed2665$8d5fcc4a1c3a8bc271145e343bd66a02817f23bf4eb05e08668625b96d6845c9afc68a16de4a56de20cdf015083cabda5c000c923955b9207f69137c3eaa6936', 'saudi arabia', 'abha', 1, '505217'),
  (1350, 'Sadeem Al-Harthi', 'sadeem.alharthi550@outlook.com', 'scrypt:32768:8:1$f1af5b079d46b6d4$a253e743fc4c612aa7c8125bf4a269e18dcb70e6a04d81dd84d894a2049f8eb89eccc0fbd775da60aba2fa3b587b330a639877aa77c16b5893881ee590e6db84', 'saudi arabia', 'abha', 1, '373670'),
  (1351, 'Jassim Al-Ghamdi', 'jassim.alghamdi2003@gmail.com', 'scrypt:32768:8:1$8067e0254b0c2486$0ca6f796c7f562bd79f4dc1ae0803474937bbe5f2e2ce93fa825f78b740abbc665622ac930f1ecf46657ac99492450cd70b79c35df873c3bdc611558ab48f0c0', 'saudi arabia', 'abha', 1, '879623'),
  (1352, 'Omar Al-Maliki', 'omar.almaliki1988@gmail.com', 'scrypt:32768:8:1$05da6c30b330725d$8dde016992de2bed1cca9428b5c5f16a1a3d9655af222a1371a3fa98fa4aa1e1dd54efb0145f9f86184dafed653a9d77b74349ad8d13692985a78b1470a8b9d6', 'saudi arabia', 'abha', 1, '298712'),
  (1353, 'Ghaida Al-Zahrani', 'ghaida.alzahrani@yahoo.com', 'scrypt:32768:8:1$526f3abbfc05070e$d7beb4f45eba0d8803371dfa5f8fad7e3b11caea9bd41c0c005475af712d3499d2e75fe7a902d9c88fd9d1c4a86873e43285b52052dfa5501583128d99919d1c', 'saudi arabia', 'ta if', 1, '160818'),
  (1354, 'Abdulmohsen Al-Yami', 'abdulmohsen.alyami78@gmail.com', 'scrypt:32768:8:1$b39c14e640a699f8$c6e58dcc4412d41d0340d89c4c92de7798156935c3e75b2f3990196f7336487c2ce140c2848a7c18d97423446e2748a5d604931cc20bd127ccf937ba0615765f', 'saudi arabia', 'ta if', 1, '242067'),
  (1355, 'Rashed Al-Juhani', 'rashed.aljuhani95@gmail.com', 'scrypt:32768:8:1$ac1fe045dc5a2b35$aff3c1e2f013d6e85d15b6eff0589cb41a24bc8702e8b93c2e9ef80c182f436e1e2bd718945f1ed04e218992fc75a45b1ea61ca4596d6656f4bacbeb8bac73d1', 'saudi arabia', 'ta if', 1, '178344'),
  (1356, 'Haifa Al-Bishi', 'haifa.albishi22@gmail.com', 'scrypt:32768:8:1$3a3a0a645f2fcd74$018e188c9f3a570896acafe15c88dbf43c6733d049168a914cd18ce04864977311020ec01864fb815caa046f25924110bd82018cf8ce761578bf3ed369bb1642', 'saudi arabia', 'ta if', 1, '297269'),
  (1357, 'Khalid Al-Balawi', 'khalid.albalawi39@hotmail.com', 'scrypt:32768:8:1$a71223786a4eaafe$02e8d779d5a2129555769cdcc0e75890be542c123266f277d2c736ec30626cf35113016607559b3d97f394adedc9927067ce99e5c2ade38993ca1d55e33e1f6e', 'saudi arabia', 'ta if', 1, '366913'),
  (1358, 'Saad Al-Shehri', 'saad.alshehri798@gmail.com', 'scrypt:32768:8:1$37f9dbcc32a5cb48$d704f8eb365795bacb4a1130eb4311e9af12cbf3d3258a9265f4632de5037cdb6419bc3332e215dc18c7a8361a1283ad6919c962998f31d41433c7f9667ff3ba', 'saudi arabia', 'ta if', 1, '556481'),
  (1359, 'Mashael Al-Dhafiri', 'mashael.aldhafiri829@gmail.com', 'scrypt:32768:8:1$fcce60e85604b8d2$dc62b61a7f13d38efb0500ffb3faff923bb997481cc648b098c240c516a2d37261d1f60d3075867ff5fb9c07cc8a40afb1c302914138aee718ad9812d117c7b8', 'saudi arabia', 'hayil', 1, '439132'),
  (1360, 'Yazeed Al-Shammari', 'yazeed.alshammari860@outlook.com', 'scrypt:32768:8:1$0df75177faf17d51$ec8e633d4a7cfd32d3ae32db23d4021eb7b64c69c088c66150c1305b65aaebff2992c41c85cb1d8edd31c34c6bcfd41d4fd33eeae72a397b8a12ab0738bb7f01', 'saudi arabia', 'hayil', 1, '192071'),
  (1361, 'Ahmed Al-Dhafiri', 'ahmed.aldhafiri1985@gmail.com', 'scrypt:32768:8:1$c747f04ff55ef47c$74427119243b2c72ee4cace407a1bf4405b7b1b8652709430722e12ebcb204e367b38dca5e6c2120bcfb82ab92cb22d9ecde760f3ced8d7d42250acced6e4eb0', 'saudi arabia', 'hayil', 1, '877571'),
  (1362, 'Dalal Al-Shammari', 'dalal.alshammari1992@gmail.com', 'scrypt:32768:8:1$ba0f0981d0c26502$4bd088dcacb6d8551fac93849badad326ae1773f259e3abf5383daaf0fd9ee3c0db06d64e4032f7e40d630eef90c1a6e96b6d4455893e176f45db3f237beac1e', 'saudi arabia', 'hayil', 1, '163564'),
  (1363, 'Muath Al-Shamrani', 'muath.alshamrani@yahoo.com', 'scrypt:32768:8:1$02112fd9d5021f19$ac9e6f252ac602ce22db5480fb012d2186f6839f3fd95e4540ea7af60ad320080e1bb849d9c0b0463cc5ac32e26e7d32a6c301fa18839c11c550b01dc313b3bb', 'saudi arabia', 'najran', 1, '665515'),
  (1364, 'Bushra Al-Najrani', 'bushra.alnajrani68@gmail.com', 'scrypt:32768:8:1$e5ec0defc03a61ee$67b239eef6e1dff760fb11a0b0c83541736804e863a6f1dba60256af7a57fc0dbf3b3f41f9dec52edacfda4c7961ad6fe8a84ac8d2877f4f43c3ef70c465316b', 'saudi arabia', 'najran', 1, '044958'),
  (1365, 'Ruba Al-Shahrani', 'ruba.alshahrani85@gmail.com', 'scrypt:32768:8:1$5e25da876c54c40b$5f32526bfd372081678498c3ebf20817d06961b6f48988a8dfc7b5150677a769b392b1d8954fa5f711642347ca5834955b7cae5b6a7f550dc1d8601e52c78ccf', 'saudi arabia', 'najran', 1, '730169'),
  (1366, 'Hussam Al-Bishi', 'hussam.albishi12@gmail.com', 'scrypt:32768:8:1$be616be759997299$0731c262728b7866994cee0addcfd17bf7d36888778c60a6adc9981ad3d44f9969caf1ab27e5bf80b47ab1ef59224661edbf4d043c4f8e63b7163a7b0b071971', 'saudi arabia', 'najran', 1, '048154'),
  (1367, 'Hayat Al-Shehri', 'hayat.alshehri29@hotmail.com', 'scrypt:32768:8:1$a15c52c452ef0647$cc6c8d8362b3ec4577d2214b02cbfd8242866037aa4e51b0812f4bdf94342b7279360aae87d1ac858f6f39cc8381e531dbd16a339b45dc532d22c9c9022e74e6', 'saudi arabia', 'jizan', 1, '120851'),
  (1368, 'Sarah Al-Hakami', 'sarah.alhakami208@gmail.com', 'scrypt:32768:8:1$c970d63364c7460e$f13c595d16432d9d610d12c7bc9b0614ff56b632a2e1f38afb5354522cc80a57737ebd4a2b5e1675fc1948cc01b181db5c05386dfa4f4025ce094b865baca693', 'saudi arabia', 'jizan', 1, '935808'),
  (1369, 'Shaker Al-Harthi', 'shaker.alharthi239@gmail.com', 'scrypt:32768:8:1$230224b7ff94cdb9$1d8fc29ab2bbe62a0275753b0f44efe0410201d12c3ebcf2d9f24fcd3bce4d94b4eff6b83baa71bc6f1a551adc3352958822ed23b1e9d10f23d96190519a13aa', 'saudi arabia', 'jizan', 1, '844106'),
  (1370, 'Rahaf Al-Ghamdi', 'rahaf.alghamdi270@outlook.com', 'scrypt:32768:8:1$dcc0c9bfe44951bd$a9186740ac601880011e2d6fd561304a12fdb95c1f81e2ccdc4c1b0631a8a5d39bcc7412417c680e7b9d2a7810287dca30d87dd75baab30e3f819d46ab5ce755', 'saudi arabia', 'jizan', 1, '981555'),
  (1371, 'Saud Al-Nafisi', 'saud.alnafisi1989@gmail.com', 'scrypt:32768:8:1$924b265cad4f08de$e2948b13510757ef9c60a4bfe23dc056ff9ef148ce0076911ffe3a5fad4080f5d48dad033863ec5e1836ae897d31a123a4a1f6fa36399ef92e5d50e71f93aa78', 'saudi arabia', 'yanbu', 1, '045649'),
  (1372, 'Salman Al-Harbi', 'salman.alharbi1996@gmail.com', 'scrypt:32768:8:1$06a796b799ce3a5b$0f7a793e3d807ef3b4ee0fa498b68192a3e27ec6884de37e07deeb9d1efb626cb6740647208a7a45860df61acf83cfff969dfb65a61daaa4a3ae58a7c5325a5d', 'saudi arabia', 'yanbu', 1, '414940'),
  (1373, 'Ghadah Al-Thubaiti', 'ghadah.althubaiti@yahoo.com', 'scrypt:32768:8:1$554c598a7d6a71ef$826f37e9cbe41918c5519b1c1d3c023fc6bd9f295fabac26d01a065eab62e612a795a23b503d2dfda7c40760cd195a5a1538d02f7ed4f3976ce0562d43508870', 'saudi arabia', 'yanbu', 1, '954318'),
  (1374, 'Ziyad Al-Subhi', 'ziyad.alsubhi58@gmail.com', 'scrypt:32768:8:1$846646f36a04c622$2c7cdb7991a4191ee88b1f26b72c152f714345e7751023912455b72185885b7b8cd197e71a4ddb37ba018d87346519da193f6dbe800a27982d114a0ae82397a3', 'saudi arabia', 'yanbu', 1, '900958'),
  (1375, 'Hassan Al-Hakami', 'hassan.alhakami75@gmail.com', 'scrypt:32768:8:1$0fd1e32ba73a67b5$8d41839b8cfc7ac3f92a0645662d274e673030cc78bc36afc1b9d180042639a1023c761e1b74e5d8cc9bf1d706f5a6433bce6c392ec33e4ac85faaf636378bff', 'saudi arabia', 'yanbu', 1, '441929'),
  (1376, 'Fai Al-Khaldi', 'fai.alkhaldi92@gmail.com', 'scrypt:32768:8:1$67d32fe94ce0c8dd$ea8201cd5271b0284276be112202dd115ced79a70ba825621d23a7cee503b62f70c33fcf0c0e929b5166bf2a619e2ba76deea3d9f7e78f7e928be7ade20b41fa', 'saudi arabia', 'al jubayl', 1, '700099'),
  (1377, 'Thamer Al-Marri', 'thamer.almarri19@hotmail.com', 'scrypt:32768:8:1$007b75700aadfa99$9ac5a7a7d977fb58e74b3b24ddc5173565dcc1d6aa5981cf194550ccf3af43de55bf62e1e8e588b80b55a3b98d7c04c9773d6bc33292d92aa5a74a05ec1a9f3d', 'saudi arabia', 'al jubayl', 1, '512162'),
  (1378, 'Abdulilah Al-Muhanna', 'abdulilah.almuhanna518@gmail.com', 'scrypt:32768:8:1$de1c7ef885bbc9e2$964247b5f70192099c560105b1d00e4a8676efa85cd236241e1e9ec696059f337caf6e7493d6213aaa0162bd0faa0133df0df7757cda8afe886b7bf366033add', 'saudi arabia', 'al jubayl', 1, '330128'),
  (1379, 'Tahani Al-Najjar', 'tahani.alnajjar549@gmail.com', 'scrypt:32768:8:1$f5ac7be2b8432caa$d7ddd92ebac53c6c9bbf44afda70f65a43e058fb609e061b6d6702bc4a5cbb0619ef326520322691b0bf93b5e53c3973e1725ec534b589f3e9e05748f75726d0', 'saudi arabia', 'al jubayl', 1, '209095'),
  (1380, 'Sami Al-Qahtani', 'sami.alqahtani580@outlook.com', 'scrypt:32768:8:1$5e37bfb31bec6f7e$c48e8f9ab1e91ca1a7edd6bd4f980d516dc16d1caa7b3ee56df5b668cdb681e2f8f1aa6409393ca5928e761a97674aa9f694315dfccfa8f1b9b51437c7a58d37', 'saudi arabia', 'al qatif', 1, '980342'),
  (1381, 'Ghazi Al-Mulla', 'ghazi.almulla1993@gmail.com', 'scrypt:32768:8:1$db8b8581cc93a7a2$0b3c721f5e26c7bb3d10e9bebb93a79d131ede9b3883289d1b6212e9aa81c9d81b883dc1db592021cd4fb2f6708539d7232ee834f242578191d5fa13fdf1fa31', 'saudi arabia', 'al qatif', 1, '583473'),
  (1382, 'Lujain Al-Mousa', 'lujain.almousa2000@gmail.com', 'scrypt:32768:8:1$cede5b7f4f60ce04$3d6b5d4df772b29f71ebc48e50c000b572ebb90e3f5b0c07491337176bb7e734d472a33f12dac35386b78dd7c5d9bac7ccc4917c770ff5f1823aadda66dc639d', 'saudi arabia', 'al qatif', 1, '845966'),
  (1383, 'Hadi Al-Saleh', 'hadi.alsaleh@yahoo.com', 'scrypt:32768:8:1$6a32917889aec1db$43c5bc4750b3bde849254382b10699c419d6b9317eb28ea3af976f8193d03aa70ac94613f84eddc5f46a75586f90effea7f57cd7c7c91f69ffa7d3efb09db315', 'saudi arabia', 'al qatif', 1, '225331'),
  (1384, 'Aljawhara Al-Shahrani', 'aljawhara.alshahrani48@gmail.com', 'scrypt:32768:8:1$d95da6de93cefd2f$225f9cbc0dafc1eb50660d433541501625bb87f97edbb4a052fa06529a0d072fdc930da98f090263cf220e138cf289e61490229ae84ca447171809c7c0a3e68e', 'saudi arabia', 'khamis mushait', 1, '112488'),
  (1385, 'Latifa Al-Bishi', 'latifa.albishi65@gmail.com', 'scrypt:32768:8:1$7993404bb511ce95$d4b2705de22e98d7f013005753fb9a4651de8174c564c778bf17738155b8333642010eb7f2a6f481d84c6fb5c3de4ce9d52fca126acb7dd72735f94c26c3cc06', 'saudi arabia', 'khamis mushait', 1, '625380'),
  (1386, 'Majed Al-Shehri', 'majed.alshehri82@gmail.com', 'scrypt:32768:8:1$9089d4a5a68f5b60$cfd80989125bd9449e27a606dae061121b0be8e4b28c864412e2113cf265350164ba30ba0c90021cd120cc3ac786fa42d8c50610a6260c6fb8203550cded44d9', 'saudi arabia', 'khamis mushait', 1, '994048'),
  (1387, 'Hanan Al-Hakami', 'hanan.alhakami99@hotmail.com', 'scrypt:32768:8:1$fc7b450249712229$46867d952fbe5ed114f8cc700eeb257c7c110dd068b237fa6966c214783a6d514dd8fe333eac929b7631f5f1dba58df7a5ee99455d6e63bf700a06a4992e1a7d', 'saudi arabia', 'khamis mushait', 1, '791553'),
  (1388, 'Shaikha Al-Harthi', 'shaikha.alharthi828@gmail.com', 'scrypt:32768:8:1$f703e6b2395a47d3$8d64f9ab9e5b6fa6176f63507fd060e404e308bb64e0d8fc4ce497d50e00f18c90b9ca981418248985e76d312576b45a31003c51e26c2d8f1f5b1a13a32c0236', 'saudi arabia', 'khamis mushait', 1, '936882'),
  (1389, 'Ayman Al-Shammari', 'ayman.alshammari859@gmail.com', 'scrypt:32768:8:1$47797ff9653aaa82$8eba250174b035087e967180e109372277d24b4e8c39149efc4b2b9a87b4cb5b0f59bd779dcb7411bdc278c3417cad747aff8ff6a50e0ec91dde800ca5d45a3b', 'saudi arabia', 'al kharj', 1, '674355'),
  (1390, 'Salma Al-Qahtani', 'salma.alqahtani890@outlook.com', 'scrypt:32768:8:1$180dda6f967568ae$67ccddc47f7190a09c2a23963547024ba04adbd32f250f50cdae04602719388ce0d763cc80cfe4c843e840da8208faed7f2166e486b84971f6cde497e6b912d0', 'saudi arabia', 'al kharj', 1, '848047'),
  (1391, 'Hatem Al-Tuwaijri', 'hatem.altuwaijri1997@gmail.com', 'scrypt:32768:8:1$ee17ae2970739a2d$258b796476d85d40cac4c3158f4699718421432ecbea87077507362d0bc896560b8ee292b2644a700b07adf9ad127763060209307ed7747d9b4cfd168db771fc', 'saudi arabia', 'al kharj', 1, '350511'),
  (1392, 'Yousef Al-Mansour', 'yousef.almansour2004@gmail.com', 'scrypt:32768:8:1$1102c974e0232d8d$d148c1829e48d2356c0882a4ba13c06a99ada1cc03cf9d43287e361324516607895597f9901aad9cd20fd50ecb7050a4fce06030e926e9c16f31f9e646c2784c', 'saudi arabia', 'al kharj', 1, '831966'),
  (1393, 'Noura Al-Dhafiri', 'noura.aldhafiri@yahoo.com', 'scrypt:32768:8:1$a3fd4a58f15aa133$12773da7ba7e7a2885055a108804b0357984801dadf9a77c1d660217f215d62df6a19849fa10ac00c9687161a79e7017dbb0b69d77645809c23dd171008230e4', 'saudi arabia', 'sakaka', 1, '279158'),
  (1394, 'Saeed Al-Shammari', 'saeed.alshammari38@gmail.com', 'scrypt:32768:8:1$7bfa5aa8e1aa1005$efd0c7cbd04ea036a531320ae0ee5d1c43ef8ec68a0efcf492406de23b3f02ff06c6bd4ea2758ec5dfee94dd0c45f4afd88257a42ae9121f5a20e4b87e4ea0a3', 'saudi arabia', 'sakaka', 1, '687097'),
  (1395, 'Fares Al-Dhafiri', 'fares.aldhafiri55@gmail.com', 'scrypt:32768:8:1$60aaa48b70df17dc$c104fbd80cf4ecb9ea0cdbbf42116cd346f81aeed87a3c0f387e6d184bedecd16cccfb717a9389d29edbd94baaf88fbbae3ddaca24710cdf903e1f3ce211bf3c', 'saudi arabia', 'arar', 1, '858747'),
  (1396, 'Deema Al-Shammari', 'deema.alshammari72@gmail.com', 'scrypt:32768:8:1$fd9aeead658c2a18$240ab1c14fafc157709cc8c5c1c0e648d28bbc3c00bd26b1c14fc052bc8c3c909f6261e0608ee3f62c2f6ecd1a537e9e858aecd3f57ed4bdc0f916b1fdfc1002', 'saudi arabia', 'arar', 1, '573359'),
  (1397, 'Mazen Al-Zahrani', 'mazen.alzahrani89@hotmail.com', 'scrypt:32768:8:1$4352ae602274141f$473b25fd5fcf5429e0cc00896ea08ba3e4aa53e969d6e7cf28c12ff7a9dc143c009b9e666f19cf20a4002a1923c568c34b49284d35eb8517cc20e903edc48f07', 'saudi arabia', 'al bahah', 1, '846122'),
  (1398, 'Faisal Al-Malki', 'faisal.almalki238@gmail.com', 'scrypt:32768:8:1$ab326d23b129f528$d12f61cea943d466f36967d8252a74666266e90e4f841039313ed490ac5a869cfb01ba20b7883188748d72d055fc72cf914ce5926ec4b1cf73f34d7714d40e45', 'saudi arabia', 'al bahah', 1, '900419'),
  (1399, 'Jumana Al-Dhafiri', 'jumana.aldhafiri269@gmail.com', 'scrypt:32768:8:1$4a391f526af3cb7a$b780878403d3a90676f4fda7dde47ea13fcfd79283fc00f1431178bde6f47313f2af2251108cf9f83203da1e96ebfa3564388cb52af02f1bd41e93a45cb43d43', 'saudi arabia', 'hafar al-batin', 1, '310041'),
  (1400, 'Naif Al-Shammari', 'naif.alshammari300@outlook.com', 'scrypt:32768:8:1$edad0d7bde813412$8f1d13dd372a023cfddaf2b6d7e630665ba4239ebec33fe92e22634f336cb0a9bb61cc2e863a2e97adaf734569efdf35028f655fcca34d6433b8faa7b9528c02', 'saudi arabia', 'hafar al-batin', 1, '957423'),
  (1401, 'Talal Al-Dhafiri', 'talal.aldhafiri2001@gmail.com', 'scrypt:32768:8:1$d659cad363e67703$6ff88cfc947b7646127412c99a04a8cb5b1c02d1ba1e59180ee4737a64348cf2006adffba2e340af680e560ec2330a669578d7787f7a95883e0ef44b5f92d7a9', 'saudi arabia', 'hafar al-batin', 1, '425985'),
  (1402, 'Aisha Al-Shammari', 'aisha.alshammari1986@gmail.com', 'scrypt:32768:8:1$39b4228e06be2294$6750840d9d2c1948e526a67c7e2e1a74010302e5d89e01caef3696f7a9d3e0dc2046d1dacb614696a3ad80dc9d59ac3b63732eda99ac4f5fb3e9a8c470a43224', 'saudi arabia', 'qurayyat', 1, '005932'),
  (1403, 'Rayan Al-Juhani', 'rayan.aljuhani@yahoo.com', 'scrypt:32768:8:1$53e960fb59989499$f40459374f067dcaaeff240a8be04727ec10bcb803b544dda71be0f584d1566b9d513725d1b6733da038b17b724901474ded7a9a515ab6cfcddcf11974c1373b', 'saudi arabia', 'al-ula', 1, '665967'),


  (1404, 'Priya Sharma', 'priya.sharma28@gmail.com', 'scrypt:32768:8:1$ca484b36e780379b$ad49552d3dd9c98cfe363ea4085c159612a4ebf3b75af6805e137166d77775a91e608d049a0d9b8c5875a91183b6ec84004e92a6b32fe2f2dbdc2267182f6330', 'united arab emirates', 'dubai', 1, '609563'),
  (1405, 'Dina Hijazi', 'dina.hijazi45@gmail.com', 'scrypt:32768:8:1$ecbde0832a219511$5d15363fca058a7d2e8dda148bef946aeaf534b3839c6050d51524d67163a9417e6501f4d522cbc6a300b3d9dcf52cb64315d2717453759a0e7b250d98b94591', 'united arab emirates', 'dubai', 1, '602512'),
  (1406, 'Suresh Krishnan', 'suresh.krishnan62@gmail.com', 'scrypt:32768:8:1$f011c6eb8a25170b$fde3d6c31c8de3e4637c3b40bcfc0d3ecfda471b6d954c111db7a24b5c789a69eb35d497f35fba9d30b049634a7cbea48c265b83789099629d3f7a822509e74c', 'united arab emirates', 'dubai', 1, '342817'),
  (1407, 'Hina Gill', 'hina.gill79@hotmail.com', 'scrypt:32768:8:1$c77adfde0ec116fb$67871295d52416e6182854bca2ed02b2c338682919301b82b5bd51fc7d7f045eb1b7dc14fc8522075893223f94520539fe75298f1444b0c602f095929916b1fe', 'united arab emirates', 'dubai', 1, '626324'),
  (1408, 'Dana Al-Muhairy', 'dana.almuhairy548@gmail.com', 'scrypt:32768:8:1$04a70273b398998e$09f9fc9f15dd905ba8b44ac22e03688e91732abfeea2dba6593973ca7c8384c88ac0160b3805409d79eda0b06db30c06f79d7d5c6f18fa53e4928efc7d3da2b4', 'united arab emirates', 'dubai', 1, '224412'),
  (1409, 'Joel Verma', 'joel.verma579@gmail.com', 'scrypt:32768:8:1$821a29a40ab7828c$57a97cf5c3e241c116114f55f624e17d394d958145d3a7fb92c4cb59d5e73f96d53d37000f17f067c2d5b853984d851238bf82ecdef736a371820277ec498c64', 'united arab emirates', 'dubai', 1, '754155'),
  (1410, 'Liza Mendoza', 'liza.mendoza610@outlook.com', 'scrypt:32768:8:1$89fd53b04bdc3bbd$3e570f9bd52fb91edc631fa59f16a3e8b7215da1f1d6067dc47df989680355eeb2878c136bbdbd16cb306032f4af0cf63f5507dd8407610a7077558f2a523b7d', 'united arab emirates', 'dubai', 1, '647129'),
  (1411, 'Jad Eldin', 'jad.eldin2005@gmail.com', 'scrypt:32768:8:1$dfb43cca2f675cf8$f7144c492f61a6f59782bdbbf96e7c7756d054140d43c69960312d9b4715699798beb2ce128acd64edaa49095018bcad85818ba0a976fb7fcf742449219024a3', 'united arab emirates', 'dubai', 1, '107797'),
  (1412, 'Sunil Thomas', 'sunil.thomas1990@gmail.com', 'scrypt:32768:8:1$528f7a80d484c142$5de4c46f39343591ad593d8d85c9ca548df2f6663798810c8d353fad18a0f6b2ae1192fa3dc604f53a4a6ed52f996082fa91622931c1d483039d9239f24f7919', 'united arab emirates', 'dubai', 1, '393673'),
  (1413, 'Mehwish Baig', 'mehwish.baig@yahoo.com', 'scrypt:32768:8:1$d5274884234f0278$6a37d80b4d7c0b8310c8e1ede4c4e3c8e1fe9a9a111a5b0eca8dd07ed4e25061903e64da978ab5a5aa3d2f3bedc75645589d2031b94389f8c60c2a6c42c00108', 'united arab emirates', 'dubai', 1, '087315'),
  (1414, 'Chaminda Uddin', 'chaminda.uddin18@gmail.com', 'scrypt:32768:8:1$ca7fefbd83efcf8d$acec9e2fa7cdce64f4765c9957cdefa8d644da13515ef6a7805fd6a5efbfc41633b677e4aeec10e16789ea382a1f559f04560b0c10034baeb6aef2732e6a240c', 'united arab emirates', 'dubai', 1, '719942'),
  (1415, 'Ouda Al-Shehhi', 'ouda.alshehhi35@gmail.com', 'scrypt:32768:8:1$02c61112d4b7c195$4b9f4e9aa85239309b420d57abf30031060e577d39cd494abd2033b7a95bfa63da70b9eeac56617ac07a2fe0e6e3fafd53fa900e9cd821df19280de64908ea7a', 'united arab emirates', 'dubai', 1, '483132'),
  (1416, 'Sneha Rao', 'sneha.rao52@gmail.com', 'scrypt:32768:8:1$953bfbbf38d5ef3b$cfb9f6a79c7ab031e2b7faab149772bf191a9475431129529b2822c7d17c0903f0eaa3962b42c8cb63549285586bc7fdaa3fa9015dce8fee848de534a81fe7fd', 'united arab emirates', 'dubai', 1, '665581'),
  (1417, 'Majd Mansour', 'majd.mansour69@hotmail.com', 'scrypt:32768:8:1$e995cae1579127c5$f808782fb71cae448318ef78c5af03d15b3a4834a1f935f651d75fe17c184dedb91cbe0029cf8259fae7a85c5d8a2356cb478fdccedb92298ebae6c172660704', 'united arab emirates', 'dubai', 1, '883732'),
  (1418, 'Vikram Naidu', 'vikram.naidu858@gmail.com', 'scrypt:32768:8:1$7e7e0524f25f38f4$6cc965c79a7ed3f84e9e80d00581ada7859e6591388df836d6f68d95108b3b665e094ebe486492d3dec263b29296fd674620c2155764de624539745e337e3a36', 'united arab emirates', 'dubai', 1, '662294'),
  (1419, 'Jasmine Navarro', 'jasmine.navarro889@gmail.com', 'scrypt:32768:8:1$b9acea116036d5c6$75d271d88fd2af27d60d1fd23d2bad9ed459bf75feca350e27f8b52f877163ecbd8deb8518dc1ae877ee028eedf18400aeeb0a3b11a71b03046a9a3843d16795', 'united arab emirates', 'dubai', 1, '381283'),
  (1420, 'Adnan Bhatti', 'adnan.bhatti920@outlook.com', 'scrypt:32768:8:1$7c45ca0f38b5a5ff$726d18d39d184271c5d5678232ecac9dbe037436b8bb7a7f0ca5554fb2138e2daf3c33de5a4dc05e756db0ef5296fdf808fb98c3c7284ce684386616fa9d9bcf', 'united arab emirates', 'dubai', 1, '927862'),
  (1421, 'Elie Salameh', 'elie.salameh1987@gmail.com', 'scrypt:32768:8:1$c6f56422301f731b$72909bc51c97ceab80b6fe601e76ecf22319ea182a5d4f6bf1cc333bfb319c67d5d099422d466cd9a72d2b1ca67d1af5dcb4c1bf6bdc350467c4159670e1d763', 'united arab emirates', 'dubai', 1, '318364'),
  (1422, 'Deepa Menezes', 'deepa.menezes1994@gmail.com', 'scrypt:32768:8:1$25d25582c87c4716$9c9ea3fa9decd76384f9c78a964f09d0db7315d5951227fd70e1d3597a91cddd9dd545c072e4d194d52f02ad2e570c7f4f02fc50e990b5ef25d3d9376bd45d26', 'united arab emirates', 'dubai', 1, '132695'),
  (1423, 'Rashid Al-Matroushi', 'rashid.almatroushi@yahoo.com', 'scrypt:32768:8:1$42dfbad969023160$a60ad8ec33475e8a28d06cd0fe0316f70257985c05eaaf09b7a8e61600eaa3152eafa63606094748e13e8f2fb7e350470552b7afacdc5de9fede7543cb4f3c67', 'united arab emirates', 'dubai', 1, '353041'),
  (1424, 'Smitha Patel', 'smitha.patel98@gmail.com', 'scrypt:32768:8:1$96bd1466b39c5488$85508fe2cbef42a196e5bbeb8ad9b32f350d0a3fe92bd8e6ca7631e644304ab548642b03c465fee1eb77b7f25b983ae4195b28606358c7133f06b9f31a532c9b', 'united arab emirates', 'dubai', 1, '537444'),
  (1425, 'Sanduni Fernando', 'sanduni.fernando25@gmail.com', 'scrypt:32768:8:1$9edcb1c5ad8f8aa2$d33885b6c8e711fe3d8bccf3034169ee661aceb0bbdeb6e4b05f31fb24ad5618bd6ce7c31ca497160024f2be8e6178a075a80abee7a3dba7c1312367ec301480', 'united arab emirates', 'dubai', 1, '888201'),
  (1426, 'Bassel Khoury', 'bassel.khoury42@gmail.com', 'scrypt:32768:8:1$71c6d92b3918669a$80ea124cc3aa7e0cdcecfeeebfd875c1065448c0a02a4525f0b4dc077a8ca61509e5ba814801fc71837219bcaf8a44d93facdd17f709207e2deeaa07027ccc52', 'united arab emirates', 'dubai', 1, '914079'),
  (1427, 'Nida Ahmed', 'nida.ahmed59@hotmail.com', 'scrypt:32768:8:1$36063a76b03e1208$4bff1e444ed62fe2692150ef9430c19f0618c040938aee9d97e54b9517b86aaa3730640f405d2db2e8d6e0595907049f389e8080097cf7a7542ada49ef804559', 'united arab emirates', 'dubai', 1, '491231'),
  (1428, 'Shreya Nair', 'shreya.nair268@gmail.com', 'scrypt:32768:8:1$cd2b1b97843eb78a$8c579a3169af6e34d43415411a7d3951f4305b9dc34f26a5e6c5a41988b033d64df989adc8e24b1abef34e94575cf31b4e5a5066055a02fbccb427cb9cd96595', 'united arab emirates', 'dubai', 1, '105069'),
  (1429, 'Arnel Torres', 'arnel.torres299@gmail.com', 'scrypt:32768:8:1$d17943e765bb45d5$9fd3d1161f2f4ab2531445bfe9c838a92e6272e3d606b4366c1f0a136688205d13dc6da3d1ec38f038bd56fd06de90e905bf53b6be45da24d90155c4793f817b', 'united arab emirates', 'dubai', 1, '087366'),
  (1430, 'Jincy Singh', 'jincy.singh330@outlook.com', 'scrypt:32768:8:1$5c19f13ad30636fc$8f6fa3f2f595807d882c28c4dc850d038f099394e0cf8ef66c9f4c2034d92aa81487222af066d1fb88b3f803f3446a6d80b898a3e2bdf3f28492f960d6f9f218', 'united arab emirates', 'dubai', 1, '749590'),
  (1431, 'Tarek Khalil', 'tarek.khalil1991@gmail.com', 'scrypt:32768:8:1$ab857c20d0e09347$0f5d2843a23530fe0eab6175eda181bc0c92c355c358d82d524cc9baf0af51906a2338073425825a5975c4e9eea16e03bace2131c3fc7b907bed0240d2fc7e34', 'united arab emirates', 'dubai', 1, '090459'),
  (1432, 'Mubarak Al-Hosani', 'mubarak.alhosani1998@gmail.com', 'scrypt:32768:8:1$094654de5c81e9b2$ff75feed7d55b588c7d57bc0539af5bf5db7a3f9c877c4df1d467e528f80571146284f54a9704b385bde616337c520a5078676934f081fa0c185000ed0faf214', 'united arab emirates', 'dubai', 1, '568067'),
  (1433, 'Sunita Pillai', 'sunita.pillai@yahoo.com', 'scrypt:32768:8:1$513aed563d9d3351$84b84bf3475c914f0a60ddacc596036389bf345cbd8e285582624289201d48661c2d47192508d98ac95ef0b5ccd670209a798f6c93b6bf4e5e544277933c73f2', 'united arab emirates', 'dubai', 1, '297409'),
  (1434, 'Rizwan Qureshi', 'rizwan.qureshi88@gmail.com', 'scrypt:32768:8:1$a02991d23c20026c$51f49d56391274bfd36e31773d2f8604aec3c90f738b59f5443c016f69e6a1fcb25d150744771ef513d765f170a759c5bcdd1f88de3eb62a9a666ba14d8bdca2', 'united arab emirates', 'dubai', 1, '086981'),
  (1435, 'Amr Hijazi', 'amr.hijazi15@gmail.com', 'scrypt:32768:8:1$20de630d0345eb86$56d230b7b2453dbb672ac109b1d972de3915140f1dc42a115fea1ad54642c15adce6bcae3599476bfcea7e4ef6ee27108202e396cd45c1abfed23fdd48786f4e', 'united arab emirates', 'dubai', 1, '537063'),
  (1436, 'Revathi Rodrigues', 'revathi.rodrigues32@gmail.com', 'scrypt:32768:8:1$65efecfc3d5b725e$7bb703a9e140168018bd8650886bf319c25b5ee849d7cd6e02168e75490e983f12f42bff672f49348196532fdc07a8d32e9b0c2b3e2252631b551645be78b4a2', 'united arab emirates', 'dubai', 1, '717877'),
  (1437, 'Tanvir Fernando', 'tanvir.fernando49@hotmail.com', 'scrypt:32768:8:1$07b3e6707c5cf361$33c8e94dcf2df11d6cfe89e6925e7240797d690c3532fe3929cfd2f5d46a34fb1a6c09bdf03bef2b7c26113ecd3a04135c53653a96de7168b2b05692ebb39977', 'united arab emirates', 'dubai', 1, '771593'),
  (1438, 'Francis Bautista', 'francis.bautista578@gmail.com', 'scrypt:32768:8:1$99b4b5256be42ee3$2f5d85c357fbe43763c54f72647af718fe71905e231ec3cc6d3ae460413ccc365657aeb58ae2d0ad8bc41e343a54efa0691db62b2b22e9d5523845459491349a', 'united arab emirates', 'dubai', 1, '864899'),
  (1439, 'Nisha Krishnan', 'nisha.krishnan609@gmail.com', 'scrypt:32768:8:1$a9e290d34439eee5$1c9ae3e53771c085f8a978101849f5e34a7b5ec70f5fc07225532996ae660cfe05509d92d5a0ecc91823f2e7866498a3ca98b20859a8dc55f5e5b329b9d4216d', 'united arab emirates', 'dubai', 1, '808122'),
  (1440, 'Hassan Hamed', 'hassan.hamed640@outlook.com', 'scrypt:32768:8:1$a98618dae12b805d$4ee0eaf56a57c8d84a68995648868bc6e47f54da8ebd93ff497c26e9a81a1cacb6272094a09496dadff7c4acb9ffed78f157002348fcff832a3e7ed778ffcd8a', 'united arab emirates', 'dubai', 1, '623312'),
  (1441, 'Junaid Hussain', 'junaid.hussain1995@gmail.com', 'scrypt:32768:8:1$d84041191c11bd21$1b67d7c23911e9907bf3456470112b71a1a733e5abcabac6263303db9018d8549f5d05f41d245ffa1d7787206a01c7a2d97a30e5be5a03741572768bfc9427d5', 'united arab emirates', 'dubai', 1, '466656'),
  (1442, 'Mariam Al-Dhaheri', 'mariam.aldhaheri2002@gmail.com', 'scrypt:32768:8:1$c127249840addb41$1adf7f8545c9b78a3189018883382e1e59b0af1e7902d7afc329c1a0c5cfbd0935e5fe1a3bca58d469057808bf6b5bc89341e4d1728404181c7627f10882a460', 'united arab emirates', 'dubai', 1, '005038'),
  (1443, 'Joel Mehta', 'joel.mehta@yahoo.com', 'scrypt:32768:8:1$cb0ac5b031983908$22417c1737671eaf145c162ad575e72149e2d5f73d6a31044affb3c434c16f51f308958a1106e2cb4aa1877ef580ded5e9a706ff7abfa7da1477dbb4af3bffea', 'united arab emirates', 'dubai', 1, '619098'),
  (1444, 'Hala Haddad', 'hala.haddad78@gmail.com', 'scrypt:32768:8:1$ad0a1d1995512f59$bd1bcec649db21a0a59b3ce845bcc0f136accb80d5d933c6259ebddb1aab82c77cea96f8ee3c28408cc76b95c3fe9caa71336f2540905fc0a1a06bfe4102e875', 'united arab emirates', 'dubai', 1, '450516'),
  (1445, 'Rekha Thomas', 'rekha.thomas95@gmail.com', 'scrypt:32768:8:1$b31a377502b4cdef$3b8e10578bf62fdf4814c99ce8da65fa243d106408ad11fc2f51e85d0e71640889d2a9b83d7065bbe5ca47d42e7544a8cad34b08c80d25fa6c16ab42c88c4e8d', 'united arab emirates', 'dubai', 1, '393448'),
  (1446, 'Faraz Farooqi', 'faraz.farooqi22@gmail.com', 'scrypt:32768:8:1$d5fda44553c49036$01e947b3982e61ab261601104aa6ec4bdbeaf98e1b1aaca721303fd37a8997b27300f8fcd76e2a4a8d76a6aeef631d251217e42c4f8db4dccd39a71e9780a88a', 'united arab emirates', 'dubai', 1, '342173'),
  (1447, 'Cristina Torres', 'cristina.torres39@hotmail.com', 'scrypt:32768:8:1$52e53936c5b8114e$40f70cdbcbc8358041375f385c48a5c5a72aa2e26824674ec4f30b7f96e5854f7b5691546ec9087a49e5250e1a4fbdaca875b11ead4142ae74dfba35f9688cad', 'united arab emirates', 'dubai', 1, '485723'),
  (1448, 'Mona Hamdan', 'mona.hamdan888@gmail.com', 'scrypt:32768:8:1$d9ba3ab07687dcda$e79cacd0c59f0a384416df3c53f81f9e6166270b26bb9b0f1372ea108eef7099ca038196ef1599ac8ccb8a5def4f9a6efaa0d97966079f4fe0824a52166251a7', 'united arab emirates', 'dubai', 1, '792204'),
  (1449, 'Sandeep Rao', 'sandeep.rao919@gmail.com', 'scrypt:32768:8:1$6abd7ce892e0be47$252922966a3290c8b6855bf4ff0bed44efd48d843bda9293d8dab1d0bea027a2812d2dbaeefa039ba956ab533bd7bd62dcc044f282c5531f7e7eb2a97850c104', 'united arab emirates', 'dubai', 1, '352968'),
  (1450, 'Thilini Uddin', 'thilini.uddin950@outlook.com', 'scrypt:32768:8:1$d0ce2643d60e7b24$0986f9a4d4ca93923504e9e791eb3855edf4cd8fe6c4df17f96c6cdcfbe4252e3dc2d021af5088bccabe89d11f735366baaa45ff2a6653f1d9bade5d071b10f5', 'united arab emirates', 'dubai', 1, '701982'),
  (1451, 'Ouda Al-Suwaidi', 'ouda.alsuwaidi1999@gmail.com', 'scrypt:32768:8:1$c118d6b08f0d08f1$176d4fd7a5158b971ecfbca7d619f4ce1dae7a26eab86a7c997e9e3a7b3e99ca5498f00cca664dcabddfb1e3671b8910db9db876641aa3f250f965bc6b40e984', 'united arab emirates', 'dubai', 1, '417038'),
  (1452, 'Vikram Iyer', 'vikram.iyer1984@gmail.com', 'scrypt:32768:8:1$70505e057cfd80d9$2e93c8473c688169a397aa01fe0299b14deb31d9ae002e595b2aa5c4852e7c7c7a70fc42f9201d3a84cf7af652f218bc75489ae264913e1aa977036e29a6391b', 'united arab emirates', 'dubai', 1, '055103'),
  (1453, 'Suha Hamdan', 'suha.hamdan@yahoo.com', 'scrypt:32768:8:1$2ea61937cc266595$513e465b3ff68e861b56d0a1ed2d5d567d1a91c664083f6ffebd9a3334c25273533a3de5ef7047cb4a718b2b7e8822492f1c397ccb7a36dfd6746beac6727b18', 'united arab emirates', 'dubai', 1, '649338'),
  (1454, 'Zayed Al-Shamsi', 'zayed.alshamsi68@gmail.com', 'scrypt:32768:8:1$5ec46c2e21fc153c$b45fec3f42697114e658e236330484f2b174126034c10b16759a1ef9e28903f355e4550717a159f3fef531d18e4fee7dc21ccffa9ba8c463479f0c7df3db9a95', 'united arab emirates', 'abu dhabi', 1, '422501'),
  (1455, 'Prakash Menezes', 'prakash.menezes85@gmail.com', 'scrypt:32768:8:1$913cbcd411eb0cbc$2d0f4719cdad24f7f884e269139d338ad58d37d86e323024756b9ac255bcfd7ef03d030332c0d9785066c3160a86606f15f79516b0bba48613f65e5f567256d3', 'united arab emirates', 'abu dhabi', 1, '909566'),
  (1456, 'Hiba Eldin', 'hiba.eldin12@gmail.com', 'scrypt:32768:8:1$8dcc418593511160$c9b722b1832ad9740b75e79fba28e93f3191269c93e2d63c316d5331fa560b6af27d5f6c49a0ee15b4aeed6175c6332394ff4fd52b306a0696c4556fab5094dd', 'united arab emirates', 'abu dhabi', 1, '049633'),
  (1457, 'Ouda Al-Marzooqi', 'ouda.almarzooqi29@hotmail.com', 'scrypt:32768:8:1$25701b8e168b25f1$32dcf1db1fccd861db5b8c02d27136f417fdd2bb51f172750024bdf4a01ad4cca3d784b2627f6efa91dea97c7c1b4ef66140b088389df1482c8b7022bd82de75', 'united arab emirates', 'abu dhabi', 1, '813566'),
  (1458, 'Rizwan Mehmood', 'rizwan.mehmood298@gmail.com', 'scrypt:32768:8:1$c71b4236ba866f20$ae35a9a8bf2bc68c9c222304b2cf2f05f9f5c69e13d5759a450d50a2ac7a288f3e8f03cba11e412dcc935ce2a415f5a0aea17943df5f0a113384e5b30e9a7798', 'united arab emirates', 'abu dhabi', 1, '356693'),
  (1459, 'Ritu Mathew', 'ritu.mathew329@gmail.com', 'scrypt:32768:8:1$2a0b76b5f21eb9d7$e962139db46357cdd3bfe0fc47e7922e8557c91c13873bd6cb97f68a9a13d0de0b321536548a29a54774dc0c17e936c89462f90abd4c379d1bb812f719950ead', 'united arab emirates', 'abu dhabi', 1, '641845'),
  (1460, 'Zayed Al-Marri', 'zayed.almarri360@outlook.com', 'scrypt:32768:8:1$96f02cfd12b66712$58ac6f90b348f0b9d2614ec3e36f7ceaddb38623e4196f349663dae3ba48ac80fe9abccea54859ef92c2da8b0032719d4863da1ae5b25f03f254b04e5426380a', 'united arab emirates', 'abu dhabi', 1, '513031'),
  (1461, 'Arnel Garcia', 'arnel.garcia2003@gmail.com', 'scrypt:32768:8:1$05e514945bf8727d$8f1978fcecf8e9a4bd05ffbc87adcc3b2c22d90e8599035f48ccf8e7b157e1cd1ea43b25196583fa4bae73865efe8ae33152ebd7b8e41de9abd622a1ce1da312', 'united arab emirates', 'abu dhabi', 1, '551643'),
  (1462, 'Rola Mansour', 'rola.mansour1988@gmail.com', 'scrypt:32768:8:1$814b437383da507f$7b9d32ac478b3fa4b585b68bc0bd82116dcc9d220ac7e5038c54f4fc4e2eac7a16c8d1431449b54e6e06bb653aaf6572c4fb4c60e38e75c534843c362856186e', 'united arab emirates', 'abu dhabi', 1, '110332'),
  (1463, 'Ouda Al-Kaabi', 'ouda.alkaabi@yahoo.com', 'scrypt:32768:8:1$9231fb555c80c8d5$de479893471f4d46d5591f0b20fd8160516a92b368068c6518cf313bed14d61e5950ba26c05415556511f2da0d7d922aa203167ca2fea55340df9777da09f31b', 'united arab emirates', 'abu dhabi', 1, '212937'),
  (1464, 'Neha Dsouza', 'neha.dsouza58@gmail.com', 'scrypt:32768:8:1$1d241d9f4dc87458$8640275997cbf3ff9b79d05a6d664ce933e696d07e56f7eb2b76724e65c9acd680d2e346e8daf454d1b889fd9ce6e5eb21fcd952add48b7f525370576b4fcc3a', 'united arab emirates', 'abu dhabi', 1, '786315'),
  (1465, 'Sidra Ansari', 'sidra.ansari75@gmail.com', 'scrypt:32768:8:1$9da0feb98fc200c3$a6d312151ecd1aa4b6b36d76a75a1aece313069e192bc70c80c2f3d93e762535e26e38e077bd9250854ad66b7c8f625c28d253e29f9751e800644d33c7bfaf3b', 'united arab emirates', 'abu dhabi', 1, '736267'),
  (1466, 'Zayed Al-Muhairy', 'zayed.almuhairy92@gmail.com', 'scrypt:32768:8:1$d29ee79623cddd90$9fe30bc86c3e7bf0b92f503172b45e7a72e1b41da64b3e42655d35c8f98ccb4131e838b39ff12a89ca6e2cc2eba3afd6ba3ad6d5204baad0a410690c753e4e16', 'united arab emirates', 'abu dhabi', 1, '160175'),
  (1467, 'Nadeeka Fernando', 'nadeeka.fernando19@hotmail.com', 'scrypt:32768:8:1$7f65293079e3936c$b315b08a67bc9dc0ef306129eef5a7043e8bf60c52629b83f9dd63d420a26599f7c72841a460994dcfec2968ce0b3da1b57930a8750f849f2b5d7faf90c4f2d9', 'united arab emirates', 'abu dhabi', 1, '315355'),
  (1468, 'Dina Hamdan', 'dina.hamdan608@gmail.com', 'scrypt:32768:8:1$11c78ff8d1c245c6$7a01e0c3a4aea780a8c4eeb74bf64e2587babe0987af22b495487bbaaa0c30c85bba53f1569004464d677f9dd623cd533c1d7767e1bfaf4c524953180788869b', 'united arab emirates', 'abu dhabi', 1, '213753'),
  (1469, 'Ouda Al-Mheiri', 'ouda.almheiri639@gmail.com', 'scrypt:32768:8:1$62ed2fb686b7f82d$b64d349d14a2be4ed1296b7ceed90c5989750f20453f95a818aed2762f40ae96d7e4c0c8445229da7f178eccebef29d8c80df1435edbb26bd1ead3949a44ef1a', 'united arab emirates', 'abu dhabi', 1, '651336'),
  (1470, 'Sneha Sharma', 'sneha.sharma670@outlook.com', 'scrypt:32768:8:1$18da6aa84991f00f$31034da26a565c7c832ff60e2d033151585efde8a6d8503d9f5e03ce361e3e871fda6de836fdc51f5ab2e659399bb7486249c79f88480c80cfeafbeb6e3a97fb', 'united arab emirates', 'abu dhabi', 1, '231336'),
  (1471, 'Angelo Reyes', 'angelo.reyes1985@gmail.com', 'scrypt:32768:8:1$05ac2a0fbb261a11$60a3f17c154a76f9a91b6462ce8289b7e26ac9174a0e152be2eee868f5c5362dd80b4c52752f44fe4a126ebe4938e83390f4b41f369f85b38861b2dd2aee2af3', 'united arab emirates', 'abu dhabi', 1, '416027'),
  (1472, 'Faisal Mirza', 'faisal.mirza1992@gmail.com', 'scrypt:32768:8:1$28b8395ba4d3ff3c$ae681eceee32d910bae8ae16654a8e1fcc8d1bbbb866a3d89f3cbe4595b2038ce233ca2cb006994b111485c2dd9770327d04fe1ede87800c744da0576308225f', 'united arab emirates', 'abu dhabi', 1, '439073'),
  (1473, 'Reem Al-Shehhi', 'reem.alshehhi@yahoo.com', 'scrypt:32768:8:1$f1afc0877d8f53c5$36354768c476b5a3298ec418789beab622adaa20c8406b116115fce6d2690f7bd3e306cdea4823dfce57894bb9b5d53770d3d20c8250491c179c7276a20a4784', 'united arab emirates', 'abu dhabi', 1, '652797'),
  (1474, 'Ahmed Haddad', 'ahmed.haddad48@gmail.com', 'scrypt:32768:8:1$c6db29a73b632aa1$cb102460ba326f747d981bc4da614b07a501359e5c3c580d88a410db9f99931397bb5e31ea497cf125f5a19986dc17ff785354ef12fcafb6907f61748ce50823', 'united arab emirates', 'abu dhabi', 1, '043694'),
  (1475, 'Anil Verma', 'anil.verma65@gmail.com', 'scrypt:32768:8:1$cdc01d32fa7ff7ce$5ac9fbe8107d22690381e59acf4f51e300dfc3146431ced8b2659da366fec0645de21d15819d12203b547d8730fe4306e55e9eaa216d9725aa68f209e5836d5e', 'united arab emirates', 'abu dhabi', 1, '781968'),
  (1476, 'Sheikha Al-Blooshi', 'sheikha.alblooshi82@gmail.com', 'scrypt:32768:8:1$f1d2b5492ba7dcb2$3971c48b34d0a2db94cfca2c50588d47090d304f2eee1b01cd8190cad6e5424377e405179f07a889b5a63bedcbc5abdc2dc3530a03740617cf9cdc44147f731c', 'united arab emirates', 'abu dhabi', 1, '143836'),
  (1477, 'Kamran Raza', 'kamran.raza99@hotmail.com', 'scrypt:32768:8:1$ae17768c596d232c$4eccbc4862711bcf02c32bbc5b1ed56c5c90c1e498468bf226879d1f21a2aebe73299c774ca00d174a3aac0ff9230d6ae8cdc6e693eee3c65016fa9a27748654', 'united arab emirates', 'abu dhabi', 1, '062487'),
  (1478, 'Mazen Hamdan', 'mazen.hamdan918@gmail.com', 'scrypt:32768:8:1$346e903c20788ece$c4ccb241aa7fa10c528ac9cf7537ab5a648faf93ffbd44783a1ea8f941b7e91d028d93b78a1209ed27878fd161b9fefccba3aadae00dca6ee2e986c392f44208', 'united arab emirates', 'abu dhabi', 1, '931073'),
  (1479, 'Mouza Al-Falasi', 'mouza.alfalasi949@gmail.com', 'scrypt:32768:8:1$b08591d9614a5a41$ec97039d57abf63fe06fb359ae33d60eef63cf1fc5791a06d9b5f43d11bab0ca5dfd97cdb0abf50b87e6a459b24a8f97c13cee8601ad9ab4d4a31735ad49c747', 'united arab emirates', 'abu dhabi', 1, '012047'),
  (1480, 'Sunil Menon', 'sunil.menon980@outlook.com', 'scrypt:32768:8:1$cd9ecf6fa2374877$d4f6d9dfd5195de98c64eecb75e7e373014afbf4a5b98b28d5dc36423350a133ed2967aca5896b0ed41677f161f74746a8b688ecbc9c4814b9e167d2d1e15163', 'united arab emirates', 'abu dhabi', 1, '269259'),
  (1481, 'Mark Soriano', 'mark.soriano1989@gmail.com', 'scrypt:32768:8:1$f8477d15a0f4f53d$1bfbe2e57ed1889cf9a49288d6f0f017996357aaf52f349dfd9cb7ddb366edfa62bb75da813a7b0fb6b3c57f5e97f0eca69e9d1bbbcce6aae2314c54679b4a86', 'united arab emirates', 'abu dhabi', 1, '458424'),
  (1482, 'Meera Al-Shaali', 'meera.alshaali1996@gmail.com', 'scrypt:32768:8:1$0de6b97060b4c3c8$bf00b04f1e155ac763fffbe0a434ef38052e7a0285f60f70e3678412448d642dce1672ddd14e0a615d3e156fe7be9fc31dd2b8dcc8f34003b728b95ac98ea92d', 'united arab emirates', 'abu dhabi', 1, '775013'),
  (1483, 'Charbel Tannous', 'charbel.tannous@yahoo.com', 'scrypt:32768:8:1$e69450bb37d66bbc$eb8f9bd971977cf464526d214cbbca58c8bf237b6fc4f41d1c1861ae666007c3ef997a84617ee0b2f0ea880a881b0ca61bfd7689e4f41ceff685136e2aad75ac', 'united arab emirates', 'abu dhabi', 1, '524673'),
  (1484, 'Zara Akhtar', 'zara.akhtar38@gmail.com', 'scrypt:32768:8:1$9cbe2ef9bc351416$58442fede24d9e93271d5c80491d1f5ad3fb9b8a0cf675b275b93c77437feec001a9e880e97809f0d61492c33e7d5c81a0dacc889c4d289d090b131aeece44ad', 'united arab emirates', 'abu dhabi', 1, '712907'),
  (1485, 'Fatima Al-Tayer', 'fatima.altayer55@gmail.com', 'scrypt:32768:8:1$fbe12d2bf0603321$4a81f81ecde6b0134a50b40966ff12efb3212f5ba52c58eed5f0086a260a57bbd7c37b6d8769d04a8043367d7b77ec2d7c976a43b46a12b1ccc111e77e1b325a', 'united arab emirates', 'abu dhabi', 1, '386570'),
  (1486, 'Vikram Bhat', 'vikram.bhat72@gmail.com', 'scrypt:32768:8:1$d9efe77fe0e4a79f$175a16cab2e682320cd4e1ee7eb812aa066c7d06b61469e1ef351b98c3583686def4a6f4690da29aaca908b647e871aca8eba418d8788effccb32dcaae136571', 'united arab emirates', 'sharjah', 1, '002925'),
  (1487, 'Zainab Hussain', 'zainab.hussain89@hotmail.com', 'scrypt:32768:8:1$0e43414933e9d698$3550f4991a3d98fa11748def373ec868b1a334f3eff720feaa6a183bba2618b4180fe17fb9a58f56528560d5861d6db7a18f840cf4c2f6567527883f045ff825', 'united arab emirates', 'sharjah', 1, '844549'),
  (1488, 'Lina Hamdan', 'lina.hamdan328@gmail.com', 'scrypt:32768:8:1$7d8074ad729d68b8$a77b9ee7daf2ecf846658e26705bc9ba744ca0147f9946bf2bb653c927d03cf6280fcae26ebe6f9b34d4c85b12a73fb0a1fd9acf9748eed91c93d8cea2abca19', 'united arab emirates', 'sharjah', 1, '547076'),
  (1489, 'Rashid Al-Marri', 'rashid.almarri359@gmail.com', 'scrypt:32768:8:1$5e29439abe59891b$39085125715c32b3f8c03373f9289410854fc497d9b3739edca0b2a642417034eb0c48505df37d132fba797d81f2d493507cd1f361bc2a2d18320a88841dd7f1', 'united arab emirates', 'sharjah', 1, '131591'),
  (1490, 'Revathi Patel', 'revathi.patel390@outlook.com', 'scrypt:32768:8:1$81d5982cf5a878dd$5c9005b1a18b58b9baef314df94d6a4c61a90364356566f391f68a360ec9f9d8528ed5725cfe81b119b3c9435c44c36f9b38e07f4de1a7b485d0dc2d1ef5d3c6', 'united arab emirates', 'sharjah', 1, '889205'),
  (1491, 'Karim Fernando', 'karim.fernando1993@gmail.com', 'scrypt:32768:8:1$8db1c536b0454ceb$9b4d720404b9254b044de19ef54b7c99b001e8e2135cc0bf42e8d42c0f5e4618a9ca6b40d9cbfab52cdd35932bc44b9aa67e51a29caf493a4262c4233965627d', 'united arab emirates', 'sharjah', 1, '671255'),
  (1492, 'Adnan Farooqi', 'adnan.farooqi2000@gmail.com', 'scrypt:32768:8:1$b76665361d156b6e$9da76d9ce6cfb1cd59630ff9b5f4e83ce01df9e3d9038fb76ef8649f6701c82d4567396b53f9636443edad8be4c2ad86d1c22b1553121f19d95fda6cc7497bb8', 'united arab emirates', 'sharjah', 1, '135333'),
  (1493, 'Rana Hamdan', 'rana.hamdan@yahoo.com', 'scrypt:32768:8:1$db20f01110b0aa39$5e33e16e076613a435e748da73bf55ea6b9e371af38e9ae45eb9ea3049aa5626784589fcb83fc9275fa8632e50aae57e19eaca517d07e380bbb885afb162f550', 'united arab emirates', 'sharjah', 1, '102226'),
  (1494, 'Arun Nair', 'arun.nair28@gmail.com', 'scrypt:32768:8:1$dfe87d396a07cd9a$dca2d063caf4eef6524d2033ed257ff49e5222089854f69b4ea99a30234ad4e1973056ab828de958c35a8f236c5f051d1bad29899a11cd160973a67980603269', 'united arab emirates', 'sharjah', 1, '105601'),
  (1495, 'Rashid Al-Muhairy', 'rashid.almuhairy45@gmail.com', 'scrypt:32768:8:1$6186892ed41c8e2f$487e7940ba44401f818f796d9b79cd79dae23b98cc58af6a061e234190de765dc4d98628efca9e359e57b2a15bf1cba1ffc171b096b6ff2a0067ba3f5090c210', 'united arab emirates', 'sharjah', 1, '595047'),
  (1496, 'Rabia Ahmed', 'rabia.ahmed62@gmail.com', 'scrypt:32768:8:1$3fe0071ede220223$1f0d2846b1334be3e8387347ce30d9ca47addf41da3e7d4ac614436a3799892cbb195187469114f42fe0f8956111f7d23dc6ed3c1c7931f7cb78c16494243fc8', 'united arab emirates', 'sharjah', 1, '194383'),
  (1497, 'Mark Garcia', 'mark.garcia79@hotmail.com', 'scrypt:32768:8:1$4ca088b7a28e216c$510513bfcc137a3cb1b88f4137e22f0739428baa118ff56de41739fbb90af086efd72a93aaee47bb0f7076eea76d1cb6c06c816ba053e762394387253f935729', 'united arab emirates', 'sharjah', 1, '762087'),
  (1498, 'George Gowda', 'george.gowda638@gmail.com', 'scrypt:32768:8:1$60a44ba73965d95d$b24092d76bd36c9dafe16968550e637ba904cad4ae24043ee4c01ae20b41259eb1d8ee296762816e8d8e2ed575559533084ffda1efac9aa226f8f67de02bbd0d', 'united arab emirates', 'sharjah', 1, '220201'),
  (1499, 'Nour Haddad', 'nour.haddad669@gmail.com', 'scrypt:32768:8:1$5946397b8b6942e7$a9af93eae0cde33d141e6e0cb839d3732c8ad99dd0994b766c7b426419a94701095900b4a7a07e0500b3ec711e0211236b5f71fc1bf9076ed5edec5e60db45d2', 'united arab emirates', 'sharjah', 1, '708848'),
  (1500, 'Imran Raza', 'imran.raza700@outlook.com', 'scrypt:32768:8:1$21c5304673daacae$523c862f4e996cacfa309e214d0187f87d86f9dec0af768291190dab520fff779a554c5e5f170bc62edc8839a2ea7791fe8e997181d05a14e6e892ae88655de9', 'united arab emirates', 'sharjah', 1, '366597'),
  (1501, 'Rashid Al-Zaabi', 'rashid.alzaabi1997@gmail.com', 'scrypt:32768:8:1$90cb0a9139c688d1$6c65b2f9d7534b75cd58d2eaa9581483692ec139e03ed34003e63352c39599468497d78a90ec0f27d9e38eab6f1ad9b085b0869256343b0ab3729e2329d90397', 'united arab emirates', 'sharjah', 1, '512461'),
  (1502, 'Pooja Rodrigues', 'pooja.rodrigues2004@gmail.com', 'scrypt:32768:8:1$1910447521430a96$413f83080b6beb4607b2b3a7e9555b084ec2bf016e1f39f90dd0b10515b4b050cdae2cd59140f4581696883c71f95158298d10fa0383bf447ccbc4786b6c153b', 'united arab emirates', 'sharjah', 1, '600669'),
  (1503, 'Faruk Fernando', 'faruk.fernando@yahoo.com', 'scrypt:32768:8:1$1ef70a27aee81b3c$b4b503eafd4160b826b9cbcbe8880a766b8902aa4412beedc7f81b110ab4585c52ac3cdd898fa658f5fffbaa9cacffccfa85464b205ec3a5aeb904ddc16ce17c', 'united arab emirates', 'sharjah', 1, '131921'),
  (1504, 'Rola Haddad', 'rola.haddad18@gmail.com', 'scrypt:32768:8:1$7221660ba697bf10$db59aa52b5a8914178e3112ab7191ad68a587f85d43dceaeabb8e7a73c932c88ec22e009e6efba259626a57a98153f644ebe58eb8fdec3c353c26c62a1789a35', 'united arab emirates', 'sharjah', 1, '204275'),
  (1505, 'Zainab Baig', 'zainab.baig35@gmail.com', 'scrypt:32768:8:1$779f7f3c56427fe4$e8559e1ac76f0dbcbb73aa1e9be21e57eaeabedfe9b5498f690e4ecd2f1ab27c938db75841863f97009231a2d61d7f76a45a884884c08d416163cf8a8b1cd52d', 'united arab emirates', 'sharjah', 1, '455390'),
  (1506, 'Rahul Varghese', 'rahul.varghese52@gmail.com', 'scrypt:32768:8:1$a7d027dcec265ae4$c85de79567bb16ab7051e53054603094fa59960f35c0be8424e17e4244fd3fa3aa1572af671ca3b6a9e347d23ef9202c79d23723049cc834affe350e524ea135', 'united arab emirates', 'sharjah', 1, '787163'),
  (1507, 'Maitha Al-Balushi', 'maitha.albalushi69@hotmail.com', 'scrypt:32768:8:1$eec6e637b60bdeec$14efc9e115fda662bd4ed64dd58242efdcfd2fd964695e933ef2c21c78c9be409c772acc0cf37b56dacf22610e401bd5505b1ecb13e085f855da11fe0fc15612', 'united arab emirates', 'sharjah', 1, '301543'),
  (1508, 'Komal Yousaf', 'komal.yousaf948@gmail.com', 'scrypt:32768:8:1$ec84f0dc5340c63e$a71ecab5bc338081798806e179b21a92c0ac860db6c177cabc13cfb64c77dfa737d3e4b7297c89d2c77c5477832c1db310b34034fb2ba18bd5df0a1200c5fc48', 'united arab emirates', 'sharjah', 1, '633076'),
  (1509, 'Karim Jaber', 'karim.jaber979@gmail.com', 'scrypt:32768:8:1$5918f477269749c5$6999cebea9aafdb5d7d1dfc3f78cf2683f6f25a861083dc1b64759daaa7f79964cabc6a143ff326ef43839676d812ad969bd77f26160ec576f41f649198bf02a', 'united arab emirates', 'sharjah', 1, '730015'),
  (1510, 'Sangeeta Kumar', 'sangeeta.kumar110@outlook.com', 'scrypt:32768:8:1$6eee9316b18e7c67$1104af68effc5b5b45e4a544262fa301512156996ea42a9d7922f9d2f36ceed6eabb0f20d1a45fe8eaf8ea886d1e138a7251dc543b82b1ecd2aa218ef1f52d6d', 'united arab emirates', 'ajman', 1, '987844'),
  (1511, 'Nadeem Ansari', 'nadeem.ansari2001@gmail.com', 'scrypt:32768:8:1$00ee96b57fa32f9f$975b8c8d9e7963ad67d403325cfd2822fb892a23027ec3e94110310729b3ad8bd07e475adfa36998c0105385d79ecb8e44e82edd469dee2059d747c5b7acc330', 'united arab emirates', 'ajman', 1, '339859'),
  (1512, 'Wael Tohme', 'wael.tohme1986@gmail.com', 'scrypt:32768:8:1$680a57fd5eb8d4bc$4b506f35f23969fb2d17fc1a113826fdf48b2a73006a71393b51631c8d3139013df7847e0e7865a326f2b639d9e1375186fb6dd4fd7bda66d0f83246e68f4e7d', 'united arab emirates', 'ajman', 1, '895029'),
  (1513, 'Shirin Chowdhury', 'shirin.chowdhury@yahoo.com', 'scrypt:32768:8:1$0ce49c6e6321a1ca$e07443a15e7fbb4f733eef0e2db349246988bb3fc88b0ebe7ac8f88ba3f791179b0c5006dce437364234575794a2528447870e66676306cfa013c373feb849f4', 'united arab emirates', 'ajman', 1, '925089'),
  (1514, 'Zayed Al-Tayer', 'zayed.altayer98@gmail.com', 'scrypt:32768:8:1$174c9c3af8c3b83b$fda415fab2e72cbc743482dc113d19f02f733f4c988d9a3e065d4a4c9f194f3bb7aac9f814872e3ed26ea89aef9b15e8548610d1e5f6dc4b3bc3b6c5d62e65e7', 'united arab emirates', 'ajman', 1, '499047'),
  (1515, 'Rajesh Rao', 'rajesh.rao25@gmail.com', 'scrypt:32768:8:1$7dc01d7c7b10188e$695a1c17347a0ebd9649499009ebd6694ee8dda5acf7f5186896fe23eef13197c46a947b47f00d3561d7a102e782de12498edba68c0f5849021a99c9c2f01fbb', 'united arab emirates', 'ajman', 1, '986324'),
  (1516, 'Sana Sheikh', 'sana.sheikh42@gmail.com', 'scrypt:32768:8:1$0fce44f8309118c2$d592db1a47dea8c1f78420bda897d286d514eb17f9937863e45fabe58c9599da45e5b228ce3496458de7037b1b51bcf8dfef83c3de286ecbaf12a12f05bbec98', 'united arab emirates', 'ajman', 1, '727688'),
  (1517, 'Nabil Bitar', 'nabil.bitar59@hotmail.com', 'scrypt:32768:8:1$c3f29002e8b646d1$156caaf0d8bbb499033b635f2ac3359fdd235917598f67d5770d94c27fff8781c4d930597f87f3d9976709a2f16b9810e0e82e9b1bb233c5adf7d30a93f25ef4', 'united arab emirates', 'ajman', 1, '771564'),
  (1518, 'Francis Mendoza', 'francis.mendoza358@gmail.com', 'scrypt:32768:8:1$9335fc5a7838d073$809a11c18134a51f3b680ab3ebe5692f91572f7024092b56f91f783d09ba26606a299033715867eb2c1e7875c98a6b09c5fd26112670d7514d82daa1d19cf020', 'united arab emirates', 'ajman', 1, '141734'),
  (1519, 'Lakshmi Bhat', 'lakshmi.bhat389@gmail.com', 'scrypt:32768:8:1$503acd9e20c64e0f$f846eef59c8c36b015f271dbb74eb8924788ada17681c4fa169efeafaf5f504abee1f74c94575f485cf6f096ebfd57a610ca5f402dc06a3090f5b7e64cf5e5a6', 'united arab emirates', 'ajman', 1, '399511'),
  (1520, 'Zayed Al-Mansoori', 'zayed.almansoori420@outlook.com', 'scrypt:32768:8:1$8cccb920753c153d$19489ba7b611788e7129c1315a5ef62f587242d817bc164de5a88dab1204af1261afd5b5f458a129be9ec794a2e37a75b70228bd4b1336c5a6fc4b8269c35fa3', 'united arab emirates', 'al ain', 1, '882439'),
  (1521, 'Manoj Menezes', 'manoj.menezes2005@gmail.com', 'scrypt:32768:8:1$3a65dd2f6318679b$9f2e1e0eecfaa99c847d9faaf8353825439fd27fcae07c9c824b6e0113636249aae02a8383d9e5474012f29fc0f7d32489765332115a85e1555a7fc847700e2a', 'united arab emirates', 'al ain', 1, '527578'),
  (1522, 'Bushra Gill', 'bushra.gill1990@gmail.com', 'scrypt:32768:8:1$82c86a134520be83$9fa05187bb5794d5a0442b3438f8cb2eb569a4f824b48e03f404feea36f651bdf005e655aa96f1820927822f7eb49c7f98be6734323f081cc83f600069adf253', 'united arab emirates', 'al ain', 1, '495953'),
  (1523, 'Mahmoud Shawky', 'mahmoud.shawky@yahoo.com', 'scrypt:32768:8:1$9ebc2a87171b2d53$9d62add822020041d47118bb0c62d10b8c25236b401837445d0c6e2a150e03484a30c30295d4e9435fad89cc3eb15aa6895e02d6f9978ccbb58f67c66b6d67e7', 'united arab emirates', 'al ain', 1, '140764'),
  (1524, 'Shamma Al-Muhairy', 'shamma.almuhairy88@gmail.com', 'scrypt:32768:8:1$3ba1a331c2539299$74dae83c25ad63fa517992e13fe4f8d1657dbfbcdc816442cde86ec985ad592501afe6fb2eebca9fa7665eb4f8b561f117c4f2fc654c753e55604e309b0be7c6', 'united arab emirates', 'al ain', 1, '354331'),
  (1525, 'Anita Mathew', 'anita.mathew15@gmail.com', 'scrypt:32768:8:1$8e0186781c48fda7$eab49866c5f408d9c4143c4ef97e3b4e4a476911928509add0ac03ecef49f4a187bb7bab17635228c187556c56038116758cf4b3faaf1073e71fccf32bf4d748', 'united arab emirates', 'al ain', 1, '998030'),
  (1526, 'Zayed Al-Remeithi', 'zayed.alremeithi32@gmail.com', 'scrypt:32768:8:1$152e12739a1a57ad$2acaf1de077e4f9f8b4e333f618ff03bbe3b922603f34ff7ef1253bf69a33af69710e1d67de70408915fad1a1cc9a1574aa4d34e74643d396b6b9706e9439c0e', 'united arab emirates', 'al ain', 1, '425348'),
  (1527, 'Thilini Fernando', 'thilini.fernando49@hotmail.com', 'scrypt:32768:8:1$4f0070ec391b7d83$9f4f7a12feb51a8891e66b18e0f7edcf01f49f70e9a42a743084972eba904dd9fd2047f8236317260cac11f632ac0b37d0662d0c6360743a24a6d0499e0a14b1', 'united arab emirates', 'al ain', 1, '413594'),
  (1528, 'Hala Hamdan', 'hala.hamdan668@gmail.com', 'scrypt:32768:8:1$2342d9f230ee2645$76136090bbd086d448ee28f1e1c08f9ad1702a9d048cbda348c45cbb3dc5e5a2a267a93e3623a5e574cf00acb3b032a79a378a57dfbbfa29cd75266145a27d6b', 'united arab emirates', 'al ain', 1, '258501'),
  (1529, 'Ouda Al-Dhaheri', 'ouda.aldhaheri699@gmail.com', 'scrypt:32768:8:1$d78c4b9dff5dbf11$b7a194c33fa43ae61ce68ca230d851408ee171a83f5861a67395170150c553c426ba19af6490c8ffa868cc2abc9f6b1f0f30e9dae21a373d87e57c5f8ac412ed', 'united arab emirates', 'al ain', 1, '916121'),
  (1530, 'Sheikha Al-Zaabi', 'sheikha.alzaabi730@outlook.com', 'scrypt:32768:8:1$06ba21a5ab15fd35$d8bd1cfe6ffb33a4c1628a921db71ca5d626d1162bdbfa2c59f134cd6cf034aad97feb179c1a636b1ab03bcc3e32751c833a935112619d3a579ea46ab8bd6c04', 'united arab emirates', 'ras al khaimah', 1, '757783'),
  (1531, 'Pradeep Gowda', 'pradeep.gowda1987@gmail.com', 'scrypt:32768:8:1$d67c606feb2956db$d423e99ba786ed75994f86497c1b16353fedcc83c367aef1a64d53157caaa5e0939b0050c4b14b7c8563cbea5a2af221aa3bdb86a139593e8f6a9d20643b061a', 'united arab emirates', 'ras al khaimah', 1, '924550'),
  (1532, 'Shahid Abbasi', 'shahid.abbasi1994@gmail.com', 'scrypt:32768:8:1$58406de553651491$41f761b23e598d92d423e762342e27c16b541bde882393001812836dcc46134daaba0f860879a03a3f83a06768b9e21aab1f30a5e53bc6a22917a83376111de4', 'united arab emirates', 'ras al khaimah', 1, '006804'),
  (1533, 'Mouza Al-Ketbi', 'mouza.alketbi@yahoo.com', 'scrypt:32768:8:1$526aa583b045aca2$de3c5d53ffa17994e2d73279fbb698db1e701f52bffddd5bb07bf4a7482866087633fc360bd1931325dff5488c399fba0996de6ed875a961712bb67733550218', 'united arab emirates', 'ras al khaimah', 1, '091965'),
  (1534, 'Rami Ghazal', 'rami.ghazal78@gmail.com', 'scrypt:32768:8:1$433f475c8c880f7d$293674a3cdfa725bb99c446e55d0aa90acd58f2921e906e60fa665c34867e6be0ec6678aaee57c9dd959e32ecb4aed139564db085e515fa3acb45ec735b45846', 'united arab emirates', 'ras al khaimah', 1, '100166'),
  (1535, 'Amit Rodrigues', 'amit.rodrigues95@gmail.com', 'scrypt:32768:8:1$a8073f69e0a11a90$eb7030bd55aa601cfc6ae2a5371ecf3300ee4a337845a0e5aeb9bfc1a534e7d3b2272ed44715ada8e6a85cbe7346ea6fea89e5f8d2f3eb33dd5f2671f0428f0e', 'united arab emirates', 'ras al khaimah', 1, '955937'),
  (1536, 'Meera Al-Balushi', 'meera.albalushi22@gmail.com', 'scrypt:32768:8:1$7433e993d706ab64$6694fc9b22457d322ae7d7ebafceedd002ac32dccaec94ebff8db93e6e5998bc515182960c5b1f865bf56cdd6edbf728b698135c8a7f2642898f804dd12e24b9', 'united arab emirates', 'ras al khaimah', 1, '831624'),
  (1537, 'Junaid Butt', 'junaid.butt39@hotmail.com', 'scrypt:32768:8:1$28ff1ed124b5df30$46d5381dc7a47566ff5119fd04984edb69603a96175e9d22ed3f2294d6dc4ec90f55260c1d398d32ef9254e9013e9bd948e40bec682e553f8815fee42d55a7bc', 'united arab emirates', 'ras al khaimah', 1, '207465'),
  (1538, 'Dennis Cruz', 'dennis.cruz978@gmail.com', 'scrypt:32768:8:1$10c1f7ac736be2e9$8fa2506cc506a868caa3d71c455129714ca8ac8873f518705b3512c8856c8bfb68e6b465b24a4dabfacb19b00fab5d1bb5ac2402caa25fb3ac91210488d035f4', 'united arab emirates', 'ras al khaimah', 1, '290433'),
  (1539, 'Fatima Al-Matroushi', 'fatima.almatroushi109@gmail.com', 'scrypt:32768:8:1$5cd2f2eb835a5107$bbe1228697a53bc0d9eda7c892116f97ad46e212d2b882b7c138f355caab21fbe5ad32511239e59f70a48b1cea93b8498012b99c07d2bd98a62a290d54072013', 'united arab emirates', 'fujairah', 1, '641298'),
  (1540, 'Rahul Nambiar', 'rahul.nambiar140@outlook.com', 'scrypt:32768:8:1$0b3f703201c20749$25c1d8db4b80a6d7f6b46d883192218d7580703d6d30d09f399a3be77f4a60771f387d51100cb1cdbfd3aa9f902a3143439a390ea2933cd675360c30fdd634b5', 'united arab emirates', 'fujairah', 1, '799363'),
  (1541, 'Zubair Mirza', 'zubair.mirza1991@gmail.com', 'scrypt:32768:8:1$81ae847820a7fa98$c239ef0b4b38ab96da9b156e181cf06ee9a7d466bf3aa4f3344b8fbfa55364740ee07ada38f1ce56cc942eee12b6e1c670406151bdabc7e6118a129704ce7930', 'united arab emirates', 'fujairah', 1, '289830'),
  (1542, 'Afra Al-Muhairi', 'afra.almuhairi1998@gmail.com', 'scrypt:32768:8:1$fcc6ab66e9e63b45$bda8f88b237f3e8a27de5075693d760e0f1c67611ef35288c24b43606b38bb11f6e5ec6ea375451559158a7fa4badadb86f7cd436c857fa2e4682ad202161246', 'united arab emirates', 'fujairah', 1, '212817'),
  (1543, 'Tamer Qasem', 'tamer.qasem@yahoo.com', 'scrypt:32768:8:1$8c5721cb9af73685$de0f4f001720587e4baf12549f560c691fcc5e8bc50eb44d42c1af2df73feaba9a5ec12df65a741e84c56be62d67bb68a4c85d3a6a5264ceb3cc7304db8cf010', 'united arab emirates', 'fujairah', 1, '363092'),
  (1544, 'Shaikha Al-Marzooqi', 'shaikha.almarzooqi68@gmail.com', 'scrypt:32768:8:1$8e92aaa2630ac1e4$286709c1a6bea9100d04af9c1a336866ba99d2eaaf3631cec9cac6ecf5a0496ac2df28de98aa282c4cbdea8174f47af0bbafccc993068363f5b8d31eeb47f997', 'united arab emirates', 'fujairah', 1, '308229'),
  (1545, 'Moza Al-Nuaimi', 'moza.alnuaimi85@gmail.com', 'scrypt:32768:8:1$d0f858f2a29a30f7$404ee281e6c72226ebab345d18a687c1ef3c72b5f5d509625e3039203fc61b8019b1eddb8f7814daa65f1c1513f0ee07b9a97d776c033d53f87dc1683d5c28b1', 'united arab emirates', 'umm al quwain', 1, '993238'),
  (1546, 'Varghese Menon', 'varghese.menon12@gmail.com', 'scrypt:32768:8:1$f2e80713c6c9705e$e3379bcd1beb5508fa24baeeb1f63d119f9933ce765fa66090c01ebdfe3b1d0bb96cb48493b06d663a576c7c5f920042c3df10299199c66027361f4b9be3c788', 'united arab emirates', 'umm al quwain', 1, '780414'),
  (1547, 'Mahnoor Chaudhry', 'mahnoor.chaudhry29@hotmail.com', 'scrypt:32768:8:1$81d3845235e1e314$4da13a5aa46732bb96f617b61195db5886bd88b068e4ff297ebc6cb59f7b58e6280f53fee9fbc2a64401f7ca526af6d0d5beda6e87b3358dae0597827864fc65', 'united arab emirates', 'umm al quwain', 1, '496019'),
  (1548, 'Khawla Al-Hosani', 'khawla.alhosani388@gmail.com', 'scrypt:32768:8:1$9a85e073023b45a7$72414a4a49984fb86c5c1826265addd3f9bb2e220d6623183ffa9e4d5728c993b94615e582b0e6f84a74523df14d38812e1a7ee536d62d32a3d3b404fc75a827', 'united arab emirates', 'khor fakkan', 1, '298643'),
  (1549, 'Sami Abou', 'sami.abou419@gmail.com', 'scrypt:32768:8:1$f3c2738bb0376f80$d1d7a2c61f2f6bec3d8d0da0644bbdeb552c889a6cc8b00a8dd88b46023f0117c9de5914378ad1cfad589a0490986b27b55b52781309cef9cd8ebf570c6f9515', 'united arab emirates', 'khor fakkan', 1, '470415'),
  (1550, 'Mariam Al-Kaabi', 'mariam.alkaabi450@outlook.com', 'scrypt:32768:8:1$12c1580e0eb8503c$bde3074581bedf140467713ddaa1c02a615bab3ee4ca44c1271057bc9480c28a2017425f1abc9964df240a6012fcd1d29f983688784785f0837ae3611889bcb0', 'united arab emirates', 'kalba', 1, '995137'),
  (1551, 'Sandeep Iyer', 'sandeep.iyer1995@gmail.com', 'scrypt:32768:8:1$f45a73ed7641d430$968e26e3d6dd94b24b885b7f420a7b8c1927643732bb01551a8dcc293654d86dfe2726329e5b20335e19718ed7f586122bc641289d800ffea6032fc5fb19a715', 'united arab emirates', 'kalba', 1, '738937'),
  (1552, 'Mubarak Al-Junaibi', 'mubarak.aljunaibi2002@gmail.com', 'scrypt:32768:8:1$bd6c593578ee4b0a$876bab654fdb8eb3d68b9a07a3f8960c5c40565d86be3ac68bbea5ba041f7b0d0c1cf7d1beb362a822e8811a7290fef601ad511acbee8d1560cd2738c597d854', 'united arab emirates', 'dhaid', 1, '675261'),
  (1553, 'Nida Akhtar', 'nida.akhtar@yahoo.com', 'scrypt:32768:8:1$a8aa28eadfbf0a80$a8033763725d05dc825673cdb8973473d6d38de132766d96c78b4a148b7a4829c2028c90ddacd93abce09436e749ba8d923fc67ff5b24ed6480982ca3edbbc98', 'united arab emirates', 'dhaid', 1, '432970'),


  (1554, 'Dima Al-Najjar', 'dima.alnajjar58@gmail.com', 'scrypt:32768:8:1$2512c035f4f721a5$17753e64308ca0cd09c33a3c8bad70419cc9ce125cbb0c6bab86e0fa4f6d6f03f3bf55c6ad1684fcfa7960a4634c5e195ca977f9ae6f8e0fb367871469aee358', 'palestinian territory occupied', 'gaza', 1, '498518'),
  (1555, 'Abeer Abu Rmeileh', 'abeer.aburmeileh75@outlook.com', 'scrypt:32768:8:1$479116d644f83a0f$dcf9abb22400edf3cdf48c889162c33184c31c826fc4cb2d5efe64ed4d9c82b21d3eabdbf893c7d3c2746c5c8522b621c9643ed7399c6848a91efa75af4277c4', 'palestinian territory occupied', 'gaza', 1, '560830'),
  (1556, 'Sari Abu Dagga', 'sari.abudagga92@gmail.com', 'scrypt:32768:8:1$84f92c9490551592$9ff01b9718c24e9c45e10df6779d4975b8867b5bd32df6eb951c394ed1f4328eb24675e0e0ffb9b6863eb3c7c3ee8dd027004d491ee3363e9a82c67cf4276b3d', 'palestinian territory occupied', 'gaza', 1, '303710'),
  (1557, 'Manal Joudeh', 'manal.joudeh19@gmail.com', 'scrypt:32768:8:1$333dc9e3adfa4a93$add6f4d1c35d8b87d9b587fffa1437ff027c8c1ca7d0f69bbaa6a60611238a2755c9a4967af4a9a3753218086a60ea6374b5c38262b326d90fdd950514bf883d', 'palestinian territory occupied', 'gaza', 1, '440794'),
  (1558, 'Tamara Abu Shanab', 'tamara.abushanab698@yahoo.com', 'scrypt:32768:8:1$3cf71e719286a7e4$267a33f6973507efd7c47e9024e6a7fccccb1543f0d6e39ba2a4ae304894da7d9389431bcf54e21da99f9df3e8d927fbd6a8034c2dd3f28f2b82993a09688b0c', 'palestinian territory occupied', 'gaza', 1, '910115'),
  (1559, 'Eyad Aqel', 'eyad.aqel729@gmail.com', 'scrypt:32768:8:1$af3ed172661fb044$c89a8b5f04ec716b7ee4c07feaf72c62673a959efb91e2092a55a3f57bcfe99e33cac6f10f7ddff73add0b4edf0c7fc8f4f2315c85ac2429158c67f37ad30ade', 'palestinian territory occupied', 'gaza', 1, '610611'),
  (1560, 'Lana Al-Ghoul', 'lana.alghoul760@gmail.com', 'scrypt:32768:8:1$6d5c8af7017b22c0$2f9603920ade5cf5d842d2f15d6b4604b5aaabedeeeba2a71dd8695242b4da6c29323b10215562ce0efe6c26b0e13680fda7cc82b9ea82b17d7b100893240783', 'palestinian territory occupied', 'gaza', 1, '579969'),
  (1561, 'Amjad Abu Odeh', 'amjad.abuodeh1999@gmail.com', 'scrypt:32768:8:1$5093a6f441400ec2$c8f0294ca8b54f1600d6c3b2d201f4ec1df30b0d6f8806c2a9fea3bc5dd4a74e001c751b635e907e1e8b70fa247a2f2459cbef2a6f8674d29af9def4f7d92216', 'palestinian territory occupied', 'gaza', 1, '260296'),
  (1562, 'Rafat Salameh', 'rafat.salameh1984@hotmail.com', 'scrypt:32768:8:1$87184ecb90a8ed81$81de33968533df93a051a59f27f3c2cdf43dddeed4087cf6e83c521d738483dec6bb5f9f86046be3ad471c1a9df2e17b8a0d003064f9df56203273f8ff31f1bd', 'palestinian territory occupied', 'gaza', 1, '936346'),
  (1563, 'Hadeel Barakat', 'hadeel.barakat@gmail.com', 'scrypt:32768:8:1$148fd4e52c260c72$3ab282b73fa7ce973af0f8b742eb1dde1752ce5a821cfcdeb2d10adfaba716d942b36d11cf9d309d20877be302c806ce80c776d65fb8c2ff53b3d73fb7bb0128', 'palestinian territory occupied', 'gaza', 1, '480592'),
  (1564, 'Ziad Mushtaha', 'ziad.mushtaha48@gmail.com', 'scrypt:32768:8:1$2e16e25ec3d34f43$5addb84842e0493272c4e89e19c116c943c3b74aa939cac3870e8fd2f7ccdda53b6bbe7c4342340f7bb865425d283aae61f3bf01252655c5e4bdbf43794b7366', 'palestinian territory occupied', 'gaza', 1, '799027'),
  (1565, 'Ismail Jaber', 'ismail.jaber65@outlook.com', 'scrypt:32768:8:1$ebd25fc3d8c1e66b$daa21793536e5f9f32f3ff256ebf3b9d3c36061e2359e7114d58893a5685514538a68ab08cbd2ab006c04530d753e9c702ac70e0003a5a5b622ea6452fe60d06', 'palestinian territory occupied', 'gaza', 1, '646137'),
  (1566, 'Yara Al-Masri', 'yara.almasri82@gmail.com', 'scrypt:32768:8:1$517bec1b4e6a1888$3823435e6db5610d70f7e1de35e695de84771d782ddcdc2942691fc8cd89f7832f79094421f25c34fbfb1071b69aea6f41151b415c887ec799feb7ab1c4937e9', 'palestinian territory occupied', 'gaza', 1, '320990'),
  (1567, 'Ali Al-Hindi', 'ali.alhindi99@gmail.com', 'scrypt:32768:8:1$45034b758f816275$a6d339cf3fdf87d2ea59d9aa7145655680e6d18082915a8af2909da1c042b0b673f9f5958c3061bdc2aa5daf0c0661067d81ebb7074313b36d16a2c5287d3aa9', 'palestinian territory occupied', 'gaza', 1, '063505'),
  (1568, 'Rami Ashour', 'rami.ashour108@yahoo.com', 'scrypt:32768:8:1$4b893910714841fe$121e3b0e4cb327300f690e8b1d1eb88ea8a1b77afd3dc1bfa16e203babfdcb59f927bfb53d073286b7b07aff03b9bc287bb0ba477fb89c751b076de5ba7eaaa0', 'palestinian territory occupied', 'gaza', 1, '725087'),
  (1569, 'Maram Shawwa', 'maram.shawwa139@gmail.com', 'scrypt:32768:8:1$065ec31b06bbefd2$d6d91281fde9963904b03a9052eb00ab050c166bbf378d69580e9bbe29dc92c5987a394921924cf04b68113b760ceae8fe559c79089e144820cded409b9e9ee9', 'palestinian territory occupied', 'gaza', 1, '910340'),
  (1570, 'Murad Hamad', 'murad.hamad170@gmail.com', 'scrypt:32768:8:1$9571c6dbc7788f1c$a36f528ca224d724afd0ac8b54c0628d1eb4949264f303059815ebb25b6744f1e3548624aef3bf79d1a0ba07883508622fcd85f542b0de9365dc324cbd5245b7', 'palestinian territory occupied', 'gaza', 1, '831403'),
  (1571, 'Wael Zaqout', 'wael.zaqout2003@gmail.com', 'scrypt:32768:8:1$acc18ba78417b9e9$9d1a4187f3c2059c3a0da96dbdc15b81319a0dba50d98bfc4f0272360055894501feb57e0a02f3b95b733ea0aeea046d96096a1ae7d7df1e1ce6a009e6773a18', 'palestinian territory occupied', 'gaza', 1, '131799'),
  (1572, 'Amal Nasser', 'amal.nasser1988@hotmail.com', 'scrypt:32768:8:1$d1306dea8d40b3eb$de4972e62862ba70e5c5d5f62719a81c6ebb20c8ae3987efc1a338b12b6396434417b303bc673e9fffe90ab1380447fcb280651657e4986991456ed26045c013', 'palestinian territory occupied', 'ramallah', 1, '699526'),
  (1573, 'Suhail Taha', 'suhail.taha@gmail.com', 'scrypt:32768:8:1$54acca16fe3d8161$0c1edc282f5cd914c84b9adaff233e986df5958feea343def75d978a4b9984328f16a0dbc043b1c39466b4f92898bf9b0fdc28f76e8f38f3ebf35886084006a6', 'palestinian territory occupied', 'ramallah', 1, '328211'),
  (1574, 'Leen Salah', 'leen.salah38@gmail.com', 'scrypt:32768:8:1$7cc9d7b1fdacd375$5e223600b57d5d308f178ce79eba829824a8ed0513b2b5b878697fabb9ab5a3a14c549469d0987703c6fdc533081efc61a39f33c957f39483464bf2d2c009d18', 'palestinian territory occupied', 'ramallah', 1, '809234'),
  (1575, 'Ahlam Hamdan', 'ahlam.hamdan55@outlook.com', 'scrypt:32768:8:1$2f018c6acd8320b9$5b789a5dba629d8c1b9989501389cfd2a54b5f15729d1599f4f5f21115546710b2f4c2e1ded0db81eee24b971488848ea1f68bdf537062f8e50ddd758d82551b', 'palestinian territory occupied', 'ramallah', 1, '432032'),
  (1576, 'Hazem Khalil', 'hazem.khalil72@gmail.com', 'scrypt:32768:8:1$387cff2361784688$98f89bb7795858ed4b38a36a8761aa02092a947bacebce682915ba63709c6ca1000267b856208fdef5cc19cd929e3a97809b4541b29402c9405e2df9bb55b24b', 'palestinian territory occupied', 'ramallah', 1, '724387'),
  (1577, 'Nour Zawahreh', 'nour.zawahreh89@gmail.com', 'scrypt:32768:8:1$2b806799ae16ba0e$ff121446fb92a508c900def2f5cf63d3bf380643d40170ca1bdfeff57e7c6aadce5098bffd86ea430db2c50d8d750b83c38876035c43770466b72c5ed9c2332e', 'palestinian territory occupied', 'ramallah', 1, '663848'),
  (1578, 'Ghadeer Qasem', 'ghadeer.qasem418@yahoo.com', 'scrypt:32768:8:1$3295dc9a144b234f$228abc80cd36f096d91521fe4455d4d62e95b595eff701eb39dbd9455c1e6b338b104a9c9d391cdeef469ab174bbfa602cf1ad56f75361cb3086d922a782f928', 'palestinian territory occupied', 'ramallah', 1, '782897'),
  (1579, 'Hussein Fares', 'hussein.fares449@gmail.com', 'scrypt:32768:8:1$6c8dec1b5aee6c0d$e7a1154d25bf047553823025ea428800d241ebec486be1fde62a09bcfd57dee1bfb0de592f49776f7032da3d267b3b5c5b7ab366540e78c22aec5ec1e7d00bc8', 'palestinian territory occupied', 'ramallah', 1, '146741'),
  (1580, 'Sarah Salameh', 'sarah.salameh480@gmail.com', 'scrypt:32768:8:1$08d5b32212cb3f0a$3347171ac04f1a0f91c3ceba5e746bf4a959016b81f74f2168eba951edaba6a45affae6c6614114c20c37beb00348361ae830f112539d086dfad2ecd4a784e83', 'palestinian territory occupied', 'ramallah', 1, '687431'),
  (1581, 'Yazan Barghouti', 'yazan.barghouti1985@gmail.com', 'scrypt:32768:8:1$98ce48532ec56e2a$489dfaacae71c589d13446a6c3f7745d388a4784c488cacce5dc00a6ec88e4759d84d8d9731d8deb648d5ee60169c48dc216bd04da12e4716f121bdb6fc9e165', 'palestinian territory occupied', 'ramallah', 1, '377132'),
  (1582, 'Raed Sbeih', 'raed.sbeih1992@hotmail.com', 'scrypt:32768:8:1$4e5061f841edf783$7729c92ef1d876edb4ddffe780fd3ed7b58ed5a73cf56c21251dddd8eecec993b6d7958955a537f6c04d68c4231107fb18617c40ae119f8329493bdafb2db1fe', 'palestinian territory occupied', 'ramallah', 1, '544580'),
  (1583, 'Ruba Jaber', 'ruba.jaber@gmail.com', 'scrypt:32768:8:1$9f49fd8504a388c7$bb5c285517f46bac9aa4fdf8c067b398893ce30a2f513e25c121257574488bd7be37bcd949c9c042e0ede0bf28581bb4812faa08ffd9aaf49d06924613f3a0ff', 'palestinian territory occupied', 'ramallah', 1, '078230'),
  (1584, 'Moayad Abu Shanab', 'moayad.abushanab28@gmail.com', 'scrypt:32768:8:1$1062c6fa8f6db21e$fc366b06f96d53163ee9e207cfcf5325b45f5b95e2dc7a19744967e3602a7a05c1b36e5c6323d044cb09322161d922b8ad751191d82ff96e062fe2eb4ae87fb3', 'palestinian territory occupied', 'ramallah', 1, '887636'),
  (1585, 'Sufyan Aqel', 'sufyan.aqel45@outlook.com', 'scrypt:32768:8:1$8139b9e42e1802b7$283dd3e7a0775d83671c41039851add8ddba2ce20500d5ec614bc518ae50f77f8a91b2e88611f4889a01aa9d331c8e84a4b222ffb541e866b0674004921bc36a', 'palestinian territory occupied', 'ramallah', 1, '086360'),
  (1586, 'Salwa Mansour', 'salwa.mansour62@gmail.com', 'scrypt:32768:8:1$d23176fe75e7ff2d$818bec2daca393a3fb40f2447bea5c7915f5285b7f2a4249ea50b591f116521d9eee17ffb536fd3b3da8924d0b43c36d68880babbc0e4dbe54fdba51f669db38', 'palestinian territory occupied', 'nablus', 1, '014465'),
  (1587, 'Anas Sbeih', 'anas.sbeih79@gmail.com', 'scrypt:32768:8:1$23a0bd76193f440e$9dd4de4681177fe8cacc069ce538fa3fd2510e960ec52bcb2ee40161f2730fc9a585f6d2bc8a9ae820e3585b8504d483c12c71728e3a972ef333a7b20027cafc', 'palestinian territory occupied', 'nablus', 1, '497882'),
  (1588, 'Marwan Sabbagh', 'marwan.sabbagh728@yahoo.com', 'scrypt:32768:8:1$b7ab69b1888075d3$cbab8bb22c4238c50cc479c157b948dae40f7e64ef67b4e9885c2ec0187147a1c854aef7e4f2191a2cde8cb51469d5b865a9420a7f2c84c23b695769baa759bb', 'palestinian territory occupied', 'nablus', 1, '907523'),
  (1589, 'Bisan Shalabi', 'bisan.shalabi759@gmail.com', 'scrypt:32768:8:1$655a63809e290dbe$0974b98a590b25ece7f2d586d6d9bf70bbabcf17017959d328967889a3843c011cfd3415f1f92b3a56e585e7b6b0da32f66024c3f64fec3018ee2f5f71c2d507', 'palestinian territory occupied', 'nablus', 1, '590570'),
  (1590, 'Omar Taha', 'omar.taha790@gmail.com', 'scrypt:32768:8:1$ee4ab8b30621e21b$2978e54e2d3f066df2c0c316a18fc6a17580b6ae58b89d0e98492168f3092905e6fede55c5ca242e4a3afc811c89257a937d34125ddeaeda289fa440c534544a', 'palestinian territory occupied', 'nablus', 1, '529209'),
  (1591, 'Fadi Zeidan', 'fadi.zeidan1989@gmail.com', 'scrypt:32768:8:1$f34bbba93079e020$b72a352ea2b876d98b0f693b9cab41ac89ed7763494808257c11af7d2ab797185794d43349c1bb3aa815af9846bbb5fd0775fc41281549579eb3e4d6cebf3594', 'palestinian territory occupied', 'nablus', 1, '102359'),
  (1592, 'Lubna Nazzal', 'lubna.nazzal1996@hotmail.com', 'scrypt:32768:8:1$f6ab35a073bd7aac$889c2342ae0c30977c1e8fcb093ac4bae24011bc422f1de5a0f58506474216a4d2c1df78256f9e176292c2056dc0e374a3a57c4eeb2396df04e6b1a35ce80ff3', 'palestinian territory occupied', 'nablus', 1, '788467'),
  (1593, 'Qais Ayyad', 'qais.ayyad@gmail.com', 'scrypt:32768:8:1$465f8d5d6043eeec$9bef598755aa01a12a7a77fbed5924f4caaea1d987c6412b6f83675340c6ae421a1b7097a183f3eb64b0614aeb36ef36ca7e9828fb58a2c49da9bef6d96742d4', 'palestinian territory occupied', 'nablus', 1, '861441'),
  (1594, 'Aya Odeh', 'aya.odeh18@gmail.com', 'scrypt:32768:8:1$569be6c0cc782a9b$785c13496a93fed16827d21cfe70df1ff29fd70a03e7ca8435b227a0f1164ed4abcd47bcf5a9cbac4ce61db232e3daab7d0dd90a4d9c65346b2768db22bd2aa9', 'palestinian territory occupied', 'nablus', 1, '044552'),
  (1595, 'Mariam Masri', 'mariam.masri35@outlook.com', 'scrypt:32768:8:1$a3d6e05faa93a6cd$156b1e79315119ba3fa89f3b447905ea41216eaeb2c32a2c137e0d4bc75af535aecc2f6a84dead5d62267b2372ce9759f76ff6a3afbd65026f8bcf214229786e', 'palestinian territory occupied', 'nablus', 1, '825377'),
  (1596, 'Basel Rabaya', 'basel.rabaya52@gmail.com', 'scrypt:32768:8:1$6e0b6bd085db06e4$bab15e38b27f04ff94f8823cc76e1b3466b9f17aca94b2735bb5386cc7fd27508c336a001c1fa13576defd6d49e14b1b7000485ad2909f4c3ad0be2962b59105', 'palestinian territory occupied', 'nablus', 1, '206404'),
  (1597, 'Ibtisam Sawalha', 'ibtisam.sawalha69@gmail.com', 'scrypt:32768:8:1$89a8a32d07dd0550$2717bdcef91b8561eef9108e501fac6c51eb6ab3a3ae259a1dfcfe9f87aa88bec3094e6e7707f6eb8f37b3efaf0bf6c022fb428ba35dd6868bd8f80d5e42b536', 'palestinian territory occupied', 'nablus', 1, '183309'),
  (1598, 'Hiba Bakri', 'hiba.bakri138@yahoo.com', 'scrypt:32768:8:1$1064dba8802d5e1e$f538d8d4f1950977ebd696f45700576e1b613d4ba2c10fb8ccbebd8f87011680f7b78d7abb0bbb7cc592915825564c1dd9516d5d76ec13097c914a9a4322e823', 'palestinian territory occupied', 'hebron', 1, '553700'),
  (1599, 'Osama Karameh', 'osama.karameh169@gmail.com', 'scrypt:32768:8:1$31689aba827c00d1$97ede8a49e6118e11bfa08349ba56838eb710f46fd71fef7a9d1350db59f904dceba74473d2b9de9fa23c4a78268b7d7d1209bc8daf4bde94e14032a976f6efc', 'palestinian territory occupied', 'hebron', 1, '751478'),
  (1600, 'Lina Zawahreh', 'lina.zawahreh200@gmail.com', 'scrypt:32768:8:1$76d4abdc5a4c6511$819bab97c350a9aa7424e9e4c252a94f8abd0b6091b046e31a621e11c31f2cb9b90d4a4ce9ae6850485ff2111412d2c8031045011a239b8c856203ea888c80de', 'palestinian territory occupied', 'hebron', 1, '324505'),
  (1601, 'Khalil Zaid', 'khalil.zaid1993@gmail.com', 'scrypt:32768:8:1$0501669612c001d9$0559520d57c1f7a64297737f8cdb9d8a09502b300bb1eb9328b9e134bf76f7ba83d49a088b9e9a285747d9cee24adc34c424b531ef66e1432a2d2cd40decb9c1', 'palestinian territory occupied', 'hebron', 1, '608931'),
  (1602, 'Hassan Sabbagh', 'hassan.sabbagh2000@hotmail.com', 'scrypt:32768:8:1$64d0c463d9894849$ebf47c8d91376a8c3a4e2712d63969062f8910a7a8be715bd877fb2d9c9d19e272d9a34c78c41e86ca7ec890e83d97efb82a69b5305ebf10747a049b07393dda', 'palestinian territory occupied', 'hebron', 1, '734125'),
  (1603, 'Rawan Natsheh', 'rawan.natsheh@gmail.com', 'scrypt:32768:8:1$4f1ee5963368345b$ca6680580ada7fd81fdac86d89d411a70b1c883e72f90dc1ca2c797f9b3ffe2072a9e85d20dc0debc5e488c248e6358072dbc0b8537f1e7e27d09a2ce8f727ab', 'palestinian territory occupied', 'hebron', 1, '189374'),
  (1604, 'Karam Abu Sneineh', 'karam.abusneineh98@gmail.com', 'scrypt:32768:8:1$d677d923a1d863f4$38d7d8fa28248865d8c743108b181fd9e9aba52a5ab98cd3803f649afb857e64543fac0e24542e62f8034a57151e540649b0f15e3346d210b8a800fe7aa1eefd', 'palestinian territory occupied', 'hebron', 1, '945197'),
  (1605, 'Hamza Jaber', 'hamza.jaber25@outlook.com', 'scrypt:32768:8:1$ed36f3a85492f23b$10dfd7f781956bc4762800b8cd905e0da63076cd24e7bd07642ce279e20db399684a5f8cd0dbc629178842366c076e62a2e9b419216e176f91baf063da4432d9', 'palestinian territory occupied', 'hebron', 1, '826130'),
  (1606, 'Duaa Amro', 'duaa.amro42@gmail.com', 'scrypt:32768:8:1$7910f039ef3348a1$9336971a3527acd41015ee2b8c0982349ccbb4d9307bbedbf2b640545ec846d1231e4c97c5871db29f4e320b10484bc03608fcc66a79839ac727c03d126d2126', 'palestinian territory occupied', 'hebron', 1, '249098'),
  (1607, 'Mamoun Rabaya', 'mamoun.rabaya59@gmail.com', 'scrypt:32768:8:1$b748320372667519$1395eeee0e881b8b45c059e023702f9210b2066df2b9a4140006abbfcea8622a26824000ab6fa7e0ca6c0b5e3faae2dd27077ef8b2ca7c04d78566d72ff95fc2', 'palestinian territory occupied', 'hebron', 1, '522590'),
  (1608, 'Tawfiq Khatib', 'tawfiq.khatib448@yahoo.com', 'scrypt:32768:8:1$c4301563a5157006$bcd3e756058fe8421b05f100f08129f9fb21fde73581efa8ed4621a5ce2d0feebdfd89eae23f05322572b688d707dd7b631ab351c02b4f49c8b8eef9dc6f958a', 'palestinian territory occupied', 'hebron', 1, '807057'),
  (1609, 'Abeer Hroub', 'abeer.hroub479@gmail.com', 'scrypt:32768:8:1$3487210efd07b54e$ad5ff5202c4d56c130a4bf1360fc19cb77e2e70ebd963f12a9c833f48bddd3cb6737f639caab84d0ffaab6e9000d1181e49d03d9e79f8d0a37f62e116d0f6f08', 'palestinian territory occupied', 'hebron', 1, '681249'),
  (1610, 'Abdallah Mohtaseb', 'abdallah.mohtaseb510@gmail.com', 'scrypt:32768:8:1$9a94aaf4f0495898$1baa763317eea8ef044531c90defa4e6bc25a714a405eebc4fc4db79d68655a706c9c1cd353b797f409be9387828001fa758dd71731ecf49d3cc2361fb226a3a', 'palestinian territory occupied', 'hebron', 1, '079617'),
  (1611, 'Nasser Abu Rmeileh', 'nasser.aburmeileh1997@gmail.com', 'scrypt:32768:8:1$131e45b0914da493$356f8c1b05c62625ab8eb3822bd00ecc11e3ef938f5235604a676b0b7ac1c68c9d99865c0b5b89c9670d017956591a711821ede223849e797fd05ea8ca24f9ea', 'palestinian territory occupied', 'hebron', 1, '282659'),
  (1612, 'Tamara Aqel', 'tamara.aqel2004@hotmail.com', 'scrypt:32768:8:1$8c7212e6c0ba1f30$683c14771c3c3d823fa7ac80367fab43e8a31db1f90a465620233281bbe46c1ceb70c06f0f06e6b02848b7bdccc017c8ab5ce69845a24a7061db9bb1fc173ad7', 'palestinian territory occupied', 'jerusalem', 1, '056079'),
  (1613, 'Ibrahim Hijazi', 'ibrahim.hijazi@gmail.com', 'scrypt:32768:8:1$c83a496496899cb6$3c502af23279674fffd64291ce41f46e8f2e7adb3524cd8d410f9280b7749d9df4a40e5d40600b19af777ef2a01f64024d898014f2caedccb2090314c7d977de', 'palestinian territory occupied', 'jerusalem', 1, '202016'),
  (1614, 'Lana Asaad', 'lana.asaad88@gmail.com', 'scrypt:32768:8:1$2e39a5126a2376e0$84779c20c28767cd1e4cb375aca27f510a47f69e49add5288f5bba42e1062af4155201d93f1aaee1f455c11edf655db9d869ab9a11fdc1e671481a23f03bed26', 'palestinian territory occupied', 'jerusalem', 1, '340617'),
  (1615, 'Jana Dajani', 'jana.dajani15@outlook.com', 'scrypt:32768:8:1$ee0e6d4ef9575e65$06cd365af1de73daf0d18ccc86213db0bc68234a08a4e4eb21d63687a2f81ebcba3b2f8c2a3bc34367b981eaaa902044122a38aac54c46dc3f09bee1d9bacaf8', 'palestinian territory occupied', 'jerusalem', 1, '728376'),
  (1616, 'Layth Rimawi', 'layth.rimawi32@gmail.com', 'scrypt:32768:8:1$cc840ecc5835fdd2$ed836804cb6095539b09c94b8669260fd5542c9e1f9d3e5be6f3d46f142c1e95bd52567c1184f696bb7f7cd22cc3663438a9aecc5bd36daf3a29da8fda53bcf3', 'palestinian territory occupied', 'jerusalem', 1, '448649'),
  (1617, 'Hadeel Awad', 'hadeel.awad49@gmail.com', 'scrypt:32768:8:1$d412a505dadd8106$9dbb70b21a0befd7992fa6191f34c54fc433071fb1ec025ad6a2050df0fb4b08163c465a27711354ef662ac1d6e53ad5e75a18c6b68a2e654af306cf20470c9a', 'palestinian territory occupied', 'jerusalem', 1, '485825'),
  (1618, 'Layal Kassab', 'layal.kassab758@yahoo.com', 'scrypt:32768:8:1$eb3799dacafe9e53$98060ec0dbd19bbaa0c6dd3fa9988c914c8f805a003fbc7387a25a206d9ae2f98f5e92513185d007806ba779f6f1854349558ae4cd93aad964c7d6ffd73e1dc1', 'palestinian territory occupied', 'jerusalem', 1, '252198'),
  (1619, 'Amjad Husseini', 'amjad.husseini789@gmail.com', 'scrypt:32768:8:1$17b6a33b1c91e48b$a53f254443c2ebccc03e9274b553439b8dfcc35464660e2bc74387b22c41dafe39e9c48daac14d8288d6e7c8511748924dbbc7e01747cebd945170e77dbef9b9', 'palestinian territory occupied', 'jerusalem', 1, '471875'),
  (1620, 'Yara Shaheen', 'yara.shaheen820@gmail.com', 'scrypt:32768:8:1$f5f07c00f143f047$7dbc3c887aeb03b9376aafc91c850c0b8026b3d58c39c037a76083b2e1d68bf2400fb24f18682821fadbe9d913872e52d613d54557dd1eaf10e0f59b47d331a0', 'palestinian territory occupied', 'jerusalem', 1, '509875'),
  (1621, 'Muath Abu Ghosh', 'muath.abughosh2001@gmail.com', 'scrypt:32768:8:1$cbbfae314f860c1e$9e738ded2008f3abd50fbf02b8426769a203463cb8949d05de4db24f80f0e336ba6f73082d109691f0e47dfaee35cae1b6304e1309addc1797d7b611114fbe71', 'palestinian territory occupied', 'jerusalem', 1, '062944'),
  (1622, 'Ziad Sabbagh', 'ziad.sabbagh1986@hotmail.com', 'scrypt:32768:8:1$fbba2ef435c29e54$bcd0963225be9c7980ec380eff1964a7826c2adccd58285d941d5df90dfb61c60b66107a241b14986d23feac7e8a25ca3f439ce0fdd1065918a664e93faed893', 'palestinian territory occupied', 'bethlehem', 1, '203170'),
  (1623, 'Maram Natsheh', 'maram.natsheh@gmail.com', 'scrypt:32768:8:1$a336f608d84ef253$e48ae194dba8b396e40fb9dde4f1e0a08f794dfbf7cb1bde6254c3d66abb4e87e74ae2f0ee97a4463e8cb117c50f0d763975e4532af2dcca770219e9a8340a7d', 'palestinian territory occupied', 'bethlehem', 1, '412772'),
  (1624, 'Mahmoud Abu Sneineh', 'mahmoud.abusneineh78@gmail.com', 'scrypt:32768:8:1$714012b7f9aa0a49$6a8e51a7ba80ade824b8a7235528828c746f58ee6948473f4f5b05b530a5786947284a31d0846ef12c3343c534a389f420dcbc762b49b6d57a2cbcd685540426', 'palestinian territory occupied', 'bethlehem', 1, '011151'),
  (1625, 'Ali Jaber', 'ali.jaber95@outlook.com', 'scrypt:32768:8:1$6d53bdfe851d3792$5b8b5026842abfe73e049740c6c7db75d5d1c5dac2eaa8f8bf2eee8d7ae76b352472940ccbe9e00a4614452505388a78f1a38e08ef6ff219eca8587f781b852c', 'palestinian territory occupied', 'bethlehem', 1, '152723'),
  (1626, 'Amal Amro', 'amal.amro22@gmail.com', 'scrypt:32768:8:1$c68a2dcb7b48da93$8cc7f499effd166ea933d3d6afa215f3506aec5f07512eab2a198448f7b105805088c81addf9e9be06e81402a5f65ffd50604f64c557503c11f51a1c333cd982', 'palestinian territory occupied', 'bethlehem', 1, '185977'),
  (1627, 'Majd Rabaya', 'majd.rabaya39@gmail.com', 'scrypt:32768:8:1$a496e004bbc3f9bf$63f84c795653871eec8b424c2724abd65fcf3e32886f38fc29fa2073b18c63d484de42c27a0d9e74195b3f28bc411df57fc985a30d843c185b0385c57c33cf81', 'palestinian territory occupied', 'bethlehem', 1, '914497'),
  (1628, 'Murad Kassab', 'murad.kassab168@yahoo.com', 'scrypt:32768:8:1$a9de6b9d4a75d9fa$ccb882b4b08e4c780af3a661feed4842297e0f60c3d0e0492052b5b6c123570d3ee17a67b4960a7e9fde8235e62314e3bd10258be4280c1baf0ce1ddbdbbc40a', 'palestinian territory occupied', 'jenin', 1, '509217'),
  (1629, 'Ahlam Karameh', 'ahlam.karameh199@gmail.com', 'scrypt:32768:8:1$0815b215dbf637d8$15c28d96cd025bb8fc43d5c49845edd15cc9790ec22709d55e93116749d5fa02c93a54914f3819553e218b3266b0f39148cbb5a5186afc175ccdd33acbd735ce', 'palestinian territory occupied', 'jenin', 1, '427643'),
  (1630, 'Mohannad Hammad', 'mohannad.hammad230@gmail.com', 'scrypt:32768:8:1$01b357571da2da46$159d28b0f51bc29c6110d3c0ca2678d3f8b3c4d9f7917f7731d5c4ade6c6330e3f42e48ba64dd60dd0becb80f38e0cba71a9c35a539dc36dfe0f1be90da1d83b', 'palestinian territory occupied', 'jenin', 1, '351119'),
  (1631, 'Suhail Hussein', 'suhail.hussein2005@gmail.com', 'scrypt:32768:8:1$2ede3984e2edcba9$af4e6e7efb5f4f12a1db17d1bfb93d6f21bcfde67ee870afbe4090e0d57c3a670e8e14432b3b000c07515c67e6707f4535ff5e1f2755208d9722b2552c52e7a6', 'palestinian territory occupied', 'jenin', 1, '914493'),
  (1632, 'Ghadeer Nabulsi', 'ghadeer.nabulsi1990@hotmail.com', 'scrypt:32768:8:1$f47924984be15515$5544b742661c946e8337dedbf8a38c82d777c897a344f00efaa19a280728dc807c6a8943e0fcb4f6e39a0b38f3819a6cf5b2303ca2b84c986194776e40850cfb', 'palestinian territory occupied', 'jenin', 1, '793461'),
  (1633, 'Taher Abu Libdeh', 'taher.abulibdeh@gmail.com', 'scrypt:32768:8:1$2e83f23be4b89d9e$6a462f61e5b4b1a2865ffbb0ee870a3d93b18d7ea2cae6e909e9038c21fbc47aa2b411d0ed0c1ebdfc26efad62555896520733f161e8d3febd198fa5bd052c55', 'palestinian territory occupied', 'jenin', 1, '911043'),
  (1634, 'Sarah Joulani', 'sarah.joulani68@gmail.com', 'scrypt:32768:8:1$1920ad02aa06f4d3$a067d2d7b24966f4ef4062a75cc1f37763c32a7ad49986ac569291d57f954329ca3b528128301b995492e2e1ff30380bbaa0b6a5c698178a926d597b4f5737af', 'palestinian territory occupied', 'tulkarm', 1, '989244'),
  (1635, 'Reem Ghanem', 'reem.ghanem85@outlook.com', 'scrypt:32768:8:1$b9b49cf112ae0bd3$8a91c7dbdd6df8804eab464b9af57caab4264937ba2cb14db92299e4cdae9d12c11eb37eea24c2f65601f3ada9eacce92f18628779baa12138c5a000d883149b', 'palestinian territory occupied', 'tulkarm', 1, '398511'),
  (1636, 'Yousef Kanaan', 'yousef.kanaan12@gmail.com', 'scrypt:32768:8:1$01d65b8475fc4f86$07a6eaa9d030040da6d73835d3817859b8de0df0082acca14a553eb14c72ccf26135015f505a1a54b5ccfa5b5e0f26476e98b2777ff062cc4030788587e2eee7', 'palestinian territory occupied', 'tulkarm', 1, '674387'),
  (1637, 'Ruba Jabareen', 'ruba.jabareen29@gmail.com', 'scrypt:32768:8:1$b025b7cc442b7666$4e08e9ce2e3ecbb2b5a9e05fdc49fc668ae98f183452ddea420e36d1492a9ef86cf56a9c94a2ff53aa7508d1b80ca5fc91143f4cd494c270673c23451289e2e1', 'palestinian territory occupied', 'tulkarm', 1, '055336'),
  (1638, 'Mai Mansour', 'mai.mansour478@yahoo.com', 'scrypt:32768:8:1$5a76ac2e9cdc2f24$315bf435185aa15358c8af2a08525fd29ffcfb667623a45a2a42bdd26d069cbc0172f577a603e7672e500e72e96a4235760f0aa00caea96f00fa176272206357', 'palestinian territory occupied', 'qalqilya', 1, '291434'),
  (1639, 'Yazan Sbeih', 'yazan.sbeih509@gmail.com', 'scrypt:32768:8:1$995d44c81bf830b6$d089f92cb6d020f11aba35e0f2604ae1f7695ceecd27c858051b597361b6c9d573d26db1ee1a3f001bb1372c8bc53c64cb519c6a58f5876097e7c812ff33af12', 'palestinian territory occupied', 'qalqilya', 1, '377049'),
  (1640, 'Salwa Sabbagh', 'salwa.sabbagh540@gmail.com', 'scrypt:32768:8:1$7a8567a3e726f297$0281752f22e527041621656a3237f803aef57d7651fc0a89854fb9452080f1a551ad9f1f712827a9994fec9d2173f345a466c0a62793931d3fef06e9bdf985e0', 'palestinian territory occupied', 'qalqilya', 1, '529896'),
  (1641, 'Louay Barakat', 'louay.barakat1987@gmail.com', 'scrypt:32768:8:1$5a8015c2c81ff8f7$c5785abc352d6c7849fe91a9202e7c1978fb83f1ea25fc2caea1692b38869557dab78fb0dc17603a1337893935b5d47e131a2aa738a2f3bb91ce083f4252aa1d', 'palestinian territory occupied', 'rafah', 1, '578406'),
  (1642, 'Moayad Mushtaha', 'moayad.mushtaha1994@hotmail.com', 'scrypt:32768:8:1$f5b1f8d09c4cc41a$9fe3897e15f3f6022abb347fdbbcfd7a71a8e7111b02e34cc751903f962bc729b1176ca402a29eddeab880e730185f1f41f0ae067f1f74b04b29c67c384ecb4a', 'palestinian territory occupied', 'rafah', 1, '999206'),
  (1643, 'Bisan Jaber', 'bisan.jaber@gmail.com', 'scrypt:32768:8:1$3e272d2f5c8abefa$c8b8762a77827a7c9d8947811ee526521da8434e859992d4607042138845e8d9eb3111cf8f381c35a4d89c86fd35c8b00cfd7012302993b901495ed20a9e563a', 'palestinian territory occupied', 'rafah', 1, '132041'),
  (1644, 'Issa Al-Masri', 'issa.almasri58@gmail.com', 'scrypt:32768:8:1$c1014a57164f185f$cbe4193182d0710d0191c312d05c8f79961343c43c546eecefed627bb93e54e937206a411f6f32db9ca0a07132e7bc4bbc5e4c7b75c77e7c898f16a169d4b3a2', 'palestinian territory occupied', 'khan yunis', 1, '576247'),
  (1645, 'Anas Al-Hindi', 'anas.alhindi75@outlook.com', 'scrypt:32768:8:1$81ac8a848f0c9847$03936fbc16cf116e9f2ac9b2e92903ff8d298cb1a47e5d2e72c730cadd5390ab2f16a0e0a0ac34a96b6c8052a75d33f7c26d32fa1ae233ddc698c7414ec647dd', 'palestinian territory occupied', 'khan yunis', 1, '984856'),
  (1646, 'Lubna Ashour', 'lubna.ashour92@gmail.com', 'scrypt:32768:8:1$103efc4a1d31cc93$2d0a73c897b80c653a40aae972b93c171c2c89419edf5d8cac5bdb17c09433f95c3c756987c82be69f00456a0bef8b62b1959965f7673ebd9879fe823832ea89', 'palestinian territory occupied', 'khan yunis', 1, '806656'),
  (1647, 'Mohammad Shaheen', 'mohammad.shaheen19@gmail.com', 'scrypt:32768:8:1$2a49e8ad9e0e868d$d7f7795e99d710b1ba69c9f8b7266a9c36b1585dbdcf95dc1f5d27b28f2f1a2619b55904bf8335c67d7e55ca447dac2931528f9b953ff8dc769332a05314f5ad', 'palestinian territory occupied', 'jericho', 1, '156379'),
  (1648, 'Omar Abu Ghosh', 'omar.abughosh788@yahoo.com', 'scrypt:32768:8:1$da65e6e955bbe9c2$61aacc10c777d15672c937a11556783129e2149e8b6e058e423366563b779314051f49b2b38e0b8f524b945917d4fbea72cdb1d9d4704762e4bc5a70bbc39a65', 'palestinian territory occupied', 'jericho', 1, '494932'),
  (1649, 'Mariam Zaqout', 'mariam.zaqout819@gmail.com', 'scrypt:32768:8:1$adff6ed7f29278d8$ac445c91ca4e832676b1c5ebf02b34a8d3aed89eebea14adfd599ec231904cb0ad6388eb89ba178884ab5814cd7227764dd7703e6d909b8002a54e4c10ea394e', 'palestinian territory occupied', 'deir al-balah', 1, '654157'),
  (1650, 'Jamal Al-Banna', 'jamal.albanna850@gmail.com', 'scrypt:32768:8:1$633300a5cf5c9908$db26821420be2d59ef5467d349e6f0e9932687d16b63dbbd0530c257073ff04f3881311ae79c8803838f6b9a3e393c8cddeba1b98066f3321b06396026ed42fe', 'palestinian territory occupied', 'deir al-balah', 1, '521651'),
  (1651, 'Qais Tuqan', 'qais.tuqan1991@gmail.com', 'scrypt:32768:8:1$190aec967609af50$ba8e1a198dd98214ead13251df44e4b1c5be0bf86fcb62030b4c81555ea14a58183800a569e48353b74e2c998b5b3afd49bc0cf9907efe5605cdfc075a72ab91', 'palestinian territory occupied', 'tubas', 1, '263618'),
  (1652, 'Hiba Dweik', 'hiba.dweik1998@hotmail.com', 'scrypt:32768:8:1$a48b5055a43ef214$bf128cb7cc8a3398535969e3824b6114981b75b56328c884531d1b0d43ea0599a39612e22bed5900560a373d68fed9219e43c947d3f146fd58eb8572c25fb134', 'palestinian territory occupied', 'salfit', 1, '922594'),
  (1653, 'Firas Nasser', 'firas.nasser@gmail.com', 'scrypt:32768:8:1$ae259cb5eb71b5f1$ad7409a16cf93030e86c25ffb28024c401830957b4867b899f38ab8740b4b2d3c2de1fefe181b6fc086f3af8f5fac3aaee1b204463643bfeec0839b8168f9704', 'palestinian territory occupied', 'al-bireh', 1, '934785');


  UPDATE users 
  SET created_at = datetime(
      '2000-01-01 00:00:00', 
      '+' || (ABS(RANDOM()) % (strftime('%s', 'now') - strftime('%s', '2000-01-01 00:00:00'))) || ' seconds', 
      '+3 hours'
  );

-- ==================== SmartLine Seed: Managers (1-600) ====================
  INSERT INTO managers (user_id) VALUES
  (563),
  (101),
  (723),
  (607),
  (840),
  (236),
  (614),
  (103),
  (244),
  (846),
  (855),
  (118),
  (730),
  (519),
  (96),
  (203),
  (116),
  (285),
  (127),
  (753),
  (15),
  (168),
  (380),
  (902),
  (426),
  (419),
  (473),
  (618),
  (27),
  (264),
  (664),
  (541),
  (312),
  (645),
  (239),
  (662),
  (363),
  (537),
  (497),
  (111),
  (611),
  (766),
  (86),
  (408),
  (741),
  (98),
  (397),
  (276),
  (387),
  (115),
  (451),
  (601),
  (708),
  (743),
  (385),
  (178),
  (583),
  (240),
  (509),
  (816),
  (701),
  (318),
  (459),
  (429),
  (375),
  (16),
  (687),
  (691),
  (190),
  (393),
  (632),
  (3),
  (476),
  (738),
  (466),
  (243),
  (757),
  (131),
  (706),
  (298),
  (220),
  (218),
  (59),
  (472),
  (353),
  (427),
  (214),
  (183),
  (211),
  (65),
  (797),
  (467),
  (667),
  (496),
  (320),
  (573),
  (627),
  (663),
  (514),
  (764),
  (590),
  (133),
  (474),
  (683),
  (349),
  (595),
  (113),
  (752),
  (2),
  (273),
  (152),
  (255),
  (722),
  (401),
  (231),
  (51),
  (538),
  (478),
  (418),
  (533),
  (762),
  (234),
  (315),
  (693),
  (756),
  (659),
  (728),
  (526),
  (265),
  (351),
  (342),
  (155),
  (733),
  (495),
  (534),
  (744),
  (657),
  (893),
  (147),
  (457),
  (668),
  (515),
  (390),
  (7),
  (821),
  (39),
  (409),
  (839),
  (827),
  (505),
  (597),
  (804),
  (861),
  (547),
  (148),
  (602),
  (94),
  (843),
  (746),
  (489),
  (49),
  (281),
  (502),
  (589),
  (469),
  (782),
  (76),
  (266),
  (374),
  (711),
  (356),
  (487),
  (345),
  (571),
  (610),
  (779),
  (136),
  (801),
  (535),
  (725),
  (346),
  (38),
  (615),
  (104),
  (253),
  (849),
  (339),
  (208),
  (798),
  (205),
  (481),
  (888),
  (262),
  (114),
  (75),
  (444),
  (817),
  (792),
  (134),
  (624),
  (616),
  (789),
  (669),
  (456),
  (434),
  (360),
  (666),
  (254),
  (783),
  (471),
  (436),
  (561),
  (301),
  (570),
  (433),
  (653),
  (516),
  (174),
  (566),
  (720),
  (788),
  (334),
  (24),
  (483),
  (727),
  (468),
  (140),
  (299),
  (310),
  (872),
  (439),
  (681),
  (210),
  (897),
  (795),
  (494),
  (773),
  (770),
  (126),
  (267),
  (417),
  (91),
  (128),
  (242),
  (719),
  (649),
  (446),
  (629),
  (106),
  (737),
  (125),
  (272),
  (195),
  (600),
  (586),
  (772),
  (77),
  (504),
  (172),
  (232),
  (366),
  (868),
  (878),
  (543),
  (411),
  (217),
  (237),
  (367),
  (19),
  (549),
  (141),
  (321),
  (548),
  (732),
  (314),
  (475),
  (90),
  (582),
  (415),
  (644),
  (794),
  (894),
  (151),
  (889),
  (173),
  (48),
  (278),
  (425),
  (331),
  (377),
  (381),
  (386),
  (405),
  (682),
  (99),
  (120),
  (229),
  (340),
  (784),
  (748),
  (332),
  (463),
  (431),
  (158),
  (382),
  (202),
  (648),
  (786),
  (882),
  (461),
  (245),
  (215),
  (799),
  (565),
  (207),
  (488),
  (771),
  (55),
  (781),
  (808),
  (767),
  (165),
  (455),
  (518),
  (287),
  (458),
  (424),
  (637),
  (186),
  (891),
  (337),
  (608),
  (269),
  (863),
  (348),
  (105),
  (620),
  (803),
  (333),
  (695),
  (323),
  (647),
  (671),
  (837),
  (860),
  (18),
  (378),
  (643),
  (124),
  (700),
  (23),
  (54),
  (528),
  (402),
  (704),
  (690),
  (689),
  (696),
  (698),
  (311),
  (546),
  (330),
  (181),
  (823),
  (901),
  (555),
  (875),
  (252),
  (859),
  (247),
  (736),
  (159),
  (486),
  (361),
  (1),
  (449),
  (82),
  (344),
  (40),
  (270),
  (303),
  (379),
  (510),
  (160),
  (197),
  (853),
  (108),
  (480),
  (673),
  (74),
  (161),
  (246),
  (807),
  (41),
  (665),
  (754),
  (119),
  (844),
  (605),
  (822),
  (309),
  (354),
  (630),
  (192),
  (661),
  (740),
  (482),
  (815),
  (592),
  (517),
  (135),
  (224),
  (199),
  (634),
  (780),
  (371),
  (110),
  (407),
  (279),
  (297),
  (34),
  (755),
  (84),
  (507),
  (508),
  (32),
  (154),
  (869),
  (890),
  (50),
  (347),
  (871),
  (324),
  (226),
  (887),
  (713),
  (885),
  (117),
  (847),
  (631),
  (520),
  (428),
  (153),
  (776),
  (710),
  (372),
  (304),
  (735),
  (491),
  (189),
  -- Egypt
  (904), (905), (906), (907), (908), (909), (910), (911), (967), (968),
  (912),(913),(914),(915),(916),(917),(918),(919),(920),(921),(922),(923),
  (969),(970),(971),(972),(973),
  (1007),(1008),(1009),(1010),(1011),(1012),
  (1048),(1049),(1070),(1071),(1082),(1083),(1092),(1093),(1106),(1107),(1119),(1120),(1113),(1114),(1125),(1126),(1159),(1160),
  (1152),(1146),(1147),(1185),(1186),(1200),(1099),(1129),(1138),
  -- Saudi Arabia
  (1204), (1205), (1206), (1207), (1208), (1248), (1249), (1250), (1251), (1252),
  (1209),(1210),(1211),(1212),(1213),(1214),(1215),(1216),
  (1253),(1254),(1255),(1256),(1257),(1258),
  (1302),(1303),(1304),(1305),
  (1316),(1317),(1318),
  (1278),(1279),(1290),(1291),(1335),(1336),(1348),(1353),(1342),
  -- UAE
  (1404), (1405), (1406), (1407), (1454), (1455), (1456), (1457), (1458), (1459),
  (1408),(1409),(1410),(1411),(1412),(1413),
  (1460),(1461),(1462),(1463),(1464),
  (1486),(1487),(1488),
  (1520),(1521),(1530),(1510),
  -- Palestine
  (1554), (1555), (1556), (1572), (1573), (1574), (1575), (1576), (1577), (1578),
  (1557),(1558),(1559),(1560),
  (1579),(1580),(1581),
  (1586),(1587),
  (1598),(1622),(1628);

-- ==================== SmartLine Seed: Companies (1-600) ====================
  INSERT INTO companies (manager_id, name, category, country, city, opening_time, closing_time, address, phone, description) VALUES
  (1, 'Al-Ofoq Driving School', 'edu', 'saudi arabia', 'sakakah', NULL, NULL, '6 Othman bin Affan Road, Al-Aziziyah District, Sakakah', '+966 52 080 3036', 'School enrollment, tours and parent consultations at the front desk.'),
  (2, 'Delta Computer Institute', 'edu', 'egypt', 'giza', '08:00', '20:00', '32 Tahrir Street, Giza', '+20 10 2535 7973', 'Computer skills and IT courses with hands-on lab sessions.'),
  (3, 'Khalifah A City Courts Services Office', 'government_offices', 'united arab emirates', 'khalifah a city', '08:30', '15:30', '21 Hamdan Street, Al Nahda, Khalifah A City', '+971 58 487 8732', 'Citizen services office for applications, renewals and official documents.'),
  (4, 'Al-Hadaf Printing', 'other', 'saudi arabia', 'tumayr', NULL, NULL, '40 Prince Sultan Street, Al-Salam District, Tumayr', '+966 50 977 6472', 'Printing, copying and binding services.'),
  (5, 'Jasmine Connect Customer Care - Gaza', 'telecom', 'palestinian territory occupied', 'gaza', '09:00', '21:00', '109 Main Street, Gaza', '+970 2 921 2684', 'Customer care for bill payment, line activation and technical help.'),
  (6, 'Al-Hayat Specialized Clinic', 'clinics', 'egypt', 'cairo', '16:00', '23:00', '82 El-Merghany Street, South Sinai', '+20 15 7343 7218', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (7, 'Bright Future Kindergarten', 'edu', 'saudi arabia', 'turaif', '09:00', '18:00', '48 Al-Urubah Road, Al-Hamra District, Turaif', '+966 51 865 1514', 'Kindergarten and early learning with play-based activities.'),
  (8, 'Sahara Camping & Tours', 'other', 'egypt', 'giza', '10:00', '22:00', '53 Al-Nasr Street, Giza', '+20 15 5999 4532', 'Guided tours and trip packages for individuals and groups.'),
  (9, 'El-Tahrir Diagnostic Center', 'clinics', 'egypt', 'suez', '09:00', '21:00', '44 El-Thawra Street, Suez', '+20 11 1510 9552', 'Diagnostic tests, lab work and clinic consultations with quick results.'),
  (10, 'Embroidery Atelier', 'other', 'palestinian territory occupied', 'hebron', NULL, NULL, '136 Omar Al-Mukhtar Street, Hebron', '+970 8 280 2877', 'Traditional embroidery and custom pieces.'),
  (11, 'Zaytoun National Bank - Jericho Branch', 'banks', 'palestinian territory occupied', 'jericho', '09:00', '17:00', '108 Al-Rimal Street, Jericho', '+970 56 258 9147', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (12, 'Cairo Heritage Bank - Kafr El Sheikh Branch', 'banks', 'egypt', 'kafr el sheikh', '09:00', '17:00', '110 El-Merghany Street, Kafr El Sheikh', '+20 11 5324 9035', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (13, 'Khawr Fakkān Municipality Service Center', 'government_offices', 'united arab emirates', 'khawr fakkān', '08:30', '15:30', '58 Electra Street, Al Markaziyah, Khawr Fakkān', '800 2951', 'Government service desk for permits, records and citizen inquiries.'),
  (14, 'Al-Kaff Oud Boutique', 'other', 'saudi arabia', 'rābigh', '10:00', '22:00', '122 King Fahd Road, Al-Malaz District, Rābigh', '+966 57 576 1827', 'Oud and perfumes, gift packaging available.'),
  (15, 'Gharbia Tax Authority Office', 'government_offices', 'egypt', 'gharbia', '08:00', '14:00', '99 Al-Geish Street, Gharbia', '+20 11 7871 0071', 'Official services center. Bring a valid ID and the required documents.'),
  (16, 'Qena Tax Authority Office', 'government_offices', 'egypt', 'qena', '07:30', '13:30', '68 Al-Geish Street, Qena', '+20 11 5396 4824', 'Public service counter handling requests, certificates and renewals.'),
  (17, 'Cleopatra Language School', 'edu', 'egypt', 'kafr el sheikh', '14:00', '22:00', '90 El-Horreya Avenue, Kafr El Sheikh', '+20 12 4370 7577', 'Language courses for kids and adults with placement tests and small classes.'),
  (18, 'Al-Majd Girls School', 'edu', 'saudi arabia', 'al bahah', '08:00', '17:00', '140 Al-Madinah Road, Al-Malaz District, Al Bahah', '+966 56 824 8382', 'School enrollment, tours and parent consultations at the front desk.'),
  (19, 'Delta Telecom Store - Cairo', 'telecom', 'egypt', 'cairo', '00:00', '00:00', '65 Al-Gomhoria Street, cairo', '+20 11 0872 4081', 'Handles new lines, plan upgrades, recharge and router support.'),
  (20, 'Pearl Telecom Customer Care - Ras Al Khaimah', 'telecom', 'united arab emirates', 'ras al khaimah', '10:00', '22:00', '108 Al Wasl Road, Al Barsha, Ras Al Khaimah', '800 4490', 'Handles new lines, plan upgrades, recharge and router support.'),
  (21, 'Lotus Connect Store - Aswan', 'telecom', 'egypt', 'aswan', '09:00', '23:00', '31 El-Merghany Street, Aswan', '+20 11 9506 5941', 'Handles new lines, plan upgrades, recharge and router support.'),
  (22, 'Falcon Security Services', 'other', 'egypt', 'cairo', '00:00', '00:00', '5 El-Thawra Street, New Valley', '+20 46 7524796', 'Security guard and alarm services for businesses.'),
  (23, 'An Nimāş Municipality Service Center', 'government_offices', 'saudi arabia', 'an nimāş', '07:30', '13:30', '51 King Abdulaziz Street, Al-Aziziyah District, An Nimāş', '920820012', 'Official services center. Bring a valid ID and the required documents.'),
  (24, 'Yatta Notary Office', 'government_offices', 'palestinian territory occupied', 'yatta', '08:00', '14:00', '122 Omar Al-Mukhtar Street, Yatta', '+970 56 530 0485', 'Public service counter handling requests, certificates and renewals.'),
  (25, 'Al-Mamlaka Travel Agency', 'other', 'saudi arabia', 'dammam', '10:00', '22:00', '14 Prince Sultan Street, Al-Aziziyah District, Dammam', '+966 13 081 5513', 'Flight tickets, hotel bookings and tour packages.'),
  (26, 'Kayan Photography Studio', 'other', 'saudi arabia', 'buraidah', '10:00', '22:00', '78 King Abdullah Road, Al-Faisaliyah District, Buraidah', '+966 11 637 5956', 'Photo shoots, passport photos and event coverage.'),
  (27, 'Najd Gym & Fitness', 'other', 'saudi arabia', 'linah', '00:00', '00:00', '26 Al-Amir Naif Street, Al-Nuzha District, Linah', '+966 17 576 1497', 'Gym with free weights, cardio machines and group classes.'),
  (28, 'Najd Commercial Bank - Umm As Sāhik Branch', 'banks', 'saudi arabia', 'umm as sāhik', NULL, NULL, '11 King Abdullah Road, Al-Malaz District, Umm As Sāhik', '+966 50 151 1505', 'Full-service branch for accounts, cards, loans and money transfers.'),
  (29, 'Cairo Heritage Bank - Asyut Branch', 'banks', 'egypt', 'cairo', '09:00', '16:00', '136 Salah Salem Road, Asyut', '+20 97 5649003', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (30, 'Falcon Connect Customer Care - Ad Dilam', 'telecom', 'saudi arabia', 'ad dilam', '09:00', '23:00', '124 King Abdulaziz Street, Al-Hamra District, Ad Dilam', '920752529', 'Handles new lines, plan upgrades, recharge and router support.'),
  (31, 'Marina Smile Dental', 'clinics', 'united arab emirates', 'al fujairah city', '09:00', '21:00', '21 Airport Road, Al Mamzar, Al Fujairah City', '+971 50 326 3284', 'Dental clinic for check-ups, fillings, cleaning and orthodontics by appointment.'),
  (32, 'Sabya Labor Office', 'government_offices', 'saudi arabia', 'sabya', '07:30', '13:30', '74 Al-Madinah Road, Al-Salam District, Sabya', '+966 13 648 9472', 'Official services center. Bring a valid ID and the required documents.'),
  (33, 'Red Sea Marine Training Institute', 'edu', 'saudi arabia', 'al jarādīyah', '14:00', '22:00', '116 Othman bin Affan Road, Al-Faisaliyah District, Al Jarādīyah', '+966 59 287 2353', 'Marine and diving training with certified instructors.'),
  (34, 'Al Noor Medical Center', 'clinics', 'united arab emirates', 'ajman city', '00:00', '00:00', '140 Sheikh Zayed Road, Al Mamzar, Ajman City', '+971 4 135 3380', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (35, 'South Sinai Civil Registry Office', 'government_offices', 'egypt', 'south sinai', '08:00', '14:00', '53 El-Galaa Street, South Sinai', '+20 12 2749 1950', 'Public service counter handling requests, certificates and renewals.'),
  (36, 'Pearl Telecom Store - Al Fujairah City', 'telecom', 'united arab emirates', 'al fujairah city', '09:00', '21:00', '46 Electra Street, Al Mamzar, Al Fujairah City', '800 0933', 'Retail store and service desk for mobile, internet and device repairs.'),
  (37, 'Najd Commercial Bank - Al Qatif Branch', 'banks', 'saudi arabia', 'al qatif', '09:00', '16:00', '70 Al-Olaya Street, Al-Sulimaniyah District, Al Qatif', '920918188', 'Full-service branch for accounts, cards, loans and money transfers.'),
  (38, 'Tuwaiq Telecom Customer Care - Riyadh', 'telecom', 'saudi arabia', 'riyadh', '00:00', '00:00', '139 King Fahd Road, Al-Nuzha District, Riyadh', '920582569', 'Retail store and service desk for mobile, internet and device repairs.'),
  (39, 'Al-Amana Real Estate Office', 'other', 'saudi arabia', 'najran', '10:00', '22:00', '20 Al-Madinah Road, Al-Aziziyah District, Najran', '+966 55 384 8995', 'Property listings, rentals and sales consultations.'),
  (40, 'Cleopatra Language School - Ismailia', 'edu', 'egypt', 'ismailia', '08:00', '20:00', '65 Al-Geish Street, Ismailia', '+20 82 4607739', 'Language courses for kids and adults with placement tests and small classes.'),
  (41, 'Al-Nahda Languages Center', 'edu', 'saudi arabia', 'turabah', '09:00', '18:00', '108 Al-Amir Naif Street, Al-Rawdah District, Turabah', '+966 50 314 2810', 'Language courses for kids and adults with placement tests and small classes.'),
  (42, 'Dune Bashing Adventures', 'other', 'united arab emirates', 'sharjah', NULL, NULL, '43 Electra Street, Al Nahda, Sharjah', '+971 55 241 1717', 'Outdoor adventure trips for individuals and groups.'),
  (43, 'Al-Salamah Pediatrics Center', 'clinics', 'egypt', 'cairo', '10:00', '22:00', '121 Al-Nasr Street, Faiyum', '+20 12 0036 5362', 'Child healthcare, vaccinations and check-ups in a child-friendly setting.'),
  (44, 'Desert Link Customer Care - At Tūbī', 'telecom', 'saudi arabia', 'at tūbī', '09:00', '23:00', '41 King Abdulaziz Street, Al-Rawdah District, At Tūbī', '+966 12 474 4383', 'Handles new lines, plan upgrades, recharge and router support.'),
  (45, 'Emirates Photography Studio', 'other', 'united arab emirates', 'murbaḩ', '00:00', '00:00', '6 Al Rolla Street, Downtown, Murbaḩ', '+971 54 626 6289', 'Photo shoots, passport photos and event coverage.'),
  (46, 'Horizon Telecom Store - Giza', 'telecom', 'egypt', 'giza', '09:00', '23:00', '57 26th of July Street, Giza', '+20 12 0886 4112', 'Handles new lines, plan upgrades, recharge and router support.'),
  (47, 'Oasis Family Clinics', 'clinics', 'saudi arabia', 'ash shafā', '09:00', '21:00', '51 Prince Mohammed bin Abdulaziz Street, Al-Sulimaniyah District, Ash Shafā', '+966 14 564 2997', 'Family medicine for all ages: consultations, check-ups and follow-up visits.'),
  (48, 'Oasis Telecom Store - Al Arţāwīyah', 'telecom', 'saudi arabia', 'al arţāwīyah', '09:00', '21:00', '8 Othman bin Affan Road, Al-Malaz District, Al Arţāwīyah', '920769897', 'Store for SIM cards, mobile plans, home internet and device support.'),
  (49, 'Riyadh Care Eye Center', 'clinics', 'saudi arabia', 'as saffānīyah', '00:00', '00:00', '14 Othman bin Affan Road, Al-Faisaliyah District, As Saffānīyah', '+966 16 829 3678', 'Eye exams, vision correction and treatment of common eye conditions.'),
  (50, 'Horizon Telecom Store - Ismailia', 'telecom', 'egypt', 'ismailia', '09:00', '21:00', '139 Sudan Street, Ismailia', '19605', 'Handles new lines, plan upgrades, recharge and router support.'),
  (51, 'Red Sea Marine Training Institute - Jazirah', 'edu', 'saudi arabia', 'jazirah', '08:00', '17:00', '4 King Fahd Road, Al-Salam District, Jazirah', '+966 53 834 1175', 'Marine and diving training with certified instructors.'),
  (52, 'Al-Khaleej Net Store - Tārūt', 'telecom', 'saudi arabia', 'tārūt', '10:00', '22:00', '26 King Abdullah Road, Al-Nuzha District, Tārūt', '+966 12 286 8438', 'Retail store and service desk for mobile, internet and device repairs.'),
  (53, 'Al Jazeera Diagnostic Centre', 'clinics', 'united arab emirates', 'dibba al-hisn', '09:00', '21:00', '130 Al Wasl Road, Al Markaziyah, Dibba Al-Hisn', '+971 6 318 8621', 'Diagnostic tests, lab work and clinic consultations with quick results.'),
  (54, 'Desert Rose Florist', 'other', 'united arab emirates', 'musaffah', NULL, NULL, '33 Khalifa Street, Al Qusais, Musaffah', '+971 52 973 0912', 'Fresh flowers and bouquets for every occasion.'),
  (55, 'Oasis Telecom Customer Care - Ar Rass', 'telecom', 'saudi arabia', 'ar rass', '09:00', '21:00', '32 Prince Sultan Street, Al-Sulimaniyah District, Ar Rass', '+966 12 238 5430', 'Retail store and service desk for mobile, internet and device repairs.'),
  (56, 'Habiba Tailoring Atelier', 'other', 'egypt', 'north sinai', '10:00', '22:00', '37 Port Said Street, North Sinai', '+20 57 7207833', 'Tailoring, alterations and made-to-measure clothing.'),
  (57, 'Sulţānah Traffic Department Service Center', 'government_offices', 'saudi arabia', 'sulţānah', '08:00', '14:00', '57 Al-Madinah Road, Al-Malaz District, Sulţānah', '920246311', 'Public service counter handling requests, certificates and renewals.'),
  (58, 'South Sinai Passport & Immigration Office', 'government_offices', 'egypt', 'south sinai', '08:00', '14:00', '29 Tahrir Street, South Sinai', '19238', 'Government service desk for permits, records and citizen inquiries.'),
  (59, 'Al-Naseem Flowers', 'other', 'saudi arabia', 'qurayyat', NULL, NULL, '117 King Abdullah Road, Al-Sulimaniyah District, Qurayyat', '+966 54 344 3586', 'Fresh flowers and bouquets for every occasion.'),
  (60, 'Al-Shifa Medical Clinic', 'clinics', 'palestinian territory occupied', 'beit jala', '10:00', '22:00', '101 Main Street, Beit Jala', '+970 56 354 2208', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (61, 'Al Fahidi Gift Shop', 'other', 'united arab emirates', 'dibba al fujairah municipality', '00:00', '00:00', '81 Al Khan Street, Deira, Dibba Al Fujairah Municipality', '+971 54 423 7682', 'Gifts, souvenirs and handmade items.'),
  (62, 'Palm Tree Nursery', 'edu', 'saudi arabia', 'al jubayl', '09:00', '18:00', '109 King Fahd Road, Al-Salam District, Al Jubayl', '+966 50 818 7685', 'Nursery and early learning with a caring, safe environment.'),
  (63, 'Smart Steps Learning Hub', 'edu', 'saudi arabia', 'jubail', '14:00', '22:00', '10 Al-Amir Naif Street, Al-Sulimaniyah District, Jubail', '+966 57 618 5253', 'Courses and tutoring with certified teachers and small class sizes.'),
  (64, 'Dhahran Civil Affairs Office', 'government_offices', 'saudi arabia', 'dhahran', '08:00', '14:00', '140 King Fahd Road, Al-Faisaliyah District, Dhahran', '+966 51 707 7233', 'Public service counter handling requests, certificates and renewals.'),
  (65, 'Golden Dates Shop', 'other', 'saudi arabia', 'al-ula', '09:00', '21:00', '61 Al-Urubah Road, Al-Faisaliyah District, Al-ula', '+966 53 816 1792', 'Dates, coffee and traditional treats.'),
  (66, 'Koshary El-Tahrir Restaurant', 'other', 'egypt', 'aswan', '10:00', '22:00', '125 Tahrir Street, Aswan', '+20 15 7660 4272', 'Dine-in and takeaway meals prepared fresh daily.'),
  (67, 'Oasis Quran Center', 'edu', 'united arab emirates', 'bani yas city', '08:00', '20:00', '128 Sheikh Zayed Road, Al Barsha, Bani Yas City', '+971 50 294 3809', 'Quran memorization and recitation classes for all ages.'),
  (68, 'Al Dhafra Medical Center', 'clinics', 'united arab emirates', 'bani yas city', '16:00', '23:00', '132 Khalifa Street, Al Majaz, Bani Yas City', '+971 56 142 9626', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (69, 'Qalyubia Citizens Service Center', 'government_offices', 'egypt', 'qalyubia', NULL, NULL, '21 El-Merghany Street, Qalyubia', '+20 65 5613065', 'Official services center. Bring a valid ID and the required documents.'),
  (70, 'Desert Falcon Safari', 'other', 'saudi arabia', 'as sulayyil', '10:00', '22:00', '80 King Abdullah Road, Al-Aziziyah District, As Sulayyil', '+966 16 911 9720', 'Desert safari and outdoor trips for individuals and groups.'),
  (71, 'Al Jazeera Diagnostic Centre - Abu Dhabi', 'clinics', 'united arab emirates', 'abu dhabi', '16:00', '23:00', '107 Al Maktoum Street, Al Barsha, Abu Dhabi', '+971 56 297 7105', 'Diagnostic tests, lab work and clinic consultations with quick results.'),
  (72, 'Falcon Security Services - Alexandria', 'other', 'egypt', 'alexandria', '10:00', '22:00', '118 26th of July Street, Alexandria', '+20 55 8788381', 'Security guard and alarm services for businesses.'),
  (73, 'Najd International School', 'edu', 'saudi arabia', 'madinat yanbu as sinaiyah', '08:00', '17:00', '110 Al-Urubah Road, Al-Malaz District, Madinat Yanbu As Sinaiyah', '+966 50 528 4935', 'School enrollment, tours and parent consultations at the front desk.'),
  (74, 'Gulf Auto Parts', 'other', 'united arab emirates', 'milehah', '10:00', '22:00', '70 Al Wasl Road, Al Majaz, Milehah', '+971 4 371 5575', 'Spare parts and accessories for most car makes.'),
  (75, 'Khobar Civil Affairs Office', 'government_offices', 'saudi arabia', 'khobar', '08:00', '14:00', '47 King Fahd Road, Al-Nuzha District, Khobar', '920142975', 'Government service desk for permits, records and citizen inquiries.'),
  (76, 'Sphinx Mobile Customer Care - Suez', 'telecom', 'egypt', 'suez', '10:00', '22:00', '76 Omar Ibn Al-Khattab Street, Suez', '19539', 'Retail store and service desk for mobile, internet and device repairs.'),
  (77, 'Al Fahidi Gift Shop - Ras Al Khaimah City', 'other', 'united arab emirates', 'ras al khaimah city', '18:00', '02:00', '70 Al Ittihad Road, Al Mamzar, Ras Al Khaimah City', '+971 55 095 2964', 'Gifts, souvenirs and handmade items.'),
  (78, 'Pharaoh Gym & Fitness', 'other', 'egypt', 'luxor', '07:00', '23:00', '113 Al-Geish Street, Luxor', '+20 15 3133 3540', 'Gym with free weights, cardio machines and group classes.'),
  (79, 'Camel Farm Tours', 'other', 'united arab emirates', 'dibba al-fujairah', '10:00', '22:00', '80 Al Ittihad Road, Al Majaz, Dibba Al-Fujairah', '+971 3 308 8991', 'Guided tours and trip packages for individuals and groups.'),
  (80, 'Al-Raha Medical Center', 'clinics', 'saudi arabia', 'al fuwayliq', '10:00', '22:00', '22 Othman bin Affan Road, Al-Hamra District, Al Fuwayliq', '+966 12 193 8287', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (81, 'Thebes English Center', 'edu', 'egypt', 'sharqia', '08:00', '17:00', '121 Port Said Street, Sharqia', '+20 15 8448 6372', 'English courses for kids and adults with placement tests and small classes.'),
  (82, 'Suez Canal Development Bank - Sharqia Branch', 'banks', 'egypt', 'sharqia', '09:00', '16:00', '15 Tahrir Street, Sharqia', '+20 11 3390 4194', 'Full-service branch for accounts, cards, loans and money transfers.'),
  (83, 'Misr Al-Gadida Bank - Cairo Branch', 'banks', 'egypt', 'cairo', '08:00', '14:00', '132 Port Said Street, Cairo', '+20 15 4328 2049', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (84, 'Khulays Traffic Department Service Center', 'government_offices', 'saudi arabia', 'khulays', '09:00', '15:00', '40 Al-Madinah Road, Al-Salam District, Khulays', '+966 53 180 6455', 'Public service counter handling requests, certificates and renewals.'),
  (85, 'Al-Wafa Physiotherapy Center', 'clinics', 'saudi arabia', 'al muţayrifī', '09:00', '21:00', '88 Prince Sultan Street, Al-Rawdah District, Al Muţayrifī', '+966 58 064 4699', 'Physiotherapy and rehabilitation sessions with personalized exercise plans.'),
  (86, 'Al-Ahsa Palm Medical Center', 'clinics', 'saudi arabia', 'dammam', '09:00', '21:00', '57 Tahlia Street, Al-Aziziyah District, Dammam', '+966 50 757 6268', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (87, 'Suez Canal Development Bank - Red Sea Branch', 'banks', 'egypt', 'red sea', '09:00', '16:00', '21 Tahrir Street, Red Sea', '+20 11 6649 7150', 'Branch offering account opening, currency services and customer support.'),
  (88, 'Nefertari Girls'' School', 'edu', 'egypt', 'port said', '08:00', '17:00', '11 26th of July Street, Port Said', '+20 10 9706 4459', 'School enrollment, tours and parent consultations at the front desk.'),
  (89, 'Al-Nour Language Institute', 'edu', 'egypt', 'red sea', '08:00', '17:00', '61 Sudan Street, Red Sea', '+20 10 6833 7425', 'Language courses for kids and adults with placement tests and small classes.'),
  (90, 'Pharaoh National Bank - Dakahlia Branch', 'banks', 'egypt', 'dakahlia', '09:00', '17:00', '129 El-Thawra Street, Dakahlia', '19051', 'Counter and ATM services with a dedicated desk for business clients.'),
  (91, 'Al-Ghad Science Club', 'edu', 'palestinian territory occupied', 'al-ram', '08:00', '17:00', '4 Omar Al-Mukhtar Street, Al-Ram', '+970 59 712 8019', 'Science club and tutoring with hands-on experiments.'),
  (92, 'Al-Ofoq Driving School - Khobar', 'edu', 'saudi arabia', 'khobar', '14:00', '22:00', '107 Al-Amir Naif Street, Al-Nuzha District, Khobar', '+966 54 286 7374', 'School enrollment, tours and parent consultations at the front desk.'),
  (93, 'Al Fujairah Municipality Notary Public Office', 'government_offices', 'united arab emirates', 'al fujairah municipality', '08:00', '14:00', '40 Electra Street, Al Mamzar, Al Fujairah Municipality', '800 1305', 'Citizen services office for applications, renewals and official documents.'),
  (94, 'Al-Sahha Polyclinic', 'clinics', 'saudi arabia', 'mulayjah', '09:00', '21:00', '25 King Abdullah Road, Al-Faisaliyah District, Mulayjah', '+966 55 998 6452', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (95, 'Al Jumūm Social Insurance Office', 'government_offices', 'saudi arabia', 'al jumūm', '08:30', '15:30', '87 Prince Sultan Street, Al-Rawdah District, Al Jumūm', '920181805', 'Citizen services office for applications, renewals and official documents.'),
  (96, 'Al-Bukhari Bakery', 'other', 'saudi arabia', 'sayhat', '10:00', '22:00', '134 Al-Khalidiyah Street, Al-Sulimaniyah District, Sayhat', '+966 52 773 3094', 'Fresh bread and pastries baked every day.'),
  (97, 'Al-Hamra Jewelry', 'other', 'saudi arabia', 'yanbu', '09:00', '21:00', '50 Al-Khalidiyah Street, Al-Sulimaniyah District, Yanbu', '+966 50 410 3355', 'Gold and silver jewelry, repairs and custom orders.'),
  (98, 'Al Qasba Dental Centre', 'clinics', 'united arab emirates', 'al fujairah city', '09:00', '21:00', '26 Al Khan Street, Al Mamzar, Al Fujairah City', '+971 7 457 0706', 'Dental clinic for check-ups, fillings, cleaning and orthodontics by appointment.'),
  (99, 'Al-Khaleej Net Customer Care - Rabigh', 'telecom', 'saudi arabia', 'rabigh', '09:00', '21:00', '28 Othman bin Affan Road, Al-Rawdah District, Rabigh', '+966 51 975 8692', 'Retail store and service desk for mobile, internet and device repairs.'),
  (100, 'Pearl Commercial Bank - Reef Al Fujairah City Branch', 'banks', 'united arab emirates', 'reef al fujairah city', '09:00', '16:00', '114 Al Khan Street, Deira, Reef Al Fujairah City', '+971 3 147 3481', 'Branch offering account opening, currency services and customer support.'),
  (101, 'Al-Shifa Family Medicine', 'clinics', 'saudi arabia', 'tabālah', '09:00', '21:00', '132 King Abdulaziz Street, Al-Rawdah District, Tabālah', '+966 55 069 3270', 'Family medicine for all ages: consultations, check-ups and follow-up visits.'),
  (102, 'Nile Care Polyclinic', 'clinics', 'egypt', 'luxor', '09:00', '21:00', '13 El-Thawra Street, Luxor', '+20 15 6129 1726', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (103, 'Desert Link Customer Care - Madinat Yanbu As Sinaiyah', 'telecom', 'saudi arabia', 'madinat yanbu as sinaiyah', '09:00', '23:00', '42 Prince Sultan Street, Al-Sulimaniyah District, Madinat Yanbu As Sinaiyah', '+966 53 346 7304', 'Store for SIM cards, mobile plans, home internet and device support.'),
  (104, 'Burj Investment Bank - As Satwah Branch', 'banks', 'united arab emirates', 'as satwah', '08:30', '15:00', '51 Corniche Road, Downtown, As Satwah', '+971 54 113 0898', 'Full-service branch for accounts, cards, loans and money transfers.'),
  (105, 'Al Munayzilah Water Service Center', 'government_offices', 'saudi arabia', 'al munayzilah', '08:30', '15:30', '31 King Abdulaziz Street, Al-Faisaliyah District, Al Munayzilah', '+966 54 416 7303', 'Official services center. Bring a valid ID and the required documents.'),
  (106, 'Najd Mobile Customer Care - Tabuk', 'telecom', 'saudi arabia', 'tabuk', '09:00', '21:00', '19 Prince Mohammed bin Abdulaziz Street, Al-Faisaliyah District, Tabuk', '920340363', 'Retail store and service desk for mobile, internet and device repairs.'),
  (107, 'Al-Ahram Savings Bank - Ismailia Branch', 'banks', 'egypt', 'ismailia', '08:30', '15:00', '81 Omar Ibn Al-Khattab Street, Ismailia', '+20 2 5290353', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (108, 'Ras Al Khaimah Courts Services Office', 'government_offices', 'united arab emirates', 'ras al khaimah', '08:30', '15:30', '10 Al Ittihad Road, Al Mamzar, Ras Al Khaimah', '+971 55 400 4647', 'Public service counter handling requests, certificates and renewals.'),
  (109, 'Al-Amana Auto Service', 'other', 'egypt', 'alexandria', '10:00', '22:00', '97 Al-Geish Street, Alexandria', '+20 15 2682 7759', 'Car maintenance, oil changes and diagnostics while you wait.'),
  (110, 'Tuwaiq Coding Academy', 'edu', 'saudi arabia', 'ain albaraha', NULL, NULL, '137 King Fahd Road, Al-Hamra District, Ain Albaraha', '+966 57 792 3536', 'Coding and programming classes for kids, teens and beginners.'),
  (111, 'Pharaoh Gym & Fitness - Monufia', 'other', 'egypt', 'monufia', '09:00', '21:00', '17 26th of July Street, Monufia', '+20 11 9852 4531', 'Gym with free weights, cardio machines and group classes.'),
  (112, 'Al-Ezz Auto Parts', 'other', 'saudi arabia', 'abū arīsh', '10:00', '22:00', '55 King Abdulaziz Street, Al-Salam District, Abū arīsh', '+966 59 102 2000', 'Spare parts and accessories for most car makes.'),
  (113, 'Kalba Customer Happiness Center', 'government_offices', 'united arab emirates', 'kalba', '08:00', '14:00', '58 Corniche Road, Al Barsha, Kalba', '800 8401', 'Government service desk for permits, records and citizen inquiries.'),
  (114, 'Al-Naseem Flowers - Aţ Ţaraf', 'other', 'saudi arabia', 'aţ ţaraf', '10:00', '22:00', '137 Al-Madinah Road, Al-Malaz District, Aţ Ţaraf', '+966 51 822 2199', 'Fresh flowers and bouquets for every occasion.'),
  (115, 'Delta Telecom Customer Care - Sohag', 'telecom', 'egypt', 'sohag', '09:00', '23:00', '105 El-Galaa Street, Sohag', '+20 10 6560 1973', 'Customer care for bill payment, line activation and technical help.'),
  (116, 'Sphinx Dental Clinic', 'clinics', 'egypt', 'cairo', '09:00', '21:00', '17 Salah Salem Road, Cairo', '+20 82 9538796', 'Dental clinic for check-ups, fillings, cleaning and orthodontics by appointment.'),
  (117, 'Riyadh Heritage Bank - Sabt Al Alayah Branch', 'banks', 'saudi arabia', 'sabt al alayah', '08:00', '14:00', '105 Al-Urubah Road, Al-Salam District, Sabt Al Alayah', '920972655', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (118, 'Al-Naseem Flowers - Mecca', 'other', 'saudi arabia', 'mecca', '07:00', '23:00', '72 King Abdulaziz Street, Al-Rawdah District, Mecca', '+966 13 590 9901', 'Fresh flowers and bouquets for every occasion.'),
  (119, 'Smart Mobile Repair', 'other', 'saudi arabia', 'buraidah', '10:00', '22:00', '6 Prince Mohammed bin Abdulaziz Street, Al-Hamra District, Buraidah', '+966 54 383 2576', 'Phone repairs, screen replacement and accessories.'),
  (120, 'Al-Mamlaka Travel Agency - Ras Tanura', 'other', 'saudi arabia', 'ras tanura', '09:00', '21:00', '65 Al-Urubah Road, Al-Aziziyah District, Ras Tanura', '+966 50 121 1867', 'Flight tickets, hotel bookings and tour packages.'),
  (121, 'Ras Al-Khaimah Municipality Service Center', 'government_offices', 'united arab emirates', 'ras al-khaimah', '08:00', '14:00', '91 Khalifa Street, Deira, Ras Al-Khaimah', '800 4880', 'Official services center. Bring a valid ID and the required documents.'),
  (122, 'Al-Mahrousa Event Planning', 'other', 'egypt', 'south sinai', NULL, NULL, '2 Sudan Street, South Sinai', '+20 11 2623 3735', 'Event planning and decoration for weddings and parties.'),
  (123, 'Al-Mamlaka Travel Agency - Al Jubayl', 'other', 'saudi arabia', 'al jubayl', '09:00', '21:00', '134 Al-Amir Naif Street, Al-Hamra District, Al Jubayl', '+966 14 744 7232', 'Flight tickets, hotel bookings and tour packages.'),
  (124, 'Corniche Bookstore', 'other', 'united arab emirates', 'dayrah', '07:00', '23:00', '69 Khalifa Street, Al Mamzar, Dayrah', '+971 58 849 6521', 'Books, stationery and school supplies.'),
  (125, 'Emirates Gulf Bank - Ras Al Khaimah City Branch', 'banks', 'united arab emirates', 'ras al khaimah city', '09:00', '16:00', '91 Hamdan Street, Al Barsha, Ras Al Khaimah City', '800 6059', 'Full-service branch for accounts, cards, loans and money transfers.'),
  (126, 'Al Dhafra Municipality Service Center', 'government_offices', 'united arab emirates', 'al dhafra', '08:00', '14:00', '40 Al Khan Street, Al Mamzar, Al Dhafra', '+971 7 467 0830', 'Citizen services office for applications, renewals and official documents.'),
  (127, 'Al Jazeera Diagnostic Centre - Khawr Fakkān', 'clinics', 'united arab emirates', 'khawr fakkān', '09:00', '21:00', '62 Al Khan Street, Al Barsha, Khawr Fakkān', '+971 50 679 2550', 'Diagnostic tests, lab work and clinic consultations with quick results.'),
  (128, 'Al-Wafa Calligraphy School', 'edu', 'saudi arabia', 'rahman', '09:00', '18:00', '88 Othman bin Affan Road, Al-Nuzha District, Rahman', '+966 54 503 4368', 'School enrollment, tours and parent consultations at the front desk.'),
  (129, 'Ad Dilam Traffic Department Service Center', 'government_offices', 'saudi arabia', 'ad dilam', '08:30', '15:30', '133 Prince Mohammed bin Abdulaziz Street, Al-Sulimaniyah District, Ad Dilam', '+966 54 875 2088', 'Public service counter handling requests, certificates and renewals.'),
  (130, 'Desert Falcon Safari - Al Munayzilah', 'other', 'saudi arabia', 'al munayzilah', '09:00', '21:00', '127 Prince Mohammed bin Abdulaziz Street, Al-Aziziyah District, Al Munayzilah', '+966 51 789 5833', 'Desert safari and outdoor trips for individuals and groups.'),
  (131, 'Al-Amana Real Estate Office - Al Mithnab', 'other', 'saudi arabia', 'al mithnab', '09:00', '21:00', '139 Al-Khalidiyah Street, Al-Sulimaniyah District, Al Mithnab', '+966 54 968 9551', 'Property listings, rentals and sales consultations.'),
  (132, 'Misr Al-Gadida Bank - Monufia Branch', 'banks', 'egypt', 'monufia', '09:00', '17:00', '11 Salah Salem Road, Monufia', '+20 15 3076 6415', 'Branch offering account opening, currency services and customer support.'),
  (133, 'Emirates Link Store - Manama', 'telecom', 'united arab emirates', 'manama', '10:00', '22:00', '59 Hamdan Street, Downtown, Manama', '+971 3 689 1640', 'Retail store and service desk for mobile, internet and device repairs.'),
  (134, 'Al-Noor Language Institute', 'edu', 'saudi arabia', 'mulayjah', NULL, NULL, '138 Prince Mohammed bin Abdulaziz Street, Al-Malaz District, Mulayjah', '+966 12 445 4497', 'Language courses for kids and adults with placement tests and small classes.'),
  (135, 'Riyadh Municipality Service Center', 'government_offices', 'saudi arabia', 'riyadh', '08:30', '15:30', '135 Al-Amir Naif Street, Al-Nuzha District, Riyadh', '920067844', 'Official services center. Bring a valid ID and the required documents.'),
  (136, 'Al Majaz Art Academy', 'edu', 'united arab emirates', 'musaffah', '08:00', '20:00', '10 Al Rolla Street, Al Qusais, Musaffah', '+971 4 393 0309', 'Art and creative classes for kids and adults.'),
  (137, 'Creek Medical Centre', 'clinics', 'united arab emirates', 'al batayih', '09:00', '21:00', '90 Al Khan Street, Downtown, Al Batayih', '+971 9 221 0927', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (138, 'Thyme & Zaatar Delicatessen', 'other', 'palestinian territory occupied', 'tubas', '09:00', '21:00', '106 Al-Quds Street, Tubas', '+970 56 157 7451', 'Local specialties, spices and ready-made food.'),
  (139, 'Delta Auto Parts', 'other', 'egypt', 'minya', '09:00', '21:00', '96 Omar Ibn Al-Khattab Street, Minya', '+20 48 1414996', 'Spare parts and accessories for most car makes.'),
  (140, 'Al-Kaff Oud Boutique - Jeddah', 'other', 'saudi arabia', 'jeddah', '10:00', '22:00', '51 Al-Khalidiyah Street, Al-Salam District, Jeddah', '+966 53 529 3370', 'Oud and perfumes, gift packaging available.'),
  (141, 'Gulf Connect Customer Care - Al Fujairah Municipality', 'telecom', 'united arab emirates', 'al fujairah municipality', '10:00', '22:00', '56 Khalifa Street, Downtown, Al Fujairah Municipality', '+971 50 394 1770', 'Handles new lines, plan upgrades, recharge and router support.'),
  (142, 'Al-Amal Kidney Care', 'clinics', 'saudi arabia', 'rābigh', '16:00', '23:00', '42 King Abdullah Road, Al-Rawdah District, Rābigh', '+966 58 472 9055', 'Kidney care and dialysis follow-up with specialist nephrologists.'),
  (143, 'As Saffānīyah Social Insurance Office', 'government_offices', 'saudi arabia', 'as saffānīyah', '08:00', '14:00', '87 King Fahd Road, Al-Nuzha District, As Saffānīyah', '+966 53 168 4285', 'Public service counter handling requests, certificates and renewals.'),
  (144, 'Nile Care Polyclinic - Alexandria', 'clinics', 'egypt', 'alexandria', '10:00', '22:00', '116 Salah Salem Road, Alexandria', '+20 15 4210 0313', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (145, 'Beit Lahia Notary Office', 'government_offices', 'palestinian territory occupied', 'beit lahia', '08:30', '15:30', '41 Omar Al-Mukhtar Street, Beit Lahia', '+970 59 961 9880', 'Public service counter handling requests, certificates and renewals.'),
  (146, 'Dar Al-Hekma Clinic', 'clinics', 'egypt', 'beheira', '08:00', '16:00', '3 El-Galaa Street, Beheira', '+20 12 9725 3856', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (147, 'At Tuwal Municipality Service Center', 'government_offices', 'saudi arabia', 'at tuwal', '08:30', '15:30', '111 Al-Khalidiyah Street, Al-Nuzha District, At Tuwal', '920484144', 'Official services center. Bring a valid ID and the required documents.'),
  (148, 'Al-Quds Travel Agency', 'other', 'palestinian territory occupied', 'gaza', NULL, NULL, '14 Al-Manara Square, Gaza', '+970 56 601 8083', 'Flight tickets, hotel bookings and tour packages.'),
  (149, 'Al-Shifa Medical Clinic - Biddya', 'clinics', 'palestinian territory occupied', 'biddya', NULL, NULL, '27 Al-Irsal Street, Biddya', '+970 56 789 0293', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (150, 'Oasis Telecom Store - Qalat Bīshah', 'telecom', 'saudi arabia', 'qal at bīshah', '09:00', '23:00', '123 Al-Khalidiyah Street, Al-Nuzha District, Qal at Bīshah', '+966 14 572 1838', 'Store for SIM cards, mobile plans, home internet and device support.'),
  (151, 'Al-Khaleej National Bank - Tabuk Branch', 'banks', 'saudi arabia', 'tabuk', '09:00', '16:00', '37 King Fahd Road, Al-Rawdah District, Tabuk', '+966 57 438 6507', 'Branch offering account opening, currency services and customer support.'),
  (152, 'Arraba Land Registry Office', 'government_offices', 'palestinian territory occupied', 'arraba', '08:00', '14:00', '90 Al-Rimal Street, Arraba', '+970 56 722 6699', 'Official services center. Bring a valid ID and the required documents.'),
  (153, 'Al-Iqra Reading Club', 'edu', 'palestinian territory occupied', 'jerusalem', '08:00', '17:00', '102 Al-Balad Street, Jerusalem', '+970 4 567 2809', 'Reading and writing club for children and teens.'),
  (154, 'Safwa Digital Services Support Center', 'government_offices', 'saudi arabia', 'safwa', '09:00', '15:00', '116 Al-Urubah Road, Al-Sulimaniyah District, Safwa', '+966 12 598 4222', 'Government service desk for permits, records and citizen inquiries.'),
  (155, 'Cleopatra Women''s Health Center', 'clinics', 'egypt', 'minya', '09:00', '21:00', '29 Corniche El-Nile, Minya', '+20 62 7005912', 'Women''s health, antenatal care and gynecology consultations with female doctors.'),
  (156, 'Najd Gym & Fitness - Ta if', 'other', 'saudi arabia', 'ta if', '09:00', '21:00', '63 Tahlia Street, Al-Nuzha District, Ta if', '+966 13 065 0984', 'Gym with free weights, cardio machines and group classes.'),
  (157, 'Al-Wafaa Real Estate Office', 'other', 'egypt', 'gharbia', '07:00', '23:00', '92 Port Said Street, Gharbia', '+20 10 0300 7543', 'Property listings, rentals and sales consultations.'),
  (158, 'Al-Quds Commercial Bank - Gaza Branch', 'banks', 'palestinian territory occupied', 'gaza', '08:30', '15:00', '31 Al-Balad Street, Gaza', '+970 4 363 1479', 'Branch offering account opening, currency services and customer support.'),
  (159, 'Muzayri Electricity & Water Service Center', 'government_offices', 'united arab emirates', 'muzayri', '07:30', '13:30', '97 Al Khan Street, Al Qusais, Muzayri', '+971 6 560 9540', 'Public service counter handling requests, certificates and renewals.'),
  (160, 'Al-Hamra Jewelry - Mislīyah', 'other', 'saudi arabia', 'mislīyah', '10:00', '22:00', '85 Othman bin Affan Road, Al-Faisaliyah District, Mislīyah', '+966 14 189 4624', 'Gold and silver jewelry, repairs and custom orders.'),
  (161, 'El-Salam Pharmacy', 'other', 'egypt', 'beni suef', '10:00', '22:00', '63 26th of July Street, Beni Suef', '+20 12 3816 1523', 'Prescriptions, over-the-counter medicine and health products.'),
  (162, 'Falcon Orthopedic Center', 'clinics', 'saudi arabia', 'al awjām', '10:00', '22:00', '134 King Fahd Road, Al-Nuzha District, Al Awjām', '+966 50 953 4724', 'Bone and joint care, sports injuries and rehabilitation planning.'),
  (163, 'Al-Amal Special Education Center', 'edu', 'saudi arabia', 'najrān', '14:00', '22:00', '12 King Abdullah Road, Al-Nuzha District, Najrān', '+966 50 201 1207', 'Courses and tutoring with certified teachers and small class sizes.'),
  (164, 'Riyadh Care Eye Center - Tabālah', 'clinics', 'saudi arabia', 'tabālah', NULL, NULL, '85 Al-Urubah Road, Al-Rawdah District, Tabālah', '+966 52 225 1785', 'Eye exams, vision correction and treatment of common eye conditions.'),
  (165, 'Al-Ofoq Driving School - Khulays', 'edu', 'saudi arabia', 'khulays', '09:00', '18:00', '74 Prince Mohammed bin Abdulaziz Street, Al-Salam District, Khulays', '+966 53 603 2877', 'School enrollment, tours and parent consultations at the front desk.'),
  (166, 'Zaytoun Mobile Store - Abasan Al-Kabira', 'telecom', 'palestinian territory occupied', 'abasan al-kabira', '09:00', '23:00', '93 Al-Rimal Street, Abasan Al-Kabira', '+970 59 128 7468', 'Retail store and service desk for mobile, internet and device repairs.'),
  (167, 'Falcon Security Services - Damietta', 'other', 'egypt', 'damietta', NULL, NULL, '78 Sudan Street, Damietta', '+20 48 3979978', 'Security guard and alarm services for businesses.'),
  (168, 'Al-Ghad Medical Center', 'clinics', 'saudi arabia', 'adh dhibiyah', '10:00', '22:00', '140 Al-Khalidiyah Street, Al-Rawdah District, Adh Dhibiyah', '+966 55 272 8175', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (169, 'Dr. Noura Al-Qahtani Women''s Clinic', 'clinics', 'saudi arabia', 'al yamamah', '09:00', '21:00', '21 Al-Khalidiyah Street, Al-Aziziyah District, Al Yamamah', '+966 17 791 3823', 'Women''s health, antenatal care and gynecology consultations with female doctors.'),
  (170, 'Dibba Al-Hisn Electricity & Water Service Center', 'government_offices', 'united arab emirates', 'dibba al-hisn', '07:30', '13:30', '30 Al Ittihad Road, Al Nahda, Dibba Al-Hisn', '800 0371', 'Public service counter handling requests, certificates and renewals.'),
  (171, 'Al-Baraka Supermarket', 'other', 'saudi arabia', 'al qārah', '18:00', '02:00', '79 Al-Madinah Road, Al-Nuzha District, Al Qārah', '+966 14 719 3121', 'Groceries and household items.'),
  (172, 'Najd Mobile Customer Care - Mislīyah', 'telecom', 'saudi arabia', 'mislīyah', '10:00', '22:00', '137 Al-Urubah Road, Al-Faisaliyah District, Mislīyah', '+966 12 160 6183', 'Store for SIM cards, mobile plans, home internet and device support.'),
  (173, 'Tuwaiq Specialized Clinics', 'clinics', 'saudi arabia', 'al mithnab', '10:00', '22:00', '106 Tahlia Street, Al-Aziziyah District, Al Mithnab', '+966 51 734 5591', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (174, 'Al-Safwa Car Service', 'other', 'saudi arabia', 'sayhat', '09:00', '21:00', '97 Al-Madinah Road, Al-Faisaliyah District, Sayhat', '+966 58 751 4679', 'Local service business serving the neighborhood with friendly service.'),
  (175, 'Tuwaiq Savings Bank - Tumayr Branch', 'banks', 'saudi arabia', 'tumayr', '09:00', '16:00', '21 Al-Amir Naif Street, Al-Salam District, Tumayr', '+966 54 979 3170', 'Branch offering account opening, currency services and customer support.'),
  (176, 'Thyme Language Center', 'edu', 'palestinian territory occupied', 'abasan al-kabira', '09:00', '18:00', '40 Al-Irsal Street, Abasan Al-Kabira', '+970 56 909 0347', 'Language courses for kids and adults with placement tests and small classes.'),
  (177, 'Al-Noor Eye Clinic', 'clinics', 'egypt', 'matrouh', '16:00', '23:00', '12 Port Said Street, Matrouh', '+20 10 2928 9605', 'Eye exams, vision correction and treatment of common eye conditions.'),
  (178, 'Al-Quds Commercial Bank - Arraba Branch', 'banks', 'palestinian territory occupied', 'arraba', '09:00', '16:00', '33 Jaffa Street, Arraba', '+970 4 974 3363', 'Full-service branch for accounts, cards, loans and money transfers.'),
  (179, 'Al-Basma Dental Care', 'clinics', 'saudi arabia', 'riyadh', '09:00', '21:00', '126 Al-Amir Naif Street, Al-Hamra District, Riyadh', '+966 13 651 1213', 'Dental clinic for check-ups, fillings, cleaning and orthodontics by appointment.'),
  (180, 'Al Qasba Dental Centre - Khalifah A City', 'clinics', 'united arab emirates', 'khalifah a city', '16:00', '23:00', '103 Sheikh Zayed Road, Al Majaz, Khalifah A City', '+971 50 526 0464', 'Dental clinic for check-ups, fillings, cleaning and orthodontics by appointment.'),
  (181, 'Dr. Faisal Al-Otaibi ENT Clinic', 'clinics', 'saudi arabia', 'al mubarraz', '09:00', '21:00', '16 Othman bin Affan Road, Al-Hamra District, Al Mubarraz', '+966 59 145 9283', 'Ear, nose and throat consultations, hearing tests and minor procedures.'),
  (182, 'Beheira Social Insurance Office', 'government_offices', 'egypt', 'beheira', '09:00', '15:00', '126 El-Galaa Street, Beheira', '+20 11 2898 4670', 'Official services center. Bring a valid ID and the required documents.'),
  (183, 'Desert Link Customer Care - Umm As Sāhik', 'telecom', 'saudi arabia', 'umm as sāhik', '10:00', '22:00', '100 Al-Madinah Road, Al-Rawdah District, Umm As Sāhik', '+966 14 095 1512', 'Retail store and service desk for mobile, internet and device repairs.'),
  (184, 'Cleopatra Women''s Health Center - Giza', 'clinics', 'egypt', 'giza', '10:00', '22:00', '57 Omar Ibn Al-Khattab Street, Giza', '+20 15 6141 3766', 'Women''s health, antenatal care and gynecology consultations with female doctors.'),
  (185, 'Falcon Gulf Bank - Abqaiq Branch', 'banks', 'saudi arabia', 'abqaiq', '08:30', '15:00', '31 Prince Sultan Street, Al-Aziziyah District, Abqaiq', '+966 57 178 9371', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (186, 'Skills Academy', 'edu', 'palestinian territory occupied', 'jabalia', '09:00', '18:00', '97 Al-Rimal Street, Jabalia', '+970 59 584 8912', 'Skills training and short courses for students and job seekers.'),
  (187, 'Tuwaiq Savings Bank - Al Mindak Branch', 'banks', 'saudi arabia', 'al mindak', '09:00', '17:00', '132 Al-Khalidiyah Street, Al-Aziziyah District, Al Mindak', '+966 57 972 9013', 'Branch offering account opening, currency services and customer support.'),
  (188, 'Abu Simbel Neurology Center', 'clinics', 'egypt', 'red sea', '09:00', '21:00', '98 Tahrir Street, Red Sea', '+20 95 8815059', 'Neurology consultations, nerve studies and ongoing patient follow-up.'),
  (189, 'Cedar Telecom Customer Care - Al-Ram', 'telecom', 'palestinian territory occupied', 'al-ram', '09:00', '21:00', '34 Salah Al-Din Street, Al-Ram', '+970 4 966 5215', 'Retail store and service desk for mobile, internet and device repairs.'),
  (190, 'Cairo Heritage Bank - Qena Branch', 'banks', 'egypt', 'qena', '08:30', '15:00', '122 Sudan Street, Qena', '+20 65 2066135', 'Branch offering account opening, currency services and customer support.'),
  (191, 'Falcon Gulf Bank - Medina Branch', 'banks', 'saudi arabia', 'medina', NULL, NULL, '66 Prince Mohammed bin Abdulaziz Street, Al-Salam District, Medina', '+966 13 224 3832', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (192, 'Jordan Valley Bank - Silwad Branch', 'banks', 'palestinian territory occupied', 'silwad', '09:00', '16:00', '79 Jaffa Street, Silwad', '+970 9 399 2587', 'Branch offering account opening, currency services and customer support.'),
  (193, 'Dar Al-Ilm Learning Center', 'edu', 'saudi arabia', 'ad dawādimī', '08:00', '20:00', '5 Othman bin Affan Road, Al-Sulimaniyah District, Ad Dawādimī', '+966 57 487 7672', 'Courses and tutoring with certified teachers and small class sizes.'),
  (194, 'Ismailia Passport & Immigration Office', 'government_offices', 'egypt', 'ismailia', '08:30', '15:30', '129 Tahrir Street, Ismailia', '19051', 'Government service desk for permits, records and citizen inquiries.'),
  (195, 'Al-Wafaa Medical Complex', 'clinics', 'egypt', 'cairo', '09:00', '21:00', '12 Al-Geish Street, Damietta', '+20 15 7623 0090', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (196, 'Dar Al-Oud', 'other', 'saudi arabia', 'hafar al-batin', '00:00', '00:00', '118 Al-Urubah Road, Al-Malaz District, Hafar Al-Batin', '+966 58 932 6556', 'Oud and perfumes, gift packaging available.'),
  (197, 'Cedar Heart Clinic', 'clinics', 'palestinian territory occupied', 'beit jala', '09:00', '21:00', '35 University Street, Beit Jala', '+970 56 646 7949', 'Cardiology consultations, ECG and heart health screening.'),
  (198, 'Olive Branch Family Clinic', 'clinics', 'palestinian territory occupied', 'al-eizariya', '16:00', '23:00', '95 Al-Irsal Street, Al-Eizariya', '+970 9 265 4181', 'Family medicine for all ages: consultations, check-ups and follow-up visits.'),
  (199, 'Matrouh Real Estate Registry Office', 'government_offices', 'egypt', 'matrouh', '08:30', '15:30', '106 Sudan Street, Matrouh', '19054', 'Citizen services office for applications, renewals and official documents.'),
  (200, 'Wed Alnkil Commerce Services Office', 'government_offices', 'saudi arabia', 'wed alnkil', '09:00', '15:00', '80 Al-Khalidiyah Street, Al-Aziziyah District, Wed Alnkil', '920828859', 'Citizen services office for applications, renewals and official documents.'),
  (201, 'Hejaz Heart Clinic', 'clinics', 'saudi arabia', 'umm as sāhik', '10:00', '22:00', '15 Tahlia Street, Al-Salam District, Umm As Sāhik', '+966 55 466 8614', 'Cardiology consultations, ECG and heart health screening.'),
  (202, 'Al-Wafa Family Medicine', 'clinics', 'palestinian territory occupied', 'al-dhahiriya', NULL, NULL, '12 Salah Al-Din Street, Al-Dhahiriya', '+970 56 842 5418', 'Family medicine for all ages: consultations, check-ups and follow-up visits.'),
  (203, 'Gulf Auto Parts - Al Fujairah Municipality', 'other', 'united arab emirates', 'al fujairah municipality', NULL, NULL, '2 Al Ittihad Road, Deira, Al Fujairah Municipality', '+971 58 612 1528', 'Spare parts and accessories for most car makes.'),
  (204, 'Hijaz Investment Bank - Jeddah Branch', 'banks', 'saudi arabia', 'jeddah', '08:30', '15:00', '68 Tahlia Street, Al-Malaz District, Jeddah', '+966 54 807 0015', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (205, 'Palm Garden Event Hall', 'other', 'saudi arabia', 'duba', '09:00', '21:00', '20 King Abdulaziz Street, Al-Malaz District, Duba', '+966 51 330 3497', 'Event planning and decoration for weddings and parties.'),
  (206, 'Al-Hayat Pharmacy', 'other', 'saudi arabia', 'al qatif', NULL, NULL, '19 King Abdulaziz Street, Al-Sulimaniyah District, Al Qatif', '+966 11 800 1178', 'Prescriptions, over-the-counter medicine and health products.'),
  (207, 'Marina Car Wash', 'other', 'united arab emirates', 'al fujairah municipality', '07:00', '23:00', '131 Airport Road, Deira, Al Fujairah Municipality', '+971 55 444 2338', 'Exterior and interior car washing and detailing.'),
  (208, 'Al-Basma Dental Care - Abqaiq', 'clinics', 'saudi arabia', 'abqaiq', '09:00', '21:00', '33 King Abdulaziz Street, Al-Faisaliyah District, Abqaiq', '+966 53 055 8957', 'Dental clinic for check-ups, fillings, cleaning and orthodontics by appointment.'),
  (209, 'Al-Hayat Specialist Clinic', 'clinics', 'palestinian territory occupied', 'abu dis', '09:00', '21:00', '28 Al-Balad Street, Abu Dis', '+970 2 895 8142', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (210, 'Al-Jeel Private School', 'edu', 'saudi arabia', 'khulays', '09:00', '18:00', '39 Al-Urubah Road, Al-Faisaliyah District, Khulays', '+966 54 502 3200', 'School enrollment, tours and parent consultations at the front desk.'),
  (211, 'Dar Al-Ilm Learning Center - Ghran', 'edu', 'saudi arabia', 'ghran', '08:00', '20:00', '15 Al-Khalidiyah Street, Al-Faisaliyah District, Ghran', '+966 57 652 3969', 'Courses and tutoring with certified teachers and small class sizes.'),
  (212, 'Dar Al-Oud - Sakaka', 'other', 'saudi arabia', 'sakaka', '09:00', '21:00', '74 Tahlia Street, Al-Salam District, Sakaka', '+966 55 324 1345', 'Oud and perfumes, gift packaging available.'),
  (213, 'Dar Al-Ilm Learning Center - Al Hadā', 'edu', 'saudi arabia', 'al hadā', NULL, NULL, '49 Prince Sultan Street, Al-Aziziyah District, Al Hadā', '+966 52 147 5448', 'Courses and tutoring with certified teachers and small class sizes.'),
  (214, 'Desert Falcon Safari - Şāmitah', 'other', 'saudi arabia', 'şāmitah', '09:00', '21:00', '19 Prince Mohammed bin Abdulaziz Street, Al-Malaz District, Şāmitah', '+966 54 271 1691', 'Desert safari and outdoor trips for individuals and groups.'),
  (215, 'Al-Waad Private Institute', 'edu', 'saudi arabia', 'duba', NULL, NULL, '77 Al-Khalidiyah Street, Al-Sulimaniyah District, Duba', '+966 17 503 3182', 'Courses and tutoring with certified teachers and small class sizes.'),
  (216, 'Gulf Travel & Tours', 'other', 'united arab emirates', 'al ain municipality', NULL, NULL, '76 Electra Street, Deira, Al Ain Municipality', '+971 9 525 0137', 'Flight tickets, hotel bookings and tour packages.'),
  (217, 'Al-Rayyan Car Rental', 'other', 'saudi arabia', 'rābigh', '09:00', '21:00', '104 Othman bin Affan Road, Al-Nuzha District, Rābigh', '+966 52 699 2194', 'Car rental by the day, week or month.'),
  (218, 'NileLink Customer Care - North Sinai', 'telecom', 'egypt', 'north sinai', '09:00', '21:00', '88 El-Merghany Street, North Sinai', '+20 12 1105 9944', 'Retail store and service desk for mobile, internet and device repairs.'),
  (219, 'Red Sea Finance Bank - Sambah Branch', 'banks', 'saudi arabia', 'sambah', '08:30', '15:00', '7 Prince Mohammed bin Abdulaziz Street, Al-Sulimaniyah District, Sambah', '+966 52 164 6980', 'Branch offering account opening, currency services and customer support.'),
  (220, 'Palm Math Club', 'edu', 'united arab emirates', 'kalba', '08:00', '17:00', '7 Al Rolla Street, Al Majaz, Kalba', '+971 58 661 5766', 'Math and science tutoring with small groups and exam preparation.'),
  (221, 'Dead Sea Skincare Boutique', 'other', 'palestinian territory occupied', 'al-dhahiriya', '07:00', '23:00', '106 Al-Manara Square, Al-Dhahiriya', '+970 59 287 5330', 'Skincare and gift boutique.'),
  (222, 'Golden Dates Shop - Al Majāridah', 'other', 'saudi arabia', 'al majāridah', '10:00', '22:00', '64 Tahlia Street, Al-Faisaliyah District, Al Majāridah', '+966 50 295 7566', 'Dates, coffee and traditional treats.'),
  (223, 'Al-Mahrousa Event Planning - Asyut', 'other', 'egypt', 'asyut', '10:00', '22:00', '45 El-Thawra Street, Asyut', '+20 65 1506454', 'Event planning and decoration for weddings and parties.'),
  (224, 'Mina Passports Office', 'government_offices', 'saudi arabia', 'mina', '09:00', '15:00', '96 Al-Madinah Road, Al-Sulimaniyah District, Mina', '+966 14 468 5469', 'Public service counter handling requests, certificates and renewals.'),
  (225, 'Desert Heritage Bank - Khalifah A City Branch', 'banks', 'united arab emirates', 'khalifah a city', '09:00', '16:00', '138 Hamdan Street, Al Barsha, Khalifah A City', '+971 54 770 1910', 'Branch offering account opening, currency services and customer support.'),
  (226, 'Oasis Telecom Store - Khulays', 'telecom', 'saudi arabia', 'khulays', '10:00', '22:00', '82 Al-Khalidiyah Street, Al-Malaz District, Khulays', '920019758', 'Retail store and service desk for mobile, internet and device repairs.'),
  (227, 'Nile Travel & Tourism', 'other', 'egypt', 'matrouh', '07:00', '23:00', '47 Tahrir Street, Matrouh', '+20 57 1392865', 'Flight tickets, hotel bookings and tour packages.'),
  (228, 'Al-Waad Private Institute - Al Fuwayliq', 'edu', 'saudi arabia', 'al fuwayliq', '08:00', '17:00', '65 Al-Madinah Road, Al-Faisaliyah District, Al Fuwayliq', '+966 16 577 3940', 'Courses and tutoring with certified teachers and small class sizes.'),
  (229, 'Najd Dental Center', 'clinics', 'saudi arabia', 'al jarādīyah', '09:00', '21:00', '27 Al-Olaya Street, Al-Sulimaniyah District, Al Jarādīyah', '+966 53 393 8271', 'Dental clinic for check-ups, fillings, cleaning and orthodontics by appointment.'),
  (230, 'Zaytoun National Bank - Qabatiya Branch', 'banks', 'palestinian territory occupied', 'qabatiya', '08:00', '14:00', '129 Jaffa Street, Qabatiya', '+970 8 166 5226', 'Branch offering account opening, currency services and customer support.'),
  (231, 'Al-Basma Dental Care - Ghran', 'clinics', 'saudi arabia', 'ghran', NULL, NULL, '98 King Abdullah Road, Al-Sulimaniyah District, Ghran', '+966 11 493 3266', 'Dental clinic for check-ups, fillings, cleaning and orthodontics by appointment.'),
  (232, 'Emirates Gulf Bank - Ar Ruways Branch', 'banks', 'united arab emirates', 'ar ruways', '09:00', '16:00', '115 Airport Road, Al Nahda, Ar Ruways', '+971 6 587 7237', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (233, 'Misr Al-Gadida Bank - Red Sea Branch', 'banks', 'egypt', 'red sea', '09:00', '17:00', '8 El-Horreya Avenue, Red Sea', '+20 11 8703 9509', 'Full-service branch for accounts, cards, loans and money transfers.'),
  (234, 'Jasmine Flower Shop', 'other', 'palestinian territory occupied', 'tulkarm', '09:00', '21:00', '118 Al-Manara Square, Tulkarm', '+970 56 257 2526', 'Fresh flowers and bouquets for every occasion.'),
  (235, 'Al-Ahli Technical Institute', 'edu', 'palestinian territory occupied', 'al-ram', '08:00', '17:00', '94 Al-Quds Street, Al-Ram', '+970 56 937 4380', 'Technical and vocational training with practical workshops.'),
  (236, 'Al-Dhahran Diagnostic Lab', 'clinics', 'saudi arabia', 'mulayjah', '16:00', '23:00', '47 King Fahd Road, Al-Nuzha District, Mulayjah', '+966 11 211 0018', 'Diagnostic tests, lab work and clinic consultations with quick results.'),
  (237, 'Al Ain Family Care', 'clinics', 'united arab emirates', 'umm al quwain city', '09:00', '21:00', '115 Hamdan Street, Deira, Umm Al Quwain City', '+971 52 642 6632', 'Family medicine for all ages: consultations, check-ups and follow-up visits.'),
  (238, 'Burj Investment Bank - Umm Al Quwain Branch', 'banks', 'united arab emirates', 'umm al quwain', '09:00', '17:00', '97 Al Maktoum Street, Downtown, Umm Al Quwain', '+971 56 592 3970', 'Branch offering account opening, currency services and customer support.'),
  (239, 'Misr Al-Gadida Bank - Luxor Branch', 'banks', 'egypt', 'luxor', '09:00', '16:00', '46 Corniche El-Nile, Luxor', '+20 66 7382309', 'Branch offering account opening, currency services and customer support.'),
  (240, 'Al-Rayyan Car Rental - Adh Dhibiyah', 'other', 'saudi arabia', 'adh dhibiyah', '10:00', '22:00', '18 Al-Amir Naif Street, Al-Hamra District, Adh Dhibiyah', '+966 11 467 8991', 'Car rental by the day, week or month.'),
  (241, 'Al-Khaleej National Bank - Badr Ḩunayn Branch', 'banks', 'saudi arabia', 'badr ḩunayn', '09:00', '17:00', '70 King Fahd Road, Al-Aziziyah District, Badr Ḩunayn', '+966 56 686 4344', 'Full-service branch for accounts, cards, loans and money transfers.'),
  (242, 'Delta Union Bank - Gharbia Branch', 'banks', 'egypt', 'gharbia', '08:30', '15:00', '7 Salah Salem Road, Gharbia', '19930', 'Counter and ATM services with a dedicated desk for business clients.'),
  (243, 'Pyramids Math Academy', 'edu', 'egypt', 'luxor', '08:00', '20:00', '46 Al-Geish Street, Luxor', '+20 40 9005730', 'Math and science tutoring with small groups and exam preparation.'),
  (244, 'Al-Rahma Family Clinic', 'clinics', 'egypt', 'suez', '09:00', '21:00', '69 El-Thawra Street, Suez', '+20 65 5077293', 'Family medicine for all ages: consultations, check-ups and follow-up visits.'),
  (245, 'Fujairah Municipality Service Center', 'government_offices', 'united arab emirates', 'fujairah', '08:30', '15:30', '60 Airport Road, Al Nahda, Fujairah', '+971 9 977 4794', 'Citizen services office for applications, renewals and official documents.'),
  (246, 'Calligraphy Studio', 'edu', 'united arab emirates', 'ajman city', '09:00', '18:00', '106 Hamdan Street, Downtown, Ajman City', '+971 56 678 2381', 'Arabic calligraphy classes for beginners and advanced students.'),
  (247, 'Al-Majlis Furniture', 'other', 'saudi arabia', 'hafar al-batin', '09:00', '21:00', '62 Al-Amir Naif Street, Al-Malaz District, Hafar Al-Batin', '+966 57 298 2601', 'Furniture showroom for home and office.'),
  (248, 'Nakheel Dermatology & Laser', 'clinics', 'saudi arabia', 'yanbu al bahr', '16:00', '23:00', '2 King Abdullah Road, Al-Aziziyah District, Yanbu Al Bahr', '+966 53 244 2659', 'Skin, hair and laser treatments with specialist dermatologists.'),
  (249, 'El-Tahrir Diagnostic Center - Giza', 'clinics', 'egypt', 'giza', '16:00', '23:00', '129 El-Thawra Street, Giza', '+20 11 0590 3273', 'Diagnostic tests, lab work and clinic consultations with quick results.'),
  (250, 'Al Safa Driving Institute', 'edu', 'united arab emirates', 'milehah', '09:00', '18:00', '87 Khalifa Street, Al Barsha, Milehah', '+971 54 364 1824', 'Driving lessons and test preparation with certified instructors.'),
  (251, 'Al-Salamah Pediatrics Center - Luxor', 'clinics', 'egypt', 'luxor', '08:00', '16:00', '130 Omar Ibn Al-Khattab Street, Luxor', '+20 15 2020 3704', 'Child healthcare, vaccinations and check-ups in a child-friendly setting.'),
  (252, 'Al-Khaleej National Bank - Ain Albaraha Branch', 'banks', 'saudi arabia', 'ain albaraha', '08:30', '15:00', '75 Othman bin Affan Road, Al-Faisaliyah District, Ain Albaraha', '920811826', 'Counter and ATM services with a dedicated desk for business clients.'),
  (253, 'Bright Horizon Academy', 'edu', 'egypt', 'qalyubia', '09:00', '18:00', '41 Al-Nasr Street, Qalyubia', '+20 12 2522 7699', 'Courses and tutoring with certified teachers and small class sizes.'),
  (254, 'Palm Tree Nursery - Tārūt', 'edu', 'saudi arabia', 'tārūt', '08:00', '17:00', '11 Al-Amir Naif Street, Al-Malaz District, Tārūt', '+966 52 856 6638', 'Nursery and early learning with a caring, safe environment.'),
  (255, 'Al-Khaleej Net Store - Şuwayr', 'telecom', 'saudi arabia', 'şuwayr', '10:00', '22:00', '72 King Fahd Road, Al-Aziziyah District, Şuwayr', '920794813', 'Retail store and service desk for mobile, internet and device repairs.'),
  (256, 'Pearl Jewelry', 'other', 'united arab emirates', 'umm al quwain city', '10:00', '22:00', '92 Al Khan Street, Deira, Umm Al Quwain City', '+971 7 744 4533', 'Gold and silver jewelry, repairs and custom orders.'),
  (257, 'Isis Dermatology Clinic', 'clinics', 'egypt', 'damietta', '16:00', '23:00', '104 Al-Nasr Street, Damietta', '+20 11 0082 4431', 'Skin, hair and laser treatments with specialist dermatologists.'),
  (258, 'Oasis Dates & Coffee', 'other', 'saudi arabia', 'qaisumah', '10:00', '22:00', '100 Tahlia Street, Al-Faisaliyah District, Qaisumah', '+966 16 789 6098', 'Dates, coffee and traditional treats.'),
  (259, 'Al-Nour Language Institute - North Sinai', 'edu', 'egypt', 'north sinai', '08:00', '17:00', '131 Al-Nasr Street, North Sinai', '+20 64 1937002', 'Language courses for kids and adults with placement tests and small classes.'),
  (260, 'Delta Auto Parts - Sohag', 'other', 'egypt', 'sohag', NULL, NULL, '38 Al-Nasr Street, Sohag', '+20 11 8053 7278', 'Spare parts and accessories for most car makes.'),
  (261, 'Eqra Reading Academy', 'edu', 'saudi arabia', 'al qaţīf', '14:00', '22:00', '100 Tahlia Street, Al-Malaz District, Al Qaţīf', '+966 50 054 7932', 'Reading and writing club for children and teens.'),
  (262, 'Jasmine Connect Store - Nablus', 'telecom', 'palestinian territory occupied', 'nablus', '09:00', '23:00', '10 Al-Masyoun Street, Nablus', '+970 56 339 4967', 'Customer care for bill payment, line activation and technical help.'),
  (263, 'Palestine Heritage Bank - Rafah Branch', 'banks', 'palestinian territory occupied', 'rafah', '09:00', '16:00', '43 Al-Quds Street, Rafah', '+970 56 547 1390', 'Counter and ATM services with a dedicated desk for business clients.'),
  (264, 'Najd Mobile Store - Şabyā', 'telecom', 'saudi arabia', 'şabyā', '10:00', '22:00', '111 Al-Khalidiyah Street, Al-Aziziyah District, Şabyā', '+966 53 141 8634', 'Customer care for bill payment, line activation and technical help.'),
  (265, 'Al-Bayan Arabic Institute', 'edu', 'saudi arabia', 'at tuwal', '14:00', '22:00', '11 Othman bin Affan Road, Al-Hamra District, At Tuwal', '+966 17 709 8494', 'Arabic language and grammar courses for kids and adults.'),
  (266, 'Koshary El-Tahrir Restaurant - Sharqia', 'other', 'egypt', 'sharqia', '00:00', '00:00', '68 El-Galaa Street, Sharqia', '+20 11 9996 0626', 'Dine-in and takeaway meals prepared fresh daily.'),
  (267, 'Imhotep Science Academy', 'edu', 'egypt', 'south sinai', '08:00', '17:00', '3 26th of July Street, South Sinai', '+20 11 0121 2434', 'Science club and tutoring with hands-on experiments.'),
  (268, 'Al-Bayan Arabic Institute - Al Qaţīf', 'edu', 'saudi arabia', 'al qaţīf', '08:00', '17:00', '108 King Abdulaziz Street, Al-Rawdah District, Al Qaţīf', '+966 54 038 1491', 'Arabic language and grammar courses for kids and adults.'),
  (269, 'Future Leaders School', 'edu', 'egypt', 'aswan', '08:00', '17:00', '13 Corniche El-Nile, Aswan', '+20 15 8792 1073', 'School enrollment, tours and parent consultations at the front desk.'),
  (270, 'Najd Commercial Bank - Şafwá Branch', 'banks', 'saudi arabia', 'şafwá', '08:30', '15:00', '41 Prince Sultan Street, Al-Nuzha District, Şafwá', '+966 51 630 8493', 'Counter and ATM services with a dedicated desk for business clients.'),
  (271, 'Al-Azhar Quran Learning Center', 'edu', 'egypt', 'matrouh', NULL, NULL, '84 Al-Nasr Street, Matrouh', '+20 65 4849856', 'Quran memorization and recitation classes for all ages.'),
  (272, 'Al-Bayan Arabic Institute - Al Khafjī', 'edu', 'saudi arabia', 'al khafjī', '08:00', '17:00', '20 Al-Amir Naif Street, Al-Hamra District, Al Khafjī', '+966 16 374 6278', 'Arabic language and grammar courses for kids and adults.'),
  (273, 'Al-Tawasul Internet Cafe', 'other', 'saudi arabia', 'safwa', '09:00', '21:00', '68 Tahlia Street, Al-Aziziyah District, Safwa', '+966 58 788 2977', 'Coffee, tea and light bites in a relaxed setting.'),
  (274, 'Pearl Commercial Bank - Khor Fakkan Branch', 'banks', 'united arab emirates', 'khor fakkan', '08:30', '15:00', '3 Hamdan Street, Deira, Khor Fakkan', '+971 54 548 2751', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (275, 'Al Jarādīyah Passports Office', 'government_offices', 'saudi arabia', 'al jarādīyah', '08:30', '15:30', '10 Al-Khalidiyah Street, Al-Rawdah District, Al Jarādīyah', '920934944', 'Official services center. Bring a valid ID and the required documents.'),
  (276, 'Desert Rose Women''s Center', 'clinics', 'saudi arabia', 'madinat yanbu as sinaiyah', '16:00', '23:00', '17 Tahlia Street, Al-Aziziyah District, Madinat Yanbu As Sinaiyah', '+966 55 765 4654', 'Women''s health, antenatal care and gynecology consultations with female doctors.'),
  (277, 'Al-Hayat Specialized Clinic - Gharbia', 'clinics', 'egypt', 'gharbia', '09:00', '21:00', '70 Sudan Street, Gharbia', '+20 15 0906 7349', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (278, 'Tuwaiq Savings Bank - Sulţānah Branch', 'banks', 'saudi arabia', 'sulţānah', '08:00', '14:00', '80 Prince Sultan Street, Al-Sulimaniyah District, Sulţānah', '+966 55 300 5687', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (279, 'Al-Wasl Courier Services', 'other', 'saudi arabia', 'badr ḩunayn', NULL, NULL, '89 Al-Khalidiyah Street, Al-Salam District, Badr Ḩunayn', '+966 51 512 6708', 'Parcel pickup, delivery and courier services.'),
  (280, 'Al Dhafra Medical Center - Ajman', 'clinics', 'united arab emirates', 'ajman', '16:00', '23:00', '97 Al Wasl Road, Al Markaziyah, Ajman', '+971 56 091 6480', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (281, 'Al-Salam Islamic Bank - Al-Eizariya Branch', 'banks', 'palestinian territory occupied', 'al-eizariya', '08:30', '15:00', '124 Al-Masyoun Street, Al-Eizariya', '+970 9 833 4962', 'Full-service branch for accounts, cards, loans and money transfers.'),
  (282, 'Al-Salam Laundry', 'other', 'palestinian territory occupied', 'tulkarm', '07:00', '23:00', '58 Jaffa Street, Tulkarm', '+970 4 914 4989', 'Laundry and dry cleaning with pickup and delivery.'),
  (283, 'Nile International School', 'edu', 'egypt', 'minya', '09:00', '18:00', '62 Al-Nasr Street, Minya', '+20 11 8707 3038', 'School enrollment, tours and parent consultations at the front desk.'),
  (284, 'Al-Quds Commercial Bank - Tubas Branch', 'banks', 'palestinian territory occupied', 'tubas', '09:00', '16:00', '3 University Street, Tubas', '+970 9 079 4957', 'Branch offering account opening, currency services and customer support.'),
  (285, 'Alpha Tutoring Center', 'edu', 'egypt', 'north sinai', NULL, NULL, '78 El-Horreya Avenue, North Sinai', '+20 65 8440792', 'Private tutoring and curriculum support with small groups.'),
  (286, 'Dr. Hany Fawzy Clinic', 'clinics', 'egypt', 'beni suef', '10:00', '22:00', '108 Port Said Street, Beni Suef', '+20 64 7450659', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (287, 'Tuwaiq Specialized Clinics - Al Arţāwīyah', 'clinics', 'saudi arabia', 'al arţāwīyah', '10:00', '22:00', '38 King Abdullah Road, Al-Aziziyah District, Al Arţāwīyah', '+966 54 922 1656', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (288, 'Al-Rayyan Car Rental - Buraydah', 'other', 'saudi arabia', 'buraydah', NULL, NULL, '40 Othman bin Affan Road, Al-Nuzha District, Buraydah', '+966 54 232 4779', 'Car rental by the day, week or month.'),
  (289, 'Al-Amal Kidney Care - Al Majāridah', 'clinics', 'saudi arabia', 'al majāridah', '09:00', '21:00', '82 Prince Mohammed bin Abdulaziz Street, Al-Nuzha District, Al Majāridah', '+966 13 383 8237', 'Kidney care and dialysis follow-up with specialist nephrologists.'),
  (290, 'Desert Rose Women''s Center - Al-ula', 'clinics', 'saudi arabia', 'al-ula', '08:00', '16:00', '95 King Abdullah Road, Al-Salam District, Al-ula', '+966 52 666 2167', 'Women''s health, antenatal care and gynecology consultations with female doctors.'),
  (291, 'An Nimāş Labor Office', 'government_offices', 'saudi arabia', 'an nimāş', '08:00', '14:00', '38 Tahlia Street, Al-Salam District, An Nimāş', '+966 53 044 5302', 'Official services center. Bring a valid ID and the required documents.'),
  (292, 'Al-Najah Car Wash', 'other', 'saudi arabia', 'arar', '10:00', '22:00', '45 Al-Madinah Road, Al-Malaz District, Arar', '+966 53 766 0099', 'Exterior and interior car washing and detailing.'),
  (293, 'Desert Falcon Safari - At Tūbī', 'other', 'saudi arabia', 'at tūbī', '09:00', '21:00', '38 Prince Mohammed bin Abdulaziz Street, Al-Nuzha District, At Tūbī', '+966 59 147 4527', 'Desert safari and outdoor trips for individuals and groups.'),
  (294, 'Pearl Dental Clinic', 'clinics', 'united arab emirates', 'as satwah', '08:00', '16:00', '36 Airport Road, Deira, As Satwah', '+971 55 110 3466', 'Dental clinic for check-ups, fillings, cleaning and orthodontics by appointment.'),
  (295, 'Nefertari Girls'' School - Giza', 'edu', 'egypt', 'giza', '08:00', '17:00', '96 26th of July Street, Giza', '+20 62 8116364', 'School enrollment, tours and parent consultations at the front desk.'),
  (296, 'El-Tahrir Diagnostic Center - Kafr El Sheikh', 'clinics', 'egypt', 'kafr el sheikh', '10:00', '22:00', '79 Omar Ibn Al-Khattab Street, Kafr El Sheikh', '+20 10 5722 2757', 'Diagnostic tests, lab work and clinic consultations with quick results.'),
  (297, 'Alpha Tutoring Center - Sohag', 'edu', 'egypt', 'sohag', '08:00', '20:00', '9 Al-Geish Street, Sohag', '+20 15 2376 9350', 'Private tutoring and curriculum support with small groups.'),
  (298, 'Al-Noor Language Institute - Al Mindak', 'edu', 'saudi arabia', 'al mindak', '09:00', '18:00', '75 Prince Sultan Street, Al-Aziziyah District, Al Mindak', '+966 59 327 5440', 'Language courses for kids and adults with placement tests and small classes.'),
  (299, 'Palestine Heritage Bank - Abu Dis Branch', 'banks', 'palestinian territory occupied', 'abu dis', '08:00', '14:00', '115 Al-Rimal Street, Abu Dis', '+970 2 058 3882', 'Branch offering account opening, currency services and customer support.'),
  (300, 'Desert Gym & Fitness', 'other', 'united arab emirates', 'muzayri', '10:00', '22:00', '123 Al Khan Street, Deira, Muzayri', '+971 9 741 0465', 'Gym with free weights, cardio machines and group classes.'),
  (301, 'Hail Honey House', 'other', 'saudi arabia', 'al majāridah', '09:00', '21:00', '121 King Abdulaziz Street, Al-Nuzha District, Al Majāridah', '+966 52 078 2765', 'Local honey and natural products.'),
  (302, 'Dr. Noura Al-Qahtani Women''s Clinic - Khamis Mushait', 'clinics', 'saudi arabia', 'khamis mushait', '16:00', '23:00', '134 King Abdullah Road, Al-Sulimaniyah District, Khamis Mushait', '+966 51 396 9253', 'Women''s health, antenatal care and gynecology consultations with female doctors.'),
  (303, 'Al-Jeel Private School - Duba', 'edu', 'saudi arabia', 'duba', '08:00', '17:00', '123 King Abdullah Road, Al-Faisaliyah District, Duba', '+966 57 503 3271', 'School enrollment, tours and parent consultations at the front desk.'),
  (304, 'Monufia Real Estate Registry Office', 'government_offices', 'egypt', 'monufia', '08:00', '14:00', '107 Al-Geish Street, Monufia', '+20 11 8529 5167', 'Official services center. Bring a valid ID and the required documents.'),
  (305, 'Falcon Connect Customer Care - An Nimāş', 'telecom', 'saudi arabia', 'an nimāş', '09:00', '21:00', '25 Tahlia Street, Al-Faisaliyah District, An Nimāş', '+966 17 212 7167', 'Customer care for bill payment, line activation and technical help.'),
  (306, 'Al-Fanar Cafe', 'other', 'egypt', 'qena', '10:00', '22:00', '129 Port Said Street, Qena', '+20 11 7940 3123', 'Coffee, tea and light bites in a relaxed setting.'),
  (307, 'Pearl Telecom Customer Care - Ajman City', 'telecom', 'united arab emirates', 'ajman city', '09:00', '23:00', '102 Al Wasl Road, Al Qusais, Ajman City', '+971 7 277 4501', 'Handles new lines, plan upgrades, recharge and router support.'),
  (308, 'Al-Baraka Bakery', 'other', 'palestinian territory occupied', 'al-bireh', '07:00', '23:00', '122 Al-Irsal Street, Al-Bireh', '+970 59 682 9323', 'Fresh bread and pastries baked every day.'),
  (309, 'Al-Ramal Medical Center', 'clinics', 'palestinian territory occupied', 'rafah', '09:00', '21:00', '11 Al-Nasr Street, Rafah', '+970 59 629 7919', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (310, 'Oasis Telecom Customer Care - Jubail', 'telecom', 'saudi arabia', 'jubail', '09:00', '21:00', '133 King Abdulaziz Street, Al-Aziziyah District, Jubail', '920588805', 'Store for SIM cards, mobile plans, home internet and device support.'),
  (311, 'Al-Wafaa Real Estate Office - Suez', 'other', 'egypt', 'suez', '07:00', '23:00', '59 El-Merghany Street, Suez', '+20 50 9303337', 'Property listings, rentals and sales consultations.'),
  (312, 'Sharqia Tax Authority Office', 'government_offices', 'egypt', 'sharqia', '08:00', '14:00', '130 El-Thawra Street, Sharqia', '19849', 'Government service desk for permits, records and citizen inquiries.'),
  (313, 'Al-Iqra Reading Club - Aqqaba', 'edu', 'palestinian territory occupied', 'aqqaba', '08:00', '17:00', '139 Al-Nasr Street, Aqqaba', '+970 59 986 7876', 'Reading and writing club for children and teens.'),
  (314, 'Najd Commercial Bank - Sambah Branch', 'banks', 'saudi arabia', 'sambah', '08:30', '15:00', '103 Prince Sultan Street, Al-Nuzha District, Sambah', '+966 50 867 7570', 'Counter and ATM services with a dedicated desk for business clients.'),
  (315, 'Cleopatra Language School - Red Sea', 'edu', 'egypt', 'red sea', '09:00', '18:00', '16 El-Merghany Street, Red Sea', '+20 10 0922 3025', 'Language courses for kids and adults with placement tests and small classes.'),
  (316, 'Red Sea Medical Group', 'clinics', 'saudi arabia', 'mislīyah', '09:00', '21:00', '113 Al-Olaya Street, Al-Malaz District, Mislīyah', '+966 17 478 8497', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (317, 'Al Noor Language Institute', 'edu', 'united arab emirates', 'umm al quwain city', '08:00', '20:00', '61 Al Khan Street, Al Qusais, Umm Al Quwain City', '+971 6 749 7665', 'Language courses for kids and adults with placement tests and small classes.'),
  (318, 'Al-Azhar Quran Learning Center - Cairo', 'edu', 'egypt', 'cairo', '08:00', '17:00', '62 Salah Salem Road, Cairo', '+20 12 5375 2976', 'Quran memorization and recitation classes for all ages.'),
  (319, 'Al-Iqra Reading Club - Abasan Al-Kabira', 'edu', 'palestinian territory occupied', 'abasan al-kabira', '08:00', '20:00', '21 Jaffa Street, Abasan Al-Kabira', '+970 59 055 1975', 'Reading and writing club for children and teens.'),
  (320, 'Al-Wafa Family Medicine - Bani Suheila', 'clinics', 'palestinian territory occupied', 'bani suheila', '10:00', '22:00', '116 Al-Masyoun Street, Bani Suheila', '+970 56 284 1889', 'Family medicine for all ages: consultations, check-ups and follow-up visits.'),
  (321, 'Desert Heritage Bank - Sharjah Branch', 'banks', 'united arab emirates', 'sharjah', '09:00', '17:00', '69 Al Khan Street, Al Nahda, Sharjah', '+971 52 385 3811', 'Branch offering account opening, currency services and customer support.'),
  (322, 'Delta Telecom Store - New Valley', 'telecom', 'egypt', 'new valley', '10:00', '22:00', '1 Al-Nasr Street, New Valley', '19122', 'Retail store and service desk for mobile, internet and device repairs.'),
  (323, 'Al-Insan Skills Center', 'edu', 'saudi arabia', 'jeddah', '08:00', '17:00', '52 Al-Olaya Street, Al-Hamra District, Jeddah', '+966 55 827 1635', 'Skills training and short courses for students and job seekers.'),
  (324, 'Falcon Gulf Bank - Rābigh Branch', 'banks', 'saudi arabia', 'rābigh', '09:00', '16:00', '138 Prince Sultan Street, Al-Faisaliyah District, Rābigh', '+966 58 836 9357', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (325, 'Al-Basma Dental Care - Al Bukayrīyah', 'clinics', 'saudi arabia', 'al bukayrīyah', '09:00', '21:00', '27 Al-Urubah Road, Al-Sulimaniyah District, Al Bukayrīyah', '+966 54 237 4346', 'Dental clinic for check-ups, fillings, cleaning and orthodontics by appointment.'),
  (326, 'Jizan Digital Services Support Center', 'government_offices', 'saudi arabia', 'jizan', '07:30', '13:30', '11 Al-Urubah Road, Al-Sulimaniyah District, Jizan', '+966 16 210 9485', 'Government service desk for permits, records and citizen inquiries.'),
  (327, 'Al-Khaleej Net Store - Buraydah', 'telecom', 'saudi arabia', 'buraydah', '09:00', '23:00', '98 Othman bin Affan Road, Al-Rawdah District, Buraydah', '+966 16 716 9113', 'Retail store and service desk for mobile, internet and device repairs.'),
  (328, 'Dune Bashing Adventures - Abu Dhabi Island And Internal Islands City', 'other', 'united arab emirates', 'abu dhabi island and internal islands city', '00:00', '00:00', '35 Sheikh Zayed Road, Deira, Abu Dhabi Island And Internal Islands City', '+971 6 539 7971', 'Outdoor adventure trips for individuals and groups.'),
  (329, 'Lotus Connect Customer Care - Port Said', 'telecom', 'egypt', 'port said', NULL, NULL, '115 Omar Ibn Al-Khattab Street, Port Said', '19927', 'Customer care for bill payment, line activation and technical help.'),
  (330, 'Al-Ahli Technical Institute - Tubas', 'edu', 'palestinian territory occupied', 'tubas', '08:00', '17:00', '87 Al-Nasr Street, Tubas', '+970 4 330 1846', 'Technical and vocational training with practical workshops.'),
  (331, 'Palm Garden Event Hall - Al Markaz', 'other', 'saudi arabia', 'al markaz', NULL, NULL, '136 Tahlia Street, Al-Malaz District, Al Markaz', '+966 16 128 0586', 'Event planning and decoration for weddings and parties.'),
  (332, 'Falcon Connect Store - Tumayr', 'telecom', 'saudi arabia', 'tumayr', '09:00', '21:00', '74 King Abdulaziz Street, Al-Hamra District, Tumayr', '+966 51 371 9251', 'Retail store and service desk for mobile, internet and device repairs.'),
  (333, 'Tuwaiq Telecom Customer Care - Afif', 'telecom', 'saudi arabia', 'afif', '09:00', '21:00', '59 King Abdulaziz Street, Al-Aziziyah District, Afif', '920290543', 'Retail store and service desk for mobile, internet and device repairs.'),
  (334, 'Olive Net Customer Care - Khan Yunis', 'telecom', 'palestinian territory occupied', 'khan yunis', '10:00', '22:00', '100 Jaffa Street, Khan Yunis', '+970 56 191 2248', 'Retail store and service desk for mobile, internet and device repairs.'),
  (335, 'Al-Fursan Quran Memorization Center', 'edu', 'saudi arabia', 'al munayzilah', '08:00', '17:00', '36 Prince Mohammed bin Abdulaziz Street, Al-Malaz District, Al Munayzilah', '+966 13 434 9235', 'Quran memorization and recitation classes for all ages.'),
  (336, 'Al-Ahram Savings Bank - Giza Branch', 'banks', 'egypt', 'giza', '08:30', '15:00', '7 Al-Nasr Street, Giza', '+20 62 1869881', 'Branch offering account opening, currency services and customer support.'),
  (337, 'Desert Falcon Safari - Umm Lajj', 'other', 'saudi arabia', 'umm lajj', '10:00', '22:00', '121 Al-Madinah Road, Al-Nuzha District, Umm Lajj', '+966 52 753 4106', 'Desert safari and outdoor trips for individuals and groups.'),
  (338, 'Arraba Social Affairs Office', 'government_offices', 'palestinian territory occupied', 'arraba', '08:30', '15:30', '75 Al-Masyoun Street, Arraba', '+970 9 478 5740', 'Government service desk for permits, records and citizen inquiries.'),
  (339, 'Al Majāridah Municipality Service Center', 'government_offices', 'saudi arabia', 'al majāridah', '09:00', '15:00', '56 Tahlia Street, Al-Nuzha District, Al Majāridah', '+966 58 247 8693', 'Public service counter handling requests, certificates and renewals.'),
  (340, 'Dhaid Tax Services Office', 'government_offices', 'united arab emirates', 'dhaid', '07:30', '13:30', '52 Khalifa Street, Downtown, Dhaid', '800 9508', 'Government service desk for permits, records and citizen inquiries.'),
  (341, 'Al-Hamra Jewelry - Al Khafjī', 'other', 'saudi arabia', 'al khafjī', '10:00', '22:00', '115 King Fahd Road, Al-Faisaliyah District, Al Khafjī', '+966 53 753 4287', 'Gold and silver jewelry, repairs and custom orders.'),
  (342, 'Gulf Travel & Tours - Ajman City', 'other', 'united arab emirates', 'ajman city', NULL, NULL, '121 Al Maktoum Street, Al Qusais, Ajman City', '+971 2 925 2527', 'Flight tickets, hotel bookings and tour packages.'),
  (343, 'Al Hamriyah Traffic & Licenses Department', 'government_offices', 'united arab emirates', 'al hamriyah', '08:30', '15:30', '39 Sheikh Khalifa Street, Deira, Al Hamriyah', '+971 55 969 7114', 'Citizen services office for applications, renewals and official documents.'),
  (344, 'Cedar Heart Clinic - Dura', 'clinics', 'palestinian territory occupied', 'dura', '16:00', '23:00', '134 Al-Manara Square, Dura', '+970 59 579 8002', 'Cardiology consultations, ECG and heart health screening.'),
  (345, 'Jerusalem Municipality Service Center', 'government_offices', 'palestinian territory occupied', 'jerusalem', '08:30', '15:30', '135 Al-Manara Square, Jerusalem', '+970 2 457 3923', 'Citizen services office for applications, renewals and official documents.'),
  (346, 'Al-Fanar Cafe - Aswan', 'other', 'egypt', 'aswan', '00:00', '00:00', '42 Tahrir Street, Aswan', '+20 66 8676963', 'Coffee, tea and light bites in a relaxed setting.'),
  (347, 'Zamzam Medical Center', 'clinics', 'saudi arabia', 'an nimāş', '10:00', '22:00', '43 Al-Urubah Road, Al-Hamra District, An Nimāş', '+966 55 876 0805', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (348, 'Al Wasl Skin & Laser', 'clinics', 'united arab emirates', 'ajman', NULL, NULL, '78 Al Wasl Road, Al Nahda, Ajman', '+971 6 715 8720', 'Skin, hair and laser treatments with specialist dermatologists.'),
  (349, 'TechNile Computer Services', 'other', 'egypt', 'kafr el sheikh', '10:00', '22:00', '46 26th of July Street, Kafr El Sheikh', '+20 11 7777 7855', 'Computer repair, networking and IT support.'),
  (350, 'Al Barsha Pediatric Clinic', 'clinics', 'united arab emirates', 'dibba al fujairah municipality', '10:00', '22:00', '132 Electra Street, Al Qusais, Dibba Al Fujairah Municipality', '+971 58 076 6680', 'Child healthcare, vaccinations and check-ups in a child-friendly setting.'),
  (351, 'Al-Wafaa Medical Complex - Asyut', 'clinics', 'egypt', 'asyut', '16:00', '23:00', '53 Omar Ibn Al-Khattab Street, Asyut', '+20 10 6987 3352', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (352, 'Dr. Hany Fawzy Clinic - Cairo', 'clinics', 'egypt', 'cairo', '00:00', '00:00', '112 Corniche El-Nile, Cairo', '+20 12 3931 0988', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (353, 'Palm Tree Nursery - Rahman', 'edu', 'saudi arabia', 'rahman', '14:00', '22:00', '68 Al-Amir Naif Street, Al-Aziziyah District, Rahman', '+966 14 619 8479', 'Nursery and early learning with a caring, safe environment.'),
  (354, 'Al-Amal Special Education Center - Aţ Ţaraf', 'edu', 'saudi arabia', 'aţ ţaraf', '08:00', '17:00', '13 Prince Mohammed bin Abdulaziz Street, Al-Aziziyah District, Aţ Ţaraf', '+966 59 146 4780', 'Courses and tutoring with certified teachers and small class sizes.'),
  (355, 'Desert Rose Women''s Clinic', 'clinics', 'united arab emirates', 'dibba al hesn', '08:00', '16:00', '14 Corniche Road, Al Nahda, Dibba Al Hesn', '+971 52 638 2207', 'Women''s health, antenatal care and gynecology consultations with female doctors.'),
  (356, 'Burj Investment Bank - Bani Yas City Branch', 'banks', 'united arab emirates', 'bani yas city', '09:00', '17:00', '27 Khalifa Street, Deira, Bani Yas City', '+971 6 786 8803', 'Counter and ATM services with a dedicated desk for business clients.'),
  (357, 'Al Wasl English Centre', 'edu', 'united arab emirates', 'bani yas city', '08:00', '17:00', '80 Al Wasl Road, Al Mamzar, Bani Yas City', '+971 52 450 1344', 'English courses for kids and adults with placement tests and small classes.'),
  (358, 'Falcon Family Clinic', 'clinics', 'united arab emirates', 'dhaid', '09:00', '21:00', '27 Electra Street, Al Markaziyah, Dhaid', '+971 3 402 6386', 'Family medicine for all ages: consultations, check-ups and follow-up visits.'),
  (359, 'Desert Gym & Fitness - Dibba Al Fujairah Municipality', 'other', 'united arab emirates', 'dibba al fujairah municipality', '09:00', '21:00', '31 Khalifa Street, Al Markaziyah, Dibba Al Fujairah Municipality', '+971 56 544 9954', 'Gym with free weights, cardio machines and group classes.'),
  (360, 'Al-Wafa Calligraphy School - Al Jarādīyah', 'edu', 'saudi arabia', 'al jarādīyah', '09:00', '18:00', '129 King Fahd Road, Al-Aziziyah District, Al Jarādīyah', '+966 57 299 6253', 'School enrollment, tours and parent consultations at the front desk.'),
  (361, 'Nakheel Dermatology & Laser - Şabyā', 'clinics', 'saudi arabia', 'şabyā', '16:00', '23:00', '75 King Fahd Road, Al-Aziziyah District, Şabyā', '+966 58 225 8734', 'Skin, hair and laser treatments with specialist dermatologists.'),
  (362, 'Falcon Gulf Bank - Al Majāridah Branch', 'banks', 'saudi arabia', 'al majāridah', '09:00', '17:00', '126 Prince Mohammed bin Abdulaziz Street, Al-Malaz District, Al Majāridah', '920894482', 'Counter and ATM services with a dedicated desk for business clients.'),
  (363, 'Al-Hayat Specialized Clinic - Port Said', 'clinics', 'egypt', 'port said', '09:00', '21:00', '82 Salah Salem Road, Port Said', '+20 12 0838 2410', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (364, 'Olive Savings Bank - Bethlehem Branch', 'banks', 'palestinian territory occupied', 'bethlehem', '08:00', '14:00', '89 Al-Rimal Street, Bethlehem', '+970 56 778 5661', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (365, 'Yatta Interior Services Office', 'government_offices', 'palestinian territory occupied', 'yatta', '07:30', '13:30', '11 Jaffa Street, Yatta', '+970 59 579 8514', 'Official services center. Bring a valid ID and the required documents.'),
  (366, 'Oasis Family Clinics - Sājir', 'clinics', 'saudi arabia', 'sājir', '10:00', '22:00', '135 King Fahd Road, Al-Aziziyah District, Sājir', '+966 11 229 8950', 'Family medicine for all ages: consultations, check-ups and follow-up visits.'),
  (367, 'Olive Savings Bank - Qalqilya Branch', 'banks', 'palestinian territory occupied', 'qalqilya', '08:00', '14:00', '29 Al-Masyoun Street, Qalqilya', '+970 2 913 2079', 'Counter and ATM services with a dedicated desk for business clients.'),
  (368, 'Najd International School - Abqaiq', 'edu', 'saudi arabia', 'abqaiq', '09:00', '18:00', '120 Othman bin Affan Road, Al-Sulimaniyah District, Abqaiq', '+966 56 794 9347', 'School enrollment, tours and parent consultations at the front desk.'),
  (369, 'Jordan Valley Bank - Jerusalem Branch', 'banks', 'palestinian territory occupied', 'jerusalem', '08:00', '14:00', '1 Al-Irsal Street, Jerusalem', '+970 9 420 2879', 'Counter and ATM services with a dedicated desk for business clients.'),
  (370, 'Delta Computer Institute - Suez', 'edu', 'egypt', 'suez', '08:00', '20:00', '135 Sudan Street, Suez', '+20 12 4634 4027', 'Computer skills and IT courses with hands-on lab sessions.'),
  (371, 'Creek Music Academy', 'edu', 'united arab emirates', 'milehah', '08:00', '17:00', '49 Al Rolla Street, Al Barsha, Milehah', '+971 4 551 6883', 'Music lessons for kids and adults, instruments provided.'),
  (372, 'Al-Hikma Evening Courses', 'edu', 'egypt', 'monufia', '08:00', '20:00', '9 Omar Ibn Al-Khattab Street, Monufia', '+20 3 2044252', 'Courses and tutoring with certified teachers and small class sizes.'),
  (373, 'Al-Waha Islamic Bank - Mislīyah Branch', 'banks', 'saudi arabia', 'mislīyah', '08:30', '15:00', '81 Al-Urubah Road, Al-Hamra District, Mislīyah', '920092109', 'Branch offering account opening, currency services and customer support.'),
  (374, 'Al-Noor Language Institute - Al Qatif', 'edu', 'saudi arabia', 'al qatif', '08:00', '17:00', '45 Prince Mohammed bin Abdulaziz Street, Al-Rawdah District, Al Qatif', '+966 12 561 6731', 'Language courses for kids and adults with placement tests and small classes.'),
  (375, 'Delta Union Bank - Alexandria Branch', 'banks', 'egypt', 'alexandria', NULL, NULL, '40 Al-Geish Street, Alexandria', '19898', 'Retail banking branch: deposits, withdrawals, cards and personal financing.'),
  (376, 'Al-Bukhari Bakery - Hayil', 'other', 'saudi arabia', 'hayil', '07:00', '23:00', '36 Al-Amir Naif Street, Al-Rawdah District, Hayil', '+966 55 801 6821', 'Fresh bread and pastries baked every day.'),
  (377, 'NileLink Customer Care - Faiyum', 'telecom', 'egypt', 'faiyum', '10:00', '22:00', '125 Port Said Street, Faiyum', '+20 50 2579391', 'Customer care for bill payment, line activation and technical help.'),
  (378, 'Al Mithnab Civil Affairs Office', 'government_offices', 'saudi arabia', 'al mithnab', '09:00', '15:00', '52 Prince Sultan Street, Al-Malaz District, Al Mithnab', '+966 17 025 7804', 'Government service desk for permits, records and citizen inquiries.'),
  (379, 'Zamalek Style Salon', 'other', 'egypt', 'beheira', NULL, NULL, '12 Port Said Street, Beheira', '+20 11 3345 4042', 'Hair, beauty and styling services by appointment.'),
  (380, 'Al-Wafa Calligraphy School - Afif', 'edu', 'saudi arabia', 'afif', '08:00', '17:00', '63 Al-Urubah Road, Al-Faisaliyah District, Afif', '+966 14 807 3790', 'School enrollment, tours and parent consultations at the front desk.'),
  (381, 'Al-Wasl Courier Services - Al Hufūf', 'other', 'saudi arabia', 'al hufūf', '10:00', '22:00', '104 Othman bin Affan Road, Al-Aziziyah District, Al Hufūf', '+966 58 248 9527', 'Parcel pickup, delivery and courier services.'),
  (382, 'Al-Baraka Supermarket - An Nimāş', 'other', 'saudi arabia', 'an nimāş', '10:00', '22:00', '4 Al-Khalidiyah Street, Al-Rawdah District, An Nimāş', '+966 59 551 9191', 'Groceries and household items.'),
  (383, 'Hejaz English Institute', 'edu', 'saudi arabia', 'qurayyat', '14:00', '22:00', '42 Al-Amir Naif Street, Al-Salam District, Qurayyat', '+966 56 755 5194', 'English courses for kids and adults with placement tests and small classes.'),
  (384, 'Suez Canal Development Bank - Monufia Branch', 'banks', 'egypt', 'monufia', '09:00', '17:00', '61 Al-Gomhoria Street, Monufia', '+20 10 7448 1070', 'Counter and ATM services with a dedicated desk for business clients.'),
  (385, 'Bright Horizon Academy - Qena', 'edu', 'egypt', 'qena', '08:00', '20:00', '128 Salah Salem Road, Qena', '+20 15 5260 7352', 'Courses and tutoring with certified teachers and small class sizes.'),
  (386, 'Jenin Social Affairs Office', 'government_offices', 'palestinian territory occupied', 'jenin', '08:00', '14:00', '57 University Street, Jenin', '+970 4 502 6487', 'Citizen services office for applications, renewals and official documents.'),
  (387, 'Al-Hana Bakery', 'other', 'egypt', 'ismailia', '00:00', '00:00', '52 El-Galaa Street, Ismailia', '+20 96 3616503', 'Fresh bread and pastries baked every day.'),
  (388, 'Al-Madar Academy', 'edu', 'saudi arabia', 'medina', '08:00', '17:00', '137 Al-Madinah Road, Al-Malaz District, Medina', '+966 58 739 5276', 'Courses and tutoring with certified teachers and small class sizes.'),
  (389, 'Gulf Physio & Rehab', 'clinics', 'united arab emirates', 'al hamriyah', '10:00', '22:00', '1 Sheikh Khalifa Street, Al Markaziyah, Al Hamriyah', '+971 58 862 2251', 'Physiotherapy and rehabilitation sessions with personalized exercise plans.'),
  (390, 'Zamalek Style Salon - Damietta', 'other', 'egypt', 'damietta', '00:00', '00:00', '105 Al-Gomhoria Street, Damietta', '+20 15 1510 5960', 'Hair, beauty and styling services by appointment.'),
  (391, 'Pyramids Math Academy - New Valley', 'edu', 'egypt', 'new valley', '09:00', '18:00', '121 Omar Ibn Al-Khattab Street, New Valley', '+20 10 5091 1626', 'Math and science tutoring with small groups and exam preparation.'),
  (392, 'Al-Wafaa Medical Complex - Suez', 'clinics', 'egypt', 'suez', '10:00', '22:00', '89 Tahrir Street, Suez', '+20 15 2424 5910', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (393, 'Jasmine Kindergarten', 'edu', 'palestinian territory occupied', 'bani suheila', '09:00', '18:00', '46 Al-Rimal Street, Bani Suheila', '+970 59 763 7684', 'Kindergarten and early learning with play-based activities.'),
  (394, 'Nile Commercial Bank - Beni Suef Branch', 'banks', 'egypt', 'beni suef', '09:00', '17:00', '79 El-Galaa Street, Beni Suef', '19152', 'Counter and ATM services with a dedicated desk for business clients.'),
  (395, 'Dr. Layla Women''s Health', 'clinics', 'united arab emirates', 'al fujairah municipality', '08:00', '16:00', '69 Khalifa Street, Downtown, Al Fujairah Municipality', '+971 54 895 7740', 'Women''s health, antenatal care and gynecology consultations with female doctors.'),
  (396, 'Al Dhafra Auto Care', 'other', 'united arab emirates', 'ras al khaimah', '18:00', '02:00', '13 Al Khan Street, Al Barsha, Ras Al Khaimah', '+971 54 330 7026', 'Car maintenance, oil changes and diagnostics while you wait.'),
  (397, 'El-Nasr Language Center', 'edu', 'egypt', 'kafr el sheikh', '09:00', '18:00', '31 Al-Geish Street, Kafr El Sheikh', '+20 11 8312 1815', 'Language courses for kids and adults with placement tests and small classes.'),
  (398, 'Habla Notary Office', 'government_offices', 'palestinian territory occupied', 'habla', '09:00', '15:00', '28 Al-Quds Street, Habla', '+970 4 175 6087', 'Government service desk for permits, records and citizen inquiries.'),
  (399, 'Palm Valley Clinic', 'clinics', 'saudi arabia', 'ţubarjal', '09:00', '21:00', '59 King Abdulaziz Street, Al-Malaz District, Ţubarjal', '+966 55 124 2355', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (400, 'Bright Star Nursery', 'edu', 'palestinian territory occupied', 'beit sahour', '08:00', '17:00', '58 Al-Quds Street, Beit Sahour', '+970 59 358 5939', 'Nursery and early learning with a caring, safe environment.'),
  (401, 'Al-Shorouk Laundry', 'other', 'saudi arabia', 'al jafr', '10:00', '22:00', '58 Al-Urubah Road, Al-Rawdah District, Al Jafr', '+966 50 311 9214', 'Laundry and dry cleaning with pickup and delivery.'),
  (402, 'Al-Hikma Evening School', 'edu', 'saudi arabia', 'al muwayh', '08:00', '20:00', '113 Tahlia Street, Al-Salam District, Al Muwayh', '+966 12 894 2249', 'School enrollment, tours and parent consultations at the front desk.'),
  (403, 'Al-Waad Private Institute - Yanbu Al Bahr', 'edu', 'saudi arabia', 'yanbu al bahr', '08:00', '17:00', '72 Prince Sultan Street, Al-Aziziyah District, Yanbu Al Bahr', '+966 58 548 7427', 'Courses and tutoring with certified teachers and small class sizes.'),
  (404, 'Nile Care Polyclinic - Qalyubia', 'clinics', 'egypt', 'qalyubia', '09:00', '21:00', '111 Port Said Street, Qalyubia', '+20 12 5429 0644', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (405, 'Emirates Coding Academy', 'edu', 'united arab emirates', 'al fujairah city', '08:00', '17:00', '55 Al Wasl Road, Al Nahda, Al Fujairah City', '+971 56 738 3479', 'Coding and programming classes for kids, teens and beginners.'),
  (406, 'Bright Minds Tutoring', 'edu', 'united arab emirates', 'murbaḩ', '08:00', '17:00', '102 Al Wasl Road, Downtown, Murbaḩ', '+971 50 782 7204', 'Private tutoring and curriculum support with small groups.'),
  (407, 'Red Sea Marine Training Institute - Mina', 'edu', 'saudi arabia', 'mina', '08:00', '20:00', '110 King Fahd Road, Al-Salam District, Mina', '+966 14 223 9539', 'Marine and diving training with certified instructors.'),
  (408, 'Beit Hanoun Municipality Service Center', 'government_offices', 'palestinian territory occupied', 'beit hanoun', '09:00', '15:00', '57 Al-Manara Square, Beit Hanoun', '+970 2 968 2640', 'Public service counter handling requests, certificates and renewals.'),
  (409, 'Oasis Telecom Store - Tabālah', 'telecom', 'saudi arabia', 'tabālah', '09:00', '21:00', '140 King Abdulaziz Street, Al-Malaz District, Tabālah', '+966 55 076 5609', 'Store for SIM cards, mobile plans, home internet and device support.'),
  (410, 'Desert Falcon Safari - Rābigh', 'other', 'saudi arabia', 'rābigh', NULL, NULL, '96 Othman bin Affan Road, Al-Nuzha District, Rābigh', '+966 13 349 1831', 'Desert safari and outdoor trips for individuals and groups.'),
  (411, 'Abu Simbel Neurology Center - Matrouh', 'clinics', 'egypt', 'matrouh', '09:00', '21:00', '7 26th of July Street, Matrouh', '+20 57 9928442', 'Neurology consultations, nerve studies and ongoing patient follow-up.'),
  (412, 'Zamalek Style Salon - Sohag', 'other', 'egypt', 'sohag', '10:00', '22:00', '99 El-Merghany Street, Sohag', '+20 10 3419 0588', 'Hair, beauty and styling services by appointment.'),
  (413, 'Al-Hana Bakery - Qena', 'other', 'egypt', 'qena', '09:00', '21:00', '84 El-Merghany Street, Qena', '+20 11 0312 4136', 'Fresh bread and pastries baked every day.'),
  (414, 'Sand Dune Clinics', 'clinics', 'united arab emirates', 'abu dhabi', NULL, NULL, '26 Khalifa Street, Al Qusais, Abu Dhabi', '+971 52 967 2070', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (415, 'Al-Karama Gym', 'other', 'palestinian territory occupied', 'abasan al-kabira', '09:00', '21:00', '72 Omar Al-Mukhtar Street, Abasan Al-Kabira', '+970 59 181 7686', 'Gym with free weights, cardio machines and group classes.'),
  (416, 'Palm Garden Event Hall - Al Wajh', 'other', 'saudi arabia', 'al wajh', '09:00', '21:00', '94 King Abdullah Road, Al-Rawdah District, Al Wajh', '+966 55 864 4085', 'Event planning and decoration for weddings and parties.'),
  (417, 'NileLink Store - Ismailia', 'telecom', 'egypt', 'ismailia', '09:00', '21:00', '130 Al-Gomhoria Street, Ismailia', '+20 11 7959 2431', 'Store for SIM cards, mobile plans, home internet and device support.'),
  (418, 'Al-Ofoq Driving School - At Tūbī', 'edu', 'saudi arabia', 'at tūbī', '08:00', '20:00', '9 Othman bin Affan Road, Al-Salam District, At Tūbī', '+966 54 385 3637', 'School enrollment, tours and parent consultations at the front desk.'),
  (419, 'Al Arţāwīyah Traffic Department Service Center', 'government_offices', 'saudi arabia', 'al arţāwīyah', '08:00', '14:00', '136 Al-Khalidiyah Street, Al-Faisaliyah District, Al Arţāwīyah', '+966 50 748 8277', 'Official services center. Bring a valid ID and the required documents.'),
  (420, 'Al-Baraka Supermarket - Al Fuwayliq', 'other', 'saudi arabia', 'al fuwayliq', NULL, NULL, '82 Al-Khalidiyah Street, Al-Salam District, Al Fuwayliq', '+966 52 278 3663', 'Groceries and household items.'),
  (421, 'Beheira Real Estate Registry Office', 'government_offices', 'egypt', 'beheira', '08:00', '14:00', '66 El-Horreya Avenue, Beheira', '+20 11 9349 7839', 'Government service desk for permits, records and citizen inquiries.'),
  (422, 'Oasis Wellness Clinic', 'clinics', 'united arab emirates', 'ras al khaimah city', '08:00', '16:00', '56 Al Wasl Road, Al Markaziyah, Ras Al Khaimah City', '+971 4 452 5061', 'Preventive care and wellness check-ups for the whole family.'),
  (423, 'Isis Dermatology Clinic - Faiyum', 'clinics', 'egypt', 'faiyum', '08:00', '16:00', '72 Al-Geish Street, Faiyum', '+20 88 5049282', 'Skin, hair and laser treatments with specialist dermatologists.'),
  (424, 'Falcon Connect Customer Care - Qurayyat', 'telecom', 'saudi arabia', 'qurayyat', '09:00', '21:00', '45 Othman bin Affan Road, Al-Salam District, Qurayyat', '+966 54 205 4647', 'Store for SIM cards, mobile plans, home internet and device support.'),
  (425, 'Al-Noor Language Institute - Qurayyat', 'edu', 'saudi arabia', 'qurayyat', '09:00', '18:00', '88 Tahlia Street, Al-Hamra District, Qurayyat', '+966 58 987 8122', 'Language courses for kids and adults with placement tests and small classes.'),
  (426, 'Delta Auto Parts - Beheira', 'other', 'egypt', 'beheira', '07:00', '23:00', '136 Al-Geish Street, Beheira', '+20 2 9459089', 'Spare parts and accessories for most car makes.'),
  (427, 'Pharaoh Net Customer Care - Monufia', 'telecom', 'egypt', 'monufia', '09:00', '21:00', '103 Al-Gomhoria Street, Monufia', '+20 15 2232 3862', 'Handles new lines, plan upgrades, recharge and router support.'),
  (428, 'Al-Basma Children''s Clinic', 'clinics', 'palestinian territory occupied', 'nablus', '09:00', '21:00', '125 Al-Quds Street, Nablus', '+970 56 640 0429', 'Child healthcare, vaccinations and check-ups in a child-friendly setting.'),
  (429, 'Al-Salam Islamic Bank - Tubas Branch', 'banks', 'palestinian territory occupied', 'tubas', '08:30', '15:00', '114 Al-Quds Street, Tubas', '+970 9 720 5066', 'Full-service branch for accounts, cards, loans and money transfers.'),
  (430, 'Pharaoh National Bank - Beni Suef Branch', 'banks', 'egypt', 'beni suef', '08:00', '14:00', '86 El-Merghany Street, Beni Suef', '+20 15 3760 3738', 'Full-service branch for accounts, cards, loans and money transfers.'),
  (431, 'Desert Link Store - Al Munayzilah', 'telecom', 'saudi arabia', 'al munayzilah', '10:00', '22:00', '27 Al-Urubah Road, Al-Nuzha District, Al Munayzilah', '920017737', 'Handles new lines, plan upgrades, recharge and router support.'),
  (432, 'Al-Najah Language Institute', 'edu', 'palestinian territory occupied', 'qabatiya', '14:00', '22:00', '51 Jaffa Street, Qabatiya', '+970 8 703 6086', 'Language courses for kids and adults with placement tests and small classes.'),
  (433, 'Hejaz Heart Clinic - Al Khafjī', 'clinics', 'saudi arabia', 'al khafjī', '10:00', '22:00', '115 Prince Mohammed bin Abdulaziz Street, Al-Sulimaniyah District, Al Khafjī', '+966 54 209 5120', 'Cardiology consultations, ECG and heart health screening.'),
  (434, 'Smart Fix Mobile Repair', 'other', 'egypt', 'sohag', '07:00', '23:00', '89 Tahrir Street, Sohag', '+20 12 1341 7972', 'Phone repairs, screen replacement and accessories.'),
  (435, 'Al-Ramal Cafe', 'other', 'palestinian territory occupied', 'silwad', '07:00', '23:00', '34 Al-Masyoun Street, Silwad', '+970 59 815 8840', 'Coffee, tea and light bites in a relaxed setting.'),
  (436, 'Gulf Physio & Rehab - Dubai', 'clinics', 'united arab emirates', 'dubai', '09:00', '21:00', '124 Al Wasl Road, Downtown, Dubai', '+971 56 505 6372', 'Physiotherapy and rehabilitation sessions with personalized exercise plans.'),
  (437, 'Al-Ramal Medical Center - Salfit', 'clinics', 'palestinian territory occupied', 'salfit', '09:00', '21:00', '1 Salah Al-Din Street, Salfit', '+970 9 895 2131', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (438, 'Al-Basma Private Lessons Center', 'edu', 'egypt', 'kafr el sheikh', '08:00', '20:00', '8 El-Merghany Street, Kafr El Sheikh', '+20 15 6668 0141', 'Private tutoring and curriculum support with small groups.'),
  (439, 'Jasmine Flower Shop - Hebron', 'other', 'palestinian territory occupied', 'hebron', '07:00', '23:00', '133 Al-Rimal Street, Hebron', '+970 59 956 9441', 'Fresh flowers and bouquets for every occasion.'),
  (440, 'Palm Valley Clinic - Yanbu Al Bahr', 'clinics', 'saudi arabia', 'yanbu al bahr', '10:00', '22:00', '42 Al-Olaya Street, Al-Rawdah District, Yanbu Al Bahr', '+966 57 311 6089', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (441, 'Najd International School - Rahimah', 'edu', 'saudi arabia', 'rahimah', '08:00', '20:00', '119 Prince Sultan Street, Al-Sulimaniyah District, Rahimah', '+966 59 827 4068', 'School enrollment, tours and parent consultations at the front desk.'),
  (442, 'Al-Raha Medical Center - Dhahran', 'clinics', 'saudi arabia', 'dhahran', '09:00', '21:00', '132 Al-Olaya Street, Al-Sulimaniyah District, Dhahran', '+966 56 908 0679', 'Outpatient clinic offering consultations, check-ups and follow-up visits.'),
  (443, 'Delta Kidney Care Clinic', 'clinics', 'egypt', 'monufia', '09:00', '21:00', '6 El-Merghany Street, Monufia', '+20 82 0145510', 'Kidney care and dialysis follow-up with specialist nephrologists.'),
  (444, 'Emirates Gulf Bank - Zayed City Branch', 'banks', 'united arab emirates', 'zayed city', '08:30', '15:00', '74 Al Wasl Road, Al Qusais, Zayed City', '+971 4 959 9979', 'Branch offering account opening, currency services and customer support.'),
  (445, 'Dune Bashing Adventures - Dibba Al-Hisn', 'other', 'united arab emirates', 'dibba al-hisn', '07:00', '23:00', '10 Al Wasl Road, Downtown, Dibba Al-Hisn', '+971 50 799 2667', 'Outdoor adventure trips for individuals and groups.'),
  (446, 'Hejaz English Institute - Al Wajh', 'edu', 'saudi arabia', 'al wajh', '08:00', '17:00', '15 Al-Amir Naif Street, Al-Rawdah District, Al Wajh', '+966 54 573 1090', 'English courses for kids and adults with placement tests and small classes.'),
  (447, 'Najd Mobile Customer Care - Al Hufūf', 'telecom', 'saudi arabia', 'al hufūf', '09:00', '21:00', '87 Al-Khalidiyah Street, Al-Nuzha District, Al Hufūf', '+966 55 258 2018', 'Customer care for bill payment, line activation and technical help.'),
  (448, 'Masfout Tax Services Office', 'government_offices', 'united arab emirates', 'masfout', '08:00', '14:00', '10 Al Ittihad Road, Al Majaz, Masfout', '800 7220', 'Government service desk for permits, records and citizen inquiries.'),
  (449, 'Al-Ofoq Driving School - Mizhirah', 'edu', 'saudi arabia', 'mizhirah', '09:00', '18:00', '98 King Abdullah Road, Al-Nuzha District, Mizhirah', '+966 56 599 8964', 'School enrollment, tours and parent consultations at the front desk.'),
  (450, 'El-Salam Dental Center', 'clinics', 'egypt', 'qalyubia', '09:00', '21:00', '83 Tahrir Street, Qalyubia', '+20 62 0522788', 'Dental clinic for check-ups, fillings, cleaning and orthodontics by appointment.'),

  -- Egypt Companies (451-510)
  (451, 'Al-Ahly Medical Center', 'clinics', 'egypt', 'cairo', '08:00', '22:00', '15 Tahrir Sq, Cairo', '+20 10 1112 2233', 'Comprehensive medical care and specialized outpatient clinics.'),
  (452, 'Banque Misr - Maadi Branch', 'banks', 'egypt', 'cairo', '08:30', '15:00', '9 Road 9, Maadi', '19888', 'Retail banking, personal loans, and corporate financial services.'),
  (453, 'WE Telecom - Mohandiseen', 'telecom', 'egypt', 'giza', '09:00', '21:00', '45 Arab League St', '111', 'Home internet, mobile plans, and technical support.'),
  (454, 'Giza Traffic Department', 'government_offices', 'egypt', 'giza', '08:00', '14:00', 'Faisal Main Road', '+20 2 3765 4321', 'Driver licenses, vehicle registration, and fine settlements.'),
  (455, 'Cleopatra Language School', 'edu', 'egypt', 'cairo', '07:30', '14:30', 'Nasr City, Cairo', '+20 2 2456 7890', 'International curriculum and student affairs office.'),
  (456, 'El-Borg Laboratories', 'clinics', 'egypt', 'cairo', '00:00', '23:59', 'Dokki, Giza', '19044', 'Advanced diagnostic and blood testing laboratory.'),
  (457, 'Vodafone Egypt - Zamalek', 'telecom', 'egypt', 'cairo', '09:00', '23:00', '26th of July Corridor', '888', 'Mobile telecommunications and smart home solutions.'),
  (458, 'Civil Registry - 5th Settlement', 'government_offices', 'egypt', 'cairo', '08:00', '15:00', 'New Cairo Complex', '+20 2 2765 4321', 'Birth certificates, national IDs, and family records.'),
  (459, 'AUC Continuing Education', 'edu', 'egypt', 'cairo', '09:00', '20:00', 'AUC Avenue, New Cairo', '+20 2 2615 1000', 'Professional courses and career development programs.'),
  (460, 'CIB - Smart Village', 'banks', 'egypt', 'giza', '08:30', '15:00', 'Smart Village, Giza', '19666', 'Corporate banking and premium customer service.'),
  (461, 'Nile Dental Studio', 'clinics', 'egypt', 'cairo', '09:00', '21:00', '14 Mohamed Mahmoud St, Downtown, Cairo', '+20 10 2847 5510', 'Dental check-ups, fillings, whitening and orthodontic consultations.'),
  (462, 'Heliopolis Care Pharmacy', 'other', 'egypt', 'cairo', '08:00', '23:00', '22 Baghdad St, Heliopolis, Cairo', '+20 2 2290 1184', 'Prescriptions, medical supplies and home delivery.'),
  (463, 'Nasr City Auto Care', 'other', 'egypt', 'cairo', '09:00', '19:00', '5 Makram Ebeid St, Nasr City, Cairo', '+20 11 2294 0817', 'Car maintenance, oil changes and diagnostics.'),
  (464, 'Nour Al-Qahira Academy', 'edu', 'egypt', 'cairo', '08:00', '20:00', '18 Gameat El-Dewal St, Mohandessin, Cairo', '+20 2 3346 7721', 'Arabic and Quran courses for kids and adults.'),
  (465, 'Maadi Telecom Store', 'telecom', 'egypt', 'cairo', '10:00', '22:00', '40 Road 250, Maadi, Cairo', '+20 10 5520 3389', 'Mobile lines, plan upgrades, recharge and router support.'),
  (466, 'Cairo Gold Exchange', 'banks', 'egypt', 'cairo', '09:00', '17:00', '9 Qasr El-Nil St, Downtown, Cairo', '+20 2 2393 6612', 'Currency exchange, gold and money transfers.'),
  (467, 'Zamalek Pet and Vet Clinic', 'clinics', 'egypt', 'cairo', '10:00', '22:00', '27 Ismail Mohamed St, Zamalek, Cairo', '+20 12 0198 4456', 'Veterinary check-ups, vaccines and grooming.'),
  (468, 'Smart Print Hub', 'other', 'egypt', 'cairo', '09:00', '21:00', '7 Abbas El-Akkad St, Nasr City, Cairo', '+20 15 3340 9012', 'Printing, binding and document services for startups.'),
  (469, 'Wassef Family Eye Center', 'clinics', 'egypt', 'cairo', '09:00', '21:00', '60 Nile Corniche, Maadi, Cairo', '+20 2 2521 8803', 'Eye exams, glasses and contact lens fitting.'),
  (470, 'Heliopolis Civil Registry Office', 'government_offices', 'egypt', 'cairo', '08:00', '15:00', 'Al-Ahram St, Heliopolis, Cairo', '+20 2 2456 7001', 'Birth and marriage certificates, national ID and family records.'),
  (471, 'Lotus Coding Institute', 'edu', 'egypt', 'cairo', '10:00', '21:00', '12 Champollion St, Downtown, Cairo', '+20 10 9034 7712', 'Web and mobile programming bootcamps with project work.'),
  (472, 'Sphinx Mobile Repair', 'other', 'egypt', 'cairo', '10:00', '22:00', '15 Talaat Harb St, Downtown, Cairo', '+20 11 4418 6605', 'Phone screen repair, battery replacement and accessories.'),
  (473, 'Pyramids Kids Kindergarten', 'edu', 'egypt', 'giza', '08:00', '16:00', '18 Al-Haram St, Giza', '+20 2 3385 2290', 'Kindergarten with play-based learning for ages 3 to 6.'),
  (474, 'Giza Fresh Market', 'other', 'egypt', 'giza', '08:00', '23:00', '45 Gameat El-Dowal, Mohandessin, Giza', '+20 2 3760 1184', 'Groceries, fresh produce and household essentials.'),
  (475, 'Mohandessin Medical Lab', 'clinics', 'egypt', 'giza', '07:00', '22:00', '33 Syria St, Mohandessin, Giza', '+20 2 3303 4478', 'Blood tests, imaging referrals and home sample collection.'),
  (476, 'Dokki Tax Office', 'government_offices', 'egypt', 'giza', '08:30', '14:30', 'Tahrir St, Dokki, Giza', '+20 2 3335 9900', 'Tax registration, returns and payment counters.'),
  (477, 'Faisal Mobile Store', 'telecom', 'egypt', 'giza', '10:00', '23:00', '110 Faisal St, Giza', '+20 10 7713 2046', 'Mobile plans, devices and home internet installation.'),
  (478, 'Corniche Language Center', 'edu', 'egypt', 'alexandria', '09:00', '20:00', 'Corniche Road, Sporting, Alexandria', '+20 3 421 5508', 'English and French courses with placement tests.'),
  (479, 'Smouha Family Clinic', 'clinics', 'egypt', 'alexandria', '09:00', '21:00', '12 Smouha St, Alexandria', '+20 3 421 8734', 'Family medicine, vaccinations and minor procedures.'),
  (480, 'Montaza Auto Parts', 'other', 'egypt', 'alexandria', '09:00', '21:00', '80 Abu Qir St, Alexandria', '+20 3 548 2291', 'Spare parts and accessories for most car makes.'),
  (481, 'Alexandria Port Customs Office', 'government_offices', 'egypt', 'alexandria', '08:00', '14:00', 'Port Authority Area, Alexandria', '+20 3 486 0021', 'Customs clearance and import document services.'),
  (482, 'Mediterranean Telecom Store', 'telecom', 'egypt', 'alexandria', '10:00', '22:00', '25 Fouad St, Alexandria', '+20 10 2810 4467', 'Mobile, internet and device support.'),
  (483, 'Eastern Bank - Smouha Branch', 'banks', 'egypt', 'alexandria', '08:30', '15:00', '6 Victor Emmanuel St, Smouha, Alexandria', '+20 3 422 7760', 'Retail accounts, cards and personal loans.'),
  (484, 'Shubra Kheit Pediatric Clinic', 'clinics', 'egypt', 'qalyubia', '09:00', '21:00', 'Shubra Kheit Main St, Qalyubia', '+20 13 3462 1180', 'Child healthcare and vaccinations.'),
  (485, 'Benha Evening Startup Academy', 'edu', 'egypt', 'qalyubia', '14:00', '22:00', '4 Abdel Salam Aref St, Benha, Qalyubia', '+20 13 3322 6109', 'Evening English and coding classes for teens.'),
  (486, 'Zagazig Mobile Hub', 'telecom', 'egypt', 'sharqia', '09:00', '22:00', 'Al-Gomhoria St, Zagazig, Sharqia', '+20 55 231 7745', 'Mobile plans, device sales and recharge.'),
  (487, 'Sharqia Civil Registry Office', 'government_offices', 'egypt', 'sharqia', '08:00', '14:00', 'Al-Mahatta Sq, Zagazig, Sharqia', '+20 55 233 0198', 'Official records, IDs and certificate issuance.'),
  (488, 'Tanta Diabetes and Endocrine Center', 'clinics', 'egypt', 'gharbia', '09:00', '21:00', 'Al-Geish St, Tanta, Gharbia', '+20 40 335 6612', 'Diabetes, thyroid and hormone consultations.'),
  (489, 'Tanta Bright Tutors', 'edu', 'egypt', 'gharbia', '15:00', '22:00', 'Al-Bahr St, Tanta, Gharbia', '+20 40 332 9045', 'Private tutoring for secondary school students.'),
  (490, 'Shebin Commercial Bank', 'banks', 'egypt', 'monufia', '09:00', '15:00', 'Tahrir St, Shebin El-Kom, Monufia', '+20 48 226 1184', 'Branch services, cards and savings accounts.'),
  (491, 'Shebin Sports and Fitness Club', 'other', 'egypt', 'monufia', '07:00', '23:00', 'Al-Thawra St, Shebin El-Kom, Monufia', '+20 48 228 7790', 'Gym, swimming and group fitness classes.'),
  (492, 'Asyut Public Services Office', 'government_offices', 'egypt', 'asyut', '08:30', '14:30', 'Al-Gomhoria St, Asyut', '+20 88 232 4410', 'Bill payments and service requests.'),
  (493, 'Asyut Coffee and Desserts', 'other', 'egypt', 'asyut', '10:00', '23:00', 'Al-Thawra St, Asyut', '+20 10 4451 7820', 'Coffee, desserts and light meals.'),
  (494, 'Sohag Community Health Center', 'clinics', 'egypt', 'sohag', '08:00', '20:00', 'Al-Geish St, Sohag', '+20 93 231 6604', 'Primary care, vaccinations and maternity follow-up.'),
  (495, 'Nile Valley Software Studio', 'other', 'egypt', 'sohag', '10:00', '19:00', 'Al-Mahatta St, Sohag', '+20 10 6027 3185', 'Website and small business software development.'),
  (496, 'Minya Sun Driving School', 'edu', 'egypt', 'minya', '09:00', '20:00', 'Corniche El-Nil, Minya', '+20 86 236 4017', 'Driving lessons and theory test preparation.'),
  (497, 'Minya Telecom Center', 'telecom', 'egypt', 'minya', '10:00', '22:00', 'Al-Gomhoria St, Minya', '+20 86 234 1187', 'Mobile plans, internet and device care.'),
  (498, 'Qena Medical Supplies', 'other', 'egypt', 'qena', '09:00', '21:00', 'Al-Nasr St, Qena', '+20 96 532 9158', 'Medical equipment and home care supplies.'),
  (499, 'Qena Kids Language Club', 'edu', 'egypt', 'qena', '16:00', '21:00', 'Al-Mahatta St, Qena', '+20 96 530 7741', 'English and reading clubs for children.'),
  (500, 'Ismailia Canal Dental Clinic', 'clinics', 'egypt', 'ismailia', '09:00', '21:00', 'Canal St, Ismailia', '+20 64 332 6128', 'Dental check-ups, cleaning and cosmetic treatments.'),
  (501, 'Ismailia Tax Authority Office', 'government_offices', 'egypt', 'ismailia', '08:00', '14:00', 'Al-Thawra St, Ismailia', '+20 64 331 9902', 'Tax registration and filing services.'),
  (502, 'Port Said Shipping Agency', 'other', 'egypt', 'port said', '09:00', '17:00', 'Port Fouad Waterfront, Port Said', '+20 66 322 8145', 'Shipping and cargo documentation services.'),
  (503, 'Suez Gulf Insurance Agency', 'other', 'egypt', 'suez', '09:00', '17:00', 'Al-Geish St, Suez', '+20 62 333 5520', 'Car, home and health insurance policies.'),
  (504, 'Suez Language and Computer School', 'edu', 'egypt', 'suez', '08:00', '20:00', 'Port Tawfik St, Suez', '+20 62 331 7790', 'Language and computer courses for teens and adults.'),
  (505, 'Hurghada Dive Academy', 'edu', 'egypt', 'red sea', '09:00', '18:00', 'Sheraton Road, Hurghada', '+20 65 344 2187', 'Scuba diving courses and marine safety training.'),
  (506, 'Hurghada Marina Clinic', 'clinics', 'egypt', 'red sea', '00:00', '00:00', 'Marina Area, Hurghada', '+20 65 344 9010', 'Round-the-clock urgent care and first aid for visitors.'),
  (507, 'Marsa Matrouh Real Estate', 'other', 'egypt', 'matrouh', '10:00', '21:00', 'Corniche St, Marsa Matrouh', '+20 46 493 2280', 'Property listings, rentals and sales.'),
  (508, 'Damanhour Kids Dental Care', 'clinics', 'egypt', 'beheira', '10:00', '20:00', 'El-Horreya St, Damanhour, Beheira', '+20 45 332 4470', 'Pediatric dental care and preventive treatments.'),
  (509, 'Luxor Sunrise Tours', 'other', 'egypt', 'luxor', '07:00', '20:00', 'Corniche El-Nil, Luxor', '+20 95 237 1190', 'Temple tours, hot-air balloon bookings and day trips.'),
  (510, 'Aswan Nubian Crafts', 'other', 'egypt', 'aswan', '09:00', '21:00', 'Souq Al-Fustat, Aswan', '+20 97 231 5536', 'Handmade jewelry, textiles and souvenirs.'),

  -- Saudi Arabia Companies (511-550)
  (511, 'Al Rajhi Bank - Olaya', 'banks', 'saudi arabia', 'riyadh', '09:30', '16:30', 'Olaya St, Riyadh', '+966 11 460 0000', 'Islamic banking, personal finance, and remittances.'),
  (512, 'Dr. Sulaiman Al Habib Hospital', 'clinics', 'saudi arabia', 'riyadh', '00:00', '23:59', 'King Fahd Road', '+966 11 462 2224', 'Premium healthcare and specialized medical consultations.'),
  (513, 'STC Main Office', 'telecom', 'saudi arabia', 'riyadh', '08:00', '22:00', 'King Abdulaziz Telecom Complex', '900', 'Fiber internet, 5G plans, and enterprise solutions.'),
  (514, 'Riyadh Passports (Jawazat)', 'government_offices', 'saudi arabia', 'riyadh', '07:30', '14:30', 'Al-Murabba, Riyadh', '+966 11 477 1100', 'Iqama renewals, exit/re-entry visas, and passport issuance.'),
  (515, 'King Saud University Admissions', 'edu', 'saudi arabia', 'riyadh', '08:00', '15:00', 'KSU Campus, Riyadh', '+966 11 467 0000', 'University enrollment, graduate studies, and student services.'),
  (516, 'SNB AlAhli - Tahlia', 'banks', 'saudi arabia', 'jeddah', '09:30', '16:30', 'Tahlia St, Jeddah', '+966 9200 01000', 'Wealth management and retail banking services.'),
  (517, 'Saudi German Hospital', 'clinics', 'saudi arabia', 'jeddah', '00:00', '23:59', 'Al-Zahra, Jeddah', '+966 12 682 9000', 'Emergency care, surgery, and specialized clinics.'),
  (518, 'Mobily Center - Red Sea Mall', 'telecom', 'saudi arabia', 'jeddah', '10:00', '23:00', 'Red Sea Mall, Jeddah', '1100', 'Mobile connections, device installments, and support.'),
  (519, 'Jeddah Traffic Dept (Muroor)', 'government_offices', 'saudi arabia', 'jeddah', '07:30', '14:30', 'Al-Rehab, Jeddah', '+966 12 671 0000', 'Driving tests, license renewals, and accident reports.'),
  (520, 'Berlitz Languages - Jeddah', 'edu', 'saudi arabia', 'jeddah', '10:00', '21:00', 'Sari St, Jeddah', '+966 12 661 0000', 'English and foreign language training centers.'),
  (521, 'Olaya Telecom Plus', 'telecom', 'saudi arabia', 'riyadh', '09:00', '23:00', 'Olaya Street, Riyadh', '+966 11 463 2280', 'Mobile lines, home internet and device support.'),
  (522, 'Nakheel Dental Center', 'clinics', 'saudi arabia', 'riyadh', '09:00', '21:00', 'King Abdullah Road, Riyadh', '+966 11 218 4475', 'Dental check-ups, implants and orthodontics.'),
  (523, 'Riyadh Startup Hub', 'edu', 'saudi arabia', 'riyadh', '10:00', '20:00', 'Al-Malqa District, Riyadh', '+966 11 292 5530', 'Coding bootcamps and entrepreneurship workshops.'),
  (524, 'Al-Sahafa Auto Center', 'other', 'saudi arabia', 'riyadh', '08:00', '22:00', 'Al-Sahafa District, Riyadh', '+966 11 480 6612', 'Car service, tires and maintenance.'),
  (525, 'Al-Nafl Civil Affairs Office', 'government_offices', 'saudi arabia', 'riyadh', '08:00', '14:00', 'Al-Nafl District, Riyadh', '920021155', 'Civil registry and family record services.'),
  (526, 'Al-Noor Savings Bank - Al-Wurud', 'banks', 'saudi arabia', 'riyadh', '09:30', '16:30', 'Al-Wurud District, Riyadh', '920011234', 'Accounts, cards and personal financing.'),
  (527, 'Qasr Al-Hokm Tailors', 'other', 'saudi arabia', 'riyadh', '10:00', '22:00', 'Qasr Al-Hokm, Riyadh', '+966 11 226 1049', 'Tailoring, alterations and bespoke thobes.'),
  (528, 'Al-Yasmin Kids Academy', 'edu', 'saudi arabia', 'riyadh', '07:30', '14:30', 'Al-Yasmin District, Riyadh', '+966 11 415 8820', 'Primary school with Arabic and English tracks.'),
  (529, 'Corniche Eye Clinic', 'clinics', 'saudi arabia', 'jeddah', '09:00', '21:00', 'Al-Corniche Road, Jeddah', '+966 12 662 4417', 'Eye exams, laser consultation and glasses.'),
  (530, 'Jeddah Smart Repair', 'other', 'saudi arabia', 'jeddah', '10:00', '23:00', 'Al-Rawdah District, Jeddah', '+966 12 653 2290', 'Phone and laptop repair with same-day service.'),
  (531, 'Al-Balad Oud and Dates', 'other', 'saudi arabia', 'jeddah', '10:00', '22:00', 'Al-Balad Old Town, Jeddah', '+966 12 647 0912', 'Oud, dates and traditional gifts.'),
  (532, 'Jeddah Coding Girls Club', 'edu', 'saudi arabia', 'jeddah', '09:00', '18:00', 'Al-Hamra District, Jeddah', '+966 12 694 3306', 'Programming and robotics workshops for girls.'),
  (533, 'Red Sea Car Rental', 'other', 'saudi arabia', 'jeddah', '08:00', '22:00', 'King Abdulaziz Airport Road, Jeddah', '+966 12 681 7755', 'Car rentals by the day, week or month.'),
  (534, 'Jeddah Municipality Service Center', 'government_offices', 'saudi arabia', 'jeddah', '08:00', '14:00', 'Al-Andalus District, Jeddah', '920003322', 'Permits, municipal fees and complaints.'),
  (535, 'Gulf Pharmacy - Dammam', 'other', 'saudi arabia', 'dammam', '08:00', '23:00', 'Al-Faisaliyah St, Dammam', '+966 13 834 5123', 'Prescriptions, medicines and health products.'),
  (536, 'Dammam Mobile Store', 'telecom', 'saudi arabia', 'dammam', '10:00', '23:00', 'Prince Mohammed Bin Fahd Road, Dammam', '+966 13 832 6640', 'Plans, devices and SIM services.'),
  (537, 'Eastern Women Clinic', 'clinics', 'saudi arabia', 'dammam', '09:00', '21:00', 'Al-Shati District, Dammam', '+966 13 857 2019', 'Women health, antenatal care and check-ups.'),
  (538, 'Dammam Talent Institute', 'edu', 'saudi arabia', 'dammam', '09:00', '18:00', 'Al-Faisaliyah, Dammam', '+966 13 842 7710', 'Vocational courses and short professional training.'),
  (539, 'Khobar Family Dental', 'clinics', 'saudi arabia', 'khobar', '09:00', '21:00', 'Al-Thuqba St, Khobar', '+966 13 866 1400', 'Dental care for the whole family.'),
  (540, 'Khobar Corniche Cafe', 'other', 'saudi arabia', 'khobar', '08:00', '23:00', 'Corniche Road, Khobar', '+966 13 894 2210', 'Specialty coffee, desserts and light meals.'),
  (541, 'Eastern Province Startup Labs', 'edu', 'saudi arabia', 'khobar', '10:00', '20:00', 'Al-Rakah District, Khobar', '+966 13 890 7751', 'Coding and design courses for beginners.'),
  (542, 'Al-Haram Prayer Supplies', 'other', 'saudi arabia', 'mecca', '06:00', '23:00', 'Ibrahim Al-Khalil St, Mecca', '+966 12 555 2841', 'Prayer mats, Quran editions and gift packaging.'),
  (543, 'Al-Aziziyah Medical Clinic', 'clinics', 'saudi arabia', 'mecca', '08:00', '22:00', 'Al-Aziziyah District, Mecca', '+966 12 546 8820', 'Family medicine and urgent consultations.'),
  (544, 'Medina Dates Trading', 'other', 'saudi arabia', 'medina', '08:00', '22:00', 'Quba Road, Medina', '+966 14 848 1204', 'Premium dates, honey and gift boxes.'),
  (545, 'Medina Telecom Center', 'telecom', 'saudi arabia', 'medina', '10:00', '22:00', 'Sultanah Road, Medina', '+966 14 823 4568', 'Mobile plans and home internet.'),
  (546, 'Qassim Electronics Repair', 'other', 'saudi arabia', 'buraydah', '10:00', '22:00', 'Al-Hazm St, Buraydah', '+966 16 384 9911', 'Electronics repair and accessories.'),
  (547, 'Buraydah Learning Academy', 'edu', 'saudi arabia', 'buraydah', '08:00', '17:00', 'Al-Malaz District, Buraydah', '+966 16 386 2290', 'Private school with Arabic and English programs.'),
  (548, 'Asir Diagnostic Lab', 'clinics', 'saudi arabia', 'abha', '07:00', '21:00', 'Al-Mahalah Road, Abha', '+966 17 228 6607', 'Blood tests, imaging and lab results.'),
  (549, 'Taif Rose Gift Shop', 'other', 'saudi arabia', 'ta if', '09:00', '22:00', 'Al-Shifa Road, Taif', '+966 12 739 5513', 'Rose products, perfumes and gift boxes.'),
  (550, 'Tabuk Passports and Visa Office', 'government_offices', 'saudi arabia', 'tabuk', '08:00', '14:00', 'King Fahd Road, Tabuk', '920009977', 'Passport and visa processing services.'),

  -- UAE Companies (551-578)
  (551, 'Emirates NBD - Marina', 'banks', 'united arab emirates', 'dubai', '10:00', '21:00', 'Dubai Marina Mall', '+971 600 54 0000', 'Personal banking, auto loans, and VIP accounts.'),
  (552, 'Aster Clinic - Bur Dubai', 'clinics', 'united arab emirates', 'dubai', '08:00', '23:00', 'Bur Dubai, UAE', '+971 4 440 0500', 'General practice, pediatrics, and dental care.'),
  (553, 'Etisalat Store - Dubai Mall', 'telecom', 'united arab emirates', 'dubai', '10:00', '23:00', 'The Dubai Mall', '101', 'eLife setup, mobile postpaid plans, and device sales.'),
  (554, 'Dubai Police Smart Station', 'government_offices', 'united arab emirates', 'dubai', '00:00', '23:59', 'City Walk, Dubai', '901', 'Traffic fines, police clearance, and lost & found.'),
  (555, 'GEMS Education Center', 'edu', 'united arab emirates', 'dubai', '08:00', '16:00', 'Al Barsha, Dubai', '+971 4 395 8494', 'School admissions, fee collections, and parent queries.'),
  (556, 'First Abu Dhabi Bank (FAB)', 'banks', 'united arab emirates', 'abu dhabi', '08:00', '15:00', 'Khalifa St, Abu Dhabi', '+971 2 681 1511', 'Corporate banking, mortgages, and investment services.'),
  (557, 'Cleveland Clinic Abu Dhabi', 'clinics', 'united arab emirates', 'abu dhabi', '08:00', '20:00', 'Al Maryah Island', '800 2223', 'World-class multi-specialty hospital and intensive care.'),
  (558, 'Du Shop - Abu Dhabi Mall', 'telecom', 'united arab emirates', 'abu dhabi', '10:00', '22:00', 'Abu Dhabi Mall', '155', 'Home wireless, mobile lines, and customer care.'),
  (559, 'Tamm Center - Abu Dhabi', 'government_offices', 'united arab emirates', 'abu dhabi', '08:00', '16:00', 'Yas Island', '800 555', 'Unified government services and municipal requests.'),
  (560, 'Khalifa University Admissions', 'edu', 'united arab emirates', 'abu dhabi', '08:00', '16:00', 'Zone 1, Abu Dhabi', '+971 2 312 3333', 'Undergraduate and postgraduate registration.'),
  (561, 'Marina Dental Studio', 'clinics', 'united arab emirates', 'dubai', '09:00', '21:00', 'Dubai Marina Walk', '+971 4 399 2215', 'Cosmetic and general dental care.'),
  (562, 'Deira Electronics Hub', 'telecom', 'united arab emirates', 'dubai', '10:00', '22:00', 'Al Rigga Road, Deira, Dubai', '+971 4 226 7741', 'Mobile lines, devices and accessories.'),
  (563, 'Downtown Pilates and Wellness', 'other', 'united arab emirates', 'dubai', '07:00', '21:00', 'Downtown Dubai, Boulevard Walk', '+971 4 330 8842', 'Pilates, yoga and wellness classes.'),
  (564, 'Dubai Coding Academy', 'edu', 'united arab emirates', 'dubai', '09:00', '18:00', 'Al Quoz Industrial Area 3, Dubai', '+971 4 340 5566', 'Software development and data courses.'),
  (565, 'Jebel Ali Auto Service', 'other', 'united arab emirates', 'dubai', '08:00', '20:00', 'Jebel Ali Industrial Area, Dubai', '+971 4 883 1290', 'Car service, inspections and body repair.'),
  (566, 'Al Barsha Family Clinic', 'clinics', 'united arab emirates', 'dubai', '08:00', '23:00', 'Al Barsha 1, Dubai', '+971 4 341 9023', 'Family medicine, pediatrics and vaccinations.'),
  (567, 'Yas Gym and Sports Club', 'other', 'united arab emirates', 'abu dhabi', '06:00', '23:00', 'Yas Island, Abu Dhabi', '+971 2 556 1800', 'Gym, swimming pool and sports coaching.'),
  (568, 'Abu Dhabi Traffic and Licensing Center', 'government_offices', 'united arab emirates', 'abu dhabi', '08:00', '15:00', 'Mussafah, Abu Dhabi', '800 5000', 'Driving licenses, vehicle registration and fines.'),
  (569, 'Corniche Dental and Ortho', 'clinics', 'united arab emirates', 'abu dhabi', '09:00', '21:00', 'Corniche Road, Abu Dhabi', '+971 2 627 4318', 'Dental check-ups, braces and cosmetic dentistry.'),
  (570, 'Khalidiya Mobile Store', 'telecom', 'united arab emirates', 'abu dhabi', '10:00', '22:00', 'Khalidiya Street, Abu Dhabi', '+971 2 673 1205', 'Plans, devices and home internet.'),
  (571, 'Abu Dhabi Language Institute', 'edu', 'united arab emirates', 'abu dhabi', '09:00', '20:00', 'Al Nahyan Camp, Abu Dhabi', '+971 2 445 6670', 'English and Arabic language courses.'),
  (572, 'Sharjah Print and Copy', 'other', 'united arab emirates', 'sharjah', '08:30', '20:00', 'Al Majaz, Sharjah', '+971 6 531 2274', 'Printing, copying and binding services.'),
  (573, 'Sharjah Health Center', 'clinics', 'united arab emirates', 'sharjah', '08:00', '22:00', 'Al Taawun St, Sharjah', '+971 6 556 8021', 'General practice and minor procedures.'),
  (574, 'Sharjah Municipality Office - Al Qasimia', 'government_offices', 'united arab emirates', 'sharjah', '08:00', '15:00', 'Al Qasimia, Sharjah', '800 4433', 'Municipal permits and service requests.'),
  (575, 'Al Ain Oasis Kids Club', 'edu', 'united arab emirates', 'al ain', '08:00', '17:00', 'Al Jimi, Al Ain', '+971 3 764 2219', 'Early learning and after-school activities.'),
  (576, 'Al Ain Auto Parts', 'other', 'united arab emirates', 'al ain', '08:00', '21:00', 'Khaldiya, Al Ain', '+971 3 762 9045', 'Spare parts for cars and motorcycles.'),
  (577, 'Ras Al Khaimah Telecom Store', 'telecom', 'united arab emirates', 'ras al khaimah', '10:00', '22:00', 'Al Nakheel Road, Ras Al Khaimah', '+971 7 233 6604', 'Mobile plans and internet.'),
  (578, 'Ajman Bakery House', 'other', 'united arab emirates', 'ajman', '06:30', '22:00', 'Al Nuaimiya, Ajman', '+971 6 743 2290', 'Fresh bread, pastries and cakes.'),

  -- Palestine Companies (579-600)
  (579, 'Bank of Palestine - Rimal', 'banks', 'palestinian territory occupied', 'gaza', '08:30', '14:30', 'Omar Al-Mukhtar St', '+970 8 283 3333', 'Retail banking, SME loans, and currency exchange.'),
  (580, 'Al-Shifa Hospital Outpatient', 'clinics', 'palestinian territory occupied', 'gaza', '00:00', '23:59', 'Al-Rimal, Gaza', '+970 8 282 2222', 'Medical consultations, emergency, and surgical wards.'),
  (581, 'Jawwal Headquarters', 'telecom', 'palestinian territory occupied', 'gaza', '08:00', '18:00', 'Al-Jalaa St, Gaza', '111', 'Mobile services, 3G activation, and corporate sales.'),
  (582, 'Ministry of Interior - Gaza', 'government_offices', 'palestinian territory occupied', 'gaza', '08:00', '14:00', 'Tal Al-Hawa, Gaza', '+970 8 281 1111', 'ID issuance, passport renewals, and travel permits.'),
  (583, 'Islamic University Registration', 'edu', 'palestinian territory occupied', 'gaza', '08:00', '15:00', 'Universities St', '+970 8 284 4444', 'Student affairs, fee payments, and academic advising.'),
  (584, 'Arab Bank - Ramallah', 'banks', 'palestinian territory occupied', 'ramallah', '08:30', '15:00', 'Al-Irsal St, Ramallah', '+970 2 298 2400', 'Premium banking, international transfers, and ATMs.'),
  (585, 'Ramallah Medical Complex', 'clinics', 'palestinian territory occupied', 'ramallah', '08:00', '16:00', 'Qaddoura Camp', '+970 2 298 2222', 'Specialized clinics, maternity ward, and diagnostics.'),
  (586, 'Ooredoo Palestine', 'telecom', 'palestinian territory occupied', 'ramallah', '08:00', '18:00', 'Al-Masyoun', '120', 'Mobile plans, internet solutions, and tech support.'),
  (587, 'Ramallah Municipality', 'government_offices', 'palestinian territory occupied', 'ramallah', '08:00', '14:30', 'Main Square, Ramallah', '+970 2 294 5555', 'Building permits, municipal fees, and urban planning.'),
  (588, 'Birzeit University Student Services', 'edu', 'palestinian territory occupied', 'ramallah', '08:00', '16:00', 'Birzeit Campus', '+970 2 298 2000', 'Course registration, transcripts, and financial aid.'),
  (589, 'Gaza Sea View Pharmacy', 'other', 'palestinian territory occupied', 'gaza', '08:00', '22:00', 'Al-Wehda St, Gaza', '+970 8 282 1190', 'Medicines and health supplies.'),
  (590, 'Gaza Digital Skills Center', 'edu', 'palestinian territory occupied', 'gaza', '09:00', '17:00', 'Al-Rimal, Gaza', '+970 8 283 4415', 'Web design and freelancing courses.'),
  (591, 'Al-Nour Car Wash and Service', 'other', 'palestinian territory occupied', 'gaza', '08:00', '20:00', 'Salah Al-Din St, Gaza', '+970 59 905 3381', 'Car washing and basic maintenance.'),
  (592, 'Gaza Family Clinic', 'clinics', 'palestinian territory occupied', 'gaza', '09:00', '18:00', 'Al-Jalaa St, Gaza', '+970 8 282 7712', 'Family medicine and vaccinations.'),
  (593, 'Ramallah Telecom Store', 'telecom', 'palestinian territory occupied', 'ramallah', '09:00', '21:00', 'Al-Irsal St, Ramallah', '+970 2 298 3366', 'Mobile plans and internet packages.'),
  (594, 'Ramallah Tech Hub', 'edu', 'palestinian territory occupied', 'ramallah', '10:00', '19:00', 'Al-Masyoun, Ramallah', '+970 2 296 1140', 'Coding bootcamps and startup workshops.'),
  (595, 'Al-Bireh Bakery and Sweets', 'other', 'palestinian territory occupied', 'ramallah', '07:00', '22:00', 'Main St, Al-Bireh', '+970 2 240 6683', 'Bread, sweets and traditional pastries.'),
  (596, 'Nablus Eye Center', 'clinics', 'palestinian territory occupied', 'nablus', '09:00', '20:00', 'Rafidia St, Nablus', '+970 9 238 4475', 'Eye exams and cataract consultations.'),
  (597, 'Nablus Municipality Office', 'government_offices', 'palestinian territory occupied', 'nablus', '08:30', '14:30', 'Al-Quds St, Nablus', '+970 9 237 2290', 'Permits, licenses and fee payments.'),
  (598, 'Hebron Handicrafts Shop', 'other', 'palestinian territory occupied', 'hebron', '09:00', '19:00', 'Old City, Hebron', '+970 2 222 5513', 'Handmade ceramics, glass and gifts.'),
  (599, 'Bethlehem Olive Oil Co.', 'other', 'palestinian territory occupied', 'bethlehem', '08:00', '17:00', 'Manger Square area, Bethlehem', '+970 2 277 1134', 'Olive oil, soap and local products.'),
  (600, 'Jenin Public Services Office', 'government_offices', 'palestinian territory occupied', 'jenin', '08:00', '14:00', 'Al-Hurriya St, Jenin', '+970 4 250 3381', 'Civil records and public service requests.');

-- ==================== SmartLine Seed: Providers (1-599) ====================
  INSERT INTO providers (user_id, manager_id, invite_code) VALUES
  (376, 65, 'ZH2F3DPF'),
  (137, 411, 'C39ZU63V'),
  (384, 55, 'LAX9X58S'),
  (755, 77, '4LHTJBXF'),
  (259, 449, 'KNGJJYXB'),
  (258, NULL, 'CM8TGQZL'),
  (897, 334, 'V5EBQ695'),
  (160, 111, 'XKZH92GJ'),
  (574, 96, '7H5VJMCR'),
  (7, 109, '3BAD9VT7'),
  (760, 136, '9RLVX8T6'),
  (866, 386, 'NH34LXAH'),
  (76, 257, 'KNYFJPUY'),
  (414, 241, 'DZ46KEK2'),
  (667, 207, 'MZCB8W9Y'),
  (860, 153, '9BK7CL6A'),
  (235, 58, 'PD3ZZJZG'),
  (473, NULL, '6QUKJGMA'),
  (417, 279, '33YTD7NG'),
  (391, 142, '88WEBQUJ'),
  (446, 196, 'V69VESY5'),
  (771, 256, '2JMPW3FN'),
  (459, 310, '9HMDFVKE'),
  (155, 384, '7DSPJV2Y'),
  (154, 372, 'JVX3G3F9'),
  (514, 293, 'FBDMQM42'),
  (480, 191, '3YMR8VAH'),
  (534, 38, 'RXAP5HB6'),
  (708, 445, 'WHZFQQAT'),
  (515, 14, '9YBDRZP3'),
  (74, 12, 'XZ72ZDUY'),
  (152, 427, 'UV66ZGAM'),
  (119, 438, 'AAC8YWKE'),
  (690, 68, 'S84G2RNK'),
  (856, 11, '8AEXKXKE'),
  (114, 107, 'A8MRG46G'),
  (236, 35, 'ZT2FU5GU'),
  (158, 132, 'L3GJK8LX'),
  (486, 160, 'CZER4DBK'),
  (493, 142, 'XF6AYBPJ'),
  (605, 27, 'Y8NQFNMB'),
  (260, 193, 'UVL99KRX'),
  (543, 361, 'X7CZ79ZW'),
  (563, 64, '9A9UTTTB'),
  (415, 204, '2M645PK6'),
  (454, 323, 'YU53LS6M'),
  (356, 292, 'U5A4FYSV'),
  (197, 16, '7EG4SU5T'),
  (196, 434, 'T65FWLHX'),
  (631, 214, 'HGTG52AQ'),
  (879, 263, 'ZK52Q536'),
  (304, 381, '4NZJWZ6Q'),
  (872, 221, 'CFH6UG4X'),
  (784, 209, 'AMS9L89A'),
  (616, 183, '4ZURPA8U'),
  (243, 370, '235C7NVW'),
  (675, 232, 'VKTHYAME'),
  (72, 390, 'HHJQTRV9'),
  (757, 422, 'QZ5G5D8M'),
  (559, 248, '2AG4QVCZ'),
  (779, 319, '2TZAL73A'),
  (176, 285, 'WS649KB6'),
  (80, 377, 'Z4EQYUWU'),
  (633, 141, 'HL3QLDE5'),
  (60, 352, 'VFV63RPG'),
  (226, 412, 'JADLUAP4'),
  (449, 205, 'F2GNZLLG'),
  (282, 162, 'JXMSFHUS'),
  (96, 277, 'XZG8VFQS'),
  (269, 380, 'BHCGE6BT'),
  (339, 298, 'QPAX9HLN'),
  (583, 258, 'CLAGWW7X'),
  (186, 88, '2H38NE2Q'),
  (645, 307, '4DPERGHD'),
  (849, 91, 'TN322WC5'),
  (91, 277, 'N3VR49KE'),
  (647, 246, 'S92GY547'),
  (603, 399, 'S4HLGRAD'),
  (716, 321, 'CU63AKHP'),
  (48, 161, 'GEJ2RSBX'),
  (837, NULL, 'PXMQEVL6'),
  (118, 349, 'Y326LPK3'),
  (797, 235, 'VP7EZS3S'),
  (732, 300, 'V4ZXDBDL'),
  (795, 189, 'NVGZ2SJV'),
  (700, 61, 'EK9RBTZN'),
  (190, 253, 'PCPM8HTG'),
  (189, 404, 'EBZEW9CR'),
  (530, 120, 'PAAF7XXV'),
  (324, 341, '4V87S44N'),
  (649, 34, 'UM5ES4KN'),
  (206, 315, 'LW44S65U'),
  (321, 433, '3LTGZ4WR'),
  (494, 94, '64K72S9S'),
  (670, 280, '73ZACD76'),
  (363, 206, 'UDTMKP7F'),
  (887, 192, '8CQKEFCX'),
  (553, 289, 'CLVPASWR'),
  (36, 182, 'YVTWG8L8'),
  (257, 28, 'CM9C57JP'),
  (433, 303, 'K3Z89AGK'),
  (644, 100, 'AEBE46TD'),
  (100, 2, 'D4XS8GCV'),
  (646, 342, 'HZNEAUSN'),
  (497, 337, 'HSYZ4WQM'),
  (382, 382, '23AQ2QPT'),
  (388, 143, 'XF5HN7A8'),
  (888, 435, 'ZNRELJ6B'),
  (546, 264, '3WK3VERX'),
  (79, 195, 'C3VATV99'),
  (2, 72, 'MWPQQ5ZJ'),
  (390, 49, 'V52XFA4P'),
  (230, 387, '9AVEFY2G'),
  (140, 177, '3AEYCNMF'),
  (84, 43, 'M7RYHXC9'),
  (800, 313, 'GMBCT2A4'),
  (218, 312, 'B6ANVVFA'),
  (840, 158, 'WVTLLXDU'),
  (425, 32, '7AKU8KT2'),
  (174, 259, 'TVYFMXRQ'),
  (461, 63, 'UWA2UG4R'),
  (626, 213, '7B4KB3SG'),
  (566, 314, 'NXZ4HTE3'),
  (592, 164, '4G7JL8H2'),
  (393, 409, 'GU47RYWG'),
  (637, 256, 'JSEXZCMY'),
  (476, 103, 'XUU4MQ6T'),
  (744, 54, '6YUJZEZB'),
  (173, 218, 'F79NP53N'),
  (731, 274, 'H3QCH33N'),
  (630, 440, 'RV8UQTKJ'),
  (343, 95, '65CNP59S'),
  (315, 62, 'KX5JBWGT'),
  (589, 326, '2BVCS5FD'),
  (352, 85, 'TRKVN9Z8'),
  (143, NULL, 'CHXVELB6'),
  (263, 30, 'DPGUD2U5'),
  (172, 56, 'ZQ4F2PMY'),
  (52, 83, 'KPT3WU9U'),
  (409, 33, 'D33NQMRF'),
  (713, NULL, 'KKE3FMAH'),
  (229, 115, 'E23W9TD8'),
  (141, 227, 'SAN2TYEZ'),
  (561, 273, '8NLH2SYL'),
  (761, 121, 'Q4K6R5PC'),
  (407, 44, 'YN2K7VZW'),
  (588, 101, 'VEW7ACC9'),
  (345, 378, 'SMNLX9VW'),
  (801, 338, 'UM2MH9NS'),
  (238, 122, 'EVZVCQNM'),
  (611, 140, 'MZVEB9FT'),
  (164, 322, 'L7HMS4H8'),
  (685, 104, 'VASPRPPD'),
  (832, 152, 'AYBE2ZPA'),
  (745, 136, '9CA9LZJZ'),
  (538, NULL, 'MH7MTHSR'),
  (508, 424, 'VKZQWXNS'),
  (595, 151, 'WACSMMLB'),
  (689, 68, 'VMQPJUNJ'),
  (624, 287, 'MADN6K54'),
  (680, 406, '4RHSUJTM'),
  (350, 105, 'C5G9554U'),
  (798, 91, 'ZDBZRQDT'),
  (825, 282, '98SSLHDE'),
  (408, 293, '45PH6VW3'),
  (638, 136, '2PVXNZVJ'),
  (340, 187, 'AFAD2VXZ'),
  (278, 376, 'M9UTN66X'),
  (117, 296, 'KT9CZ8N5'),
  (598, 333, '9UBZLFQ2'),
  (536, 135, 'LPY5DHTY'),
  (21, NULL, '5F8HNYHS'),
  (127, 102, 'V695MTNQ'),
  (65, NULL, 'HFHLKNFD'),
  (368, 261, 'GN5XSPNE'),
  (40, 146, 'BGWLMDRG'),
  (18, 269, 'NSEC3VJJ'),
  (843, 5, 'R7RYFKE5'),
  (332, 222, '9CKZ7XLE'),
  (456, 140, '7C8L2566'),
  (570, 226, '7Y3N66V5'),
  (715, 356, '7JFVS7QB'),
  (124, 397, 'YSUAB8ZB'),
  (537, 179, '7TXXKNMB'),
  (467, 75, 'R5NXY87L'),
  (266, 240, 'QCRDXCLF'),
  (312, 360, 'HY8SSYE9'),
  (231, 404, '7SMZYUA3'),
  (824, 10, 'AQQVPB7E'),
  (502, 39, 'XZ8TX7MT'),
  (202, 385, 'USZTS7BH'),
  (501, 163, 'BGZKBJAU'),
  (519, 324, '8RWLJTMU'),
  (472, 272, 'VDMZVAZT'),
  (444, 247, 'TUNFML6G'),
  (17, 21, 'SFAAGT96'),
  (386, 347, 'S3D8EC67'),
  (347, NULL, 'UU6R3XNU'),
  (207, 89, 'SXVL99B7'),
  (451, 119, 'AESK6MZ3'),
  (452, 51, '748EUQ38'),
  (64, NULL, '3QA73DVA'),
  (437, 231, 'YDNMUGNV'),
  (890, 330, '94R3RTBD'),
  (421, 119, 'QB6R52DX'),
  (475, 73, 'G742K8BM'),
  (687, 355, 'DJCJXZDB'),
  (692, 124, '942MN8ZL'),
  (663, 405, '7VKMN8WH'),
  (159, 304, 'V7DNR5RT'),
  (167, 22, '3G3APLN8'),
  (606, 175, '8SQUJ4WZ'),
  (648, 125, 'C9FM6YHG'),
  (620, 173, '5Y5BU8J2'),
  (533, 215, 'E49ZC9KX'),
  (664, 36, '8ULN56LT'),
  (77, 167, 'ETWNRXBF'),
  (806, 432, 'CK8Z8P9H'),
  (457, 204, '69LLZ6G6'),
  (567, 314, '3KTJFS3Z'),
  (418, 26, 'XWEEZXXC'),
  (273, NULL, 'YBBJDNZ7'),
  (816, 197, '7C5435Y3'),
  (701, 216, 'FT5Z9WX5'),
  (210, 21, 'BWT5E6QL'),
  (738, 250, '6PULT7JV'),
  (307, 37, 'SHLR4XU2'),
  (694, 238, 'W3EZ64HG'),
  (535, 38, 'XS6MTGGV'),
  (565, 219, 'D7DLK6ZD'),
  (704, 113, 'YQUPLR6B'),
  (101, 46, 'KSTU8GPN'),
  (310, 33, 'K2BJ23T4'),
  (183, 329, 'BPM3CYYG'),
  (247, 76, 'YMPX85DQ'),
  (244, 311, 'Q3UGMVJM'),
  (69, 90, 'FLNK4LN6'),
  (349, 335, 'JESLYV2U'),
  (6, 375, '3CCRKFYN'),
  (531, 97, 'KBTSSALD'),
  (371, 446, 'TLL99YLN'),
  (403, 150, 'UDWV6ZTF'),
  (373, 169, 'ZZVG6J38'),
  (717, 436, 'TSW6KA4M'),
  (27, 351, 'W9QG5TRK'),
  (759, 42, 'GS9Q8NXJ'),
  (327, 99, 'P2FVTQJ7'),
  (891, 365, 'ZM8CBDBM'),
  (406, 289, 'YL7MW3ER'),
  (651, 232, 'HGPJK6GR'),
  (29, 29, 'F6AS2N2G'),
  (792, 281, 'TFDP9K44'),
  (337, 268, '8W732X4F'),
  (392, 70, '3H86L7X7'),
  (168, 391, 'F8N6YBE8'),
  (683, 294, '76ZR4CXU'),
  (752, 31, 'LNQVLWXH'),
  (115, 417, 'SLXM265J'),
  (893, 284, '52V36P7T'),
  (615, 201, 'EV5QM44F'),
  (49, 394, 'G2M3LVP4'),
  (722, 220, '3BUCARYF'),
  (855, 152, 'DVLWXYEF'),
  (405, 418, 'TCJXN3SG'),
  (776, NULL, 'DQAKKGVG'),
  (612, 41, 'B366FLM2'),
  (198, 413, 'J7TUH27C'),
  (255, 118, 'UKVMYCK7'),
  (372, 416, 'H4EMR244'),
  (477, 402, '8XSPUET2'),
  (668, 395, 'AQJZSJ2Y'),
  (799, 176, '9E3PYDQY'),
  (817, 60, '5QCS8ZPU'),
  (828, 281, 'UFENPMSF'),
  (551, 270, 'L944BJFU'),
  (455, 140, 'F3PRP7XK'),
  (485, 172, 'KQ53WXWC'),
  (285, 173, 'UNUJ9H89'),
  (602, 224, 'VBRUX2VK'),
  (511, 383, '7C6CPYNU'),
  (129, 243, 'GZRV26L7'),
  (309, 164, 'E7ZSVETH'),
  (325, 39, '9Y5HZTR5'),
  (113, 50, 'WJXQ3U9Y'),
  (308, 401, 'DQUHBC3N'),
  (754, 20, 'EWL47X9J'),
  (292, 101, 'XRMDBGUL'),
  (61, 390, 'P6N26T7U'),
  (468, 210, 'B7P8V9DT'),
  (600, 52, 'CQJ7RTMU'),
  (794, 198, '3VZLR6Y7'),
  (886, 398, '5YMZTTTW'),
  (541, 289, 'PTYGM86V'),
  (756, 79, '6TPZCUFK'),
  (682, 108, 'ND9PMY84'),
  (246, 9, 'XXMFEPZU'),
  (35, 426, 'RFJMQG6S'),
  (220, 82, '9666SGQQ'),
  (871, 230, '6K5J3AXR'),
  (39, 421, '6JFPWR6B'),
  (587, 140, 'MR7L9LJH'),
  (766, 321, 'BLLTQ55U'),
  (698, 328, '9FJMS9B6'),
  (400, 354, 'RT6NVVY2'),
  (83, 43, 'T86UYFZW'),
  (281, 305, 'JL2U5NFZ'),
  (573, 174, '3NJP6XMY'),
  (252, 185, 'VRCZWAB8'),
  (878, 309, 'C9H22KMA'),
  (82, 50, 'G7DLZZPE'),
  (323, 272, 'SXDSR6GW'),
  (712, 170, 'EK9T8LF2'),
  (582, 57, 'DCEFBAEV'),
  (411, 147, 'CHR5SDZS'),
  (419, 119, '8EBES8M3'),
  (773, 317, 'WXD78XMQ'),
  (571, 373, 'R8F6QRZC'),
  (15, 66, '6N4FX53N'),
  (348, 130, '9H83NCKF'),
  (262, 302, 'B78VP29Z'),
  (524, 353, 'LWXY6FA9'),
  (487, 316, 'R5SARAT6'),
  (785, 308, 'FZ2QLATE'),
  (839, 176, '8AC3ECGW'),
  (367, NULL, 'LPM8UKL4'),
  (505, 388, 'N8FAL9Y9'),
  (428, 64, 'RMJLM8TX'),
  (517, 18, 'APNSX2PQ'),
  (265, 425, 'QN663RDK'),
  (496, 134, 'JH2BDHTJ'),
  (178, 285, 'BU5RS936'),
  (290, 374, 'F7NQMX4L'),
  (875, 330, 'BV3GQKPR'),
  (725, 3, '5M7DS2G8'),
  (55, 116, 'NDLSXM7S'),
  (676, NULL, 'X32P8M9N'),
  (204, 306, 'MRQYYXRU'),
  (736, 74, 'CRELTPN4'),
  (822, NULL, 'QAWUKDKR'),
  (394, 70, 'DNR84K9Y'),
  (329, 172, 'FC8CNTUP'),
  (423, 288, 'MPHQM9BV'),
  (867, 262, 'FUJCVAK2'),
  (195, 69, 'J73DLP9L'),
  (819, 234, 'SGD87U8K'),
  (735, 67, 'BDES89SV'),
  (151, 438, 'S75SNNEQ'),
  (94, 199, 'YZK9KD2W'),
  (471, 165, 'F6QLHNDK'),
  (24, 29, 'SHB9KVGK'),
  (20, 21, 'LL7R64KZ'),
  (880, 263, 'A58C9KTR'),
  (859, 345, 'U8FLSR47'),
  (81, 295, 'F9CJMY67'),
  (54, 363, 'QGADW2WB'),
  (223, NULL, 'NXKKXWR8'),
  (881, 437, 'ES2ZPJQD'),
  (9, 109, 'Q7T7TVCL'),
  (532, 120, 'M3VLYTYP'),
  (375, 290, '9KC3CU38'),
  (807, 320, 'CXXJ6AKH'),
  (429, 442, 'RUGJ6622'),
  (483, 407, 'SP236AAG'),
  (804, 429, 'EG3PAY2E'),
  (16, 346, 'SHD7Y9DY'),
  (267, 168, '8MQWU4PX'),
  (232, 297, 'T2HKQD2X'),
  (120, 17, 'WKPCY73S'),
  (720, 113, 'J56CAT79'),
  (156, 443, 'P3Y66V2Z'),
  (764, 225, 'TW83K583'),
  (894, 234, 'QXWX64KG'),
  (237, NULL, 'QHX3RXVB'),
  (424, 289, 'E58FGX8M'),
  (346, 84, 'LNGUTXFR'),
  (873, 367, 'FXMCQ842'),
  (442, 174, 'UBJ7XKR3'),
  (796, 235, 'DUDE7UQH'),
  (264, 129, 'U9EQ29YV'),
  (334, 339, 'WPFYX7DH'),
  (810, 393, 'P7E24PWD'),
  (366, 301, 'MLR2TGMG'),
  (380, 291, '252DW4CS'),
  (136, 271, '6FME389L'),
  (192, 450, 'AVNAXZHB'),
  (623, 200, '9MWN7PVX'),
  (111, 194, '266ZBSK3'),
  (30, 223, 'UAW83ZQR'),
  (665, 203, 'VXNYSSC5'),
  (224, 434, 'F5AGP9HL'),
  (341, 173, 'T6Z4362U'),
  (528, 117, 'RQ8PCHAM'),
  (688, 357, 'LCDBL7HZ'),
  (147, 283, 'KK38H974'),
  (56, 318, 'TEESULJN'),
  (484, 268, 'DGJBN2LF'),
  (3, 144, 'PK6BL46Q'),
  (844, 166, 'WX9G8FBL'),
  (548, 154, 'HY6SFUCG'),
  (73, NULL, 'CJH6U2XK'),
  (256, 123, 'TB2J3NRU'),
  (279, 48, 'N6S3SCK2'),
  (608, 4, 'EF85YA4C'),
  (681, 371, '5PHY9MDE'),
  (653, 100, 'M4ULRPXA'),
  (270, 333, 'DEJ7PMSY'),
  (214, 233, 'KXWXSCZL'),
  (374, NULL, 'UTMT2DLY'),
  (518, 217, 'G9M6KNCR'),
  (360, 374, 'T4T2XWE5'),
  (268, 380, '2UXHC6CE'),
  (758, 121, 'MMNM5JC4'),
  (549, 424, 'CCJNX3YS'),
  (222, 81, 'PXY4UV8N'),
  (134, 421, 'PL548Y3M'),
  (885, NULL, 'AGG3WPHN'),
  (547, 441, 'KWZZNYKN'),
  (131, 239, 'E5UT7WY5'),
  (426, 86, 'ZD5KHVEN'),
  (126, 251, '2DYHW5S3'),
  (245, 392, 'S25NBPZG'),
  (618, 183, 'KUVW264C'),
  (463, 172, 'XAKSCEJX'),
  (702, 350, 'LD7CANFG'),
  (821, 138, 'MXXMZFBR'),
  (509, 181, 'Y4XGPYWM'),
  (772, 237, 'TVMY3QUR'),
  (827, NULL, 'MD2V488T'),
  (660, NULL, 'XFM7UR5P'),
  (555, 264, 'JSTDV5FL'),
  (99, 8, 'MYPGX5PZ'),
  (274, 252, '7P2JHEKN'),
  (580, 254, '79Y3W9GT'),
  (781, 415, 'X96WY7GE'),
  (87, 377, 'HHGKSS2D'),
  (469, 226, 'TXKCJFA6'),
  (221, 297, 'WWCT3RY2'),
  (239, 6, 'ZLEUFULE'),
  (75, NULL, 'EQ28XR9Z'),
  (597, 106, 'DKM6ZSRG'),
  (86, 423, 'A9ZLPCQC'),
  (478, 278, '5TPRJYEN'),
  (234, 267, 'SN4A54M4'),
  (488, 292, 'G6B6JNPE'),
  (846, 439, 'XYQ3U7EK'),
  (22, 306, 'QG4NGNRX'),
  (89, NULL, 'B4449XPZ'),
  (481, 388, 'SH73X67L'),
  (217, 81, '8UZ365NZ'),
  (847, 400, 'DB57P27M'),
  (815, 189, 'PHSPGULU'),
  (458, 80, 'XGUXRM79'),
  (556, 366, '35AFQNCF'),
  (401, 156, 'YSHWRCLN'),
  (762, 414, 'U5HN238Z'),
  (777, 444, 'Z4485NU8'),
  (643, 280, 'HVA484GH'),
  (526, 353, 'N6C35RK9'),
  (863, 158, 'Y5MJXZUS'),
  (882, 234, '35VEN4BC'),
  (351, 431, '85Y6S9FG'),
  (98, 184, 'HGXQ4Q5U'),
  (727, 180, '2P5JS57V'),
  (19, 21, 'PK5W2XN5'),
  (614, NULL, 'HP2DXA9E'),
  (564, 1, 'VY9R9N9E'),
  (803, 178, 'NK4AVDVH'),
  (634, 71, 'RL9VT37T'),
  (11, NULL, 'EPEZH8AU'),
  (465, 75, 'KY7MVLB8'),
  (287, 37, '5BAYL2GL'),
  (215, 266, '2HNWGADA'),
  (402, 114, '8QNLNKWN'),
  (706, 340, 'KVZEEZSN'),
  (276, 287, 'V62GZ3DJ'),
  (104, 249, 'NNTP37U6'),
  (95, 15, '6EQRGWVD'),
  (492, 449, '5XZMUPVJ'),
  (314, 229, 'HCNGCM9N'),
  (728, 13, 'JHLHM2XN'),
  (877, 149, 'FBULL5PA'),
  (607, 25, 'DQ9L6UVM'),
  (629, 403, 'LPZB85TB'),
  (691, 67, 'K9Z5H6BA'),
  (361, 37, 'K3GA4U8J'),
  (211, 188, 'PQDZ7FMH'),
  (740, 45, '7Z4TZ428'),
  (869, 299, '53W5ZR5T'),
  (710, 53, 'YLWB8UPB'),
  (585, 255, 'BHL3F9AJ'),
  (306, 447, 'ZVZDVH57'),
  (753, 108, '8VRLJ9AZ'),
  (412, 265, 'DQA6YMST'),
  (50, 286, 'AFGGPCAG'),
  (590, 409, '3N8X3NPR'),
  (686, 448, '9BXNR7X2'),
  (723, 225, 'SKMXF9VU'),
  (868, 428, '34DCUBZU'),
  (1, 109, 'X6AXTHVZ'),
  (714, 321, 'JWBZB8WE'),
  (208, 87, 'JZ8L62C9'),
  (453, 323, 'JRPEZ2SH'),
  (92, 242, 'LCGVSSCG'),
  (527, 128, '3AERJV7W'),
  (901, 24, 'J4W6E4HT'),
  (180, 363, 'XRN5G53J'),
  (786, 437, 'GCP6TUW6'),
  (572, 419, 'Z3JQC8WF'),
  (97, 157, 'AARTA9YX'),
  (313, 275, 'H7G8SY2J'),
  (609, 332, '99CQ587M'),
  (780, 176, 'SNEDY49B'),
  (439, 211, 'STGMH2YB'),
  (632, 159, 'QJR4BEAT'),
  (699, 359, 'WX68M8XC'),
  (26, NULL, '5L7KYZYA'),
  (658, 126, 'KXPKPGBA'),
  (489, 373, '8CUNKEGC'),
  (148, 283, 'VVB637GB'),
  (656, 137, '9SH58R2W'),
  (288, 325, '6MEZ2EML'),
  (575, 112, 'ZV52DCMA'),
  (820, 145, 'LPJLT8UH'),
  (516, 410, 'XFPS6U5K'),
  (560, 212, 'QNWHNCRZ'),
  (788, 202, 'BCJJNGMU'),
  (610, 4, '8RM9V3BU'),
  (601, 254, '679SZRML'),
  (669, 93, 'T6BZERV4'),
  (389, 49, 'KESFMLVP'),
  (90, 269, '6MJ27H9T'),
  (440, 208, 'VPC3JGFT'),
  (677, 98, 'D2YSB5BA'),
  (719, 280, 'E6E6388V'),
  (381, 23, '7WMVQVUD'),
  (303, 447, 'W94S9SQN'),
  (431, 215, 'YVZWAVMP'),
  (673, 343, 'ZNAFPR4Z'),
  (770, 445, 'FSS3UQUC'),
  (813, 408, 'FLRKB7UL'),
  (436, 241, 'ZN4KB4Y5'),
  (695, 358, 'HTCYXUQ9'),
  (301, 33, '4C4XXXPY'),
  (466, 92, 'H7N8M9HW'),
  (642, 348, '7RCKTG6C'),
  (657, NULL, 'VAD39UM8'),
  (227, 260, 'W3XDM7JN'),
  (110, 40, 'BEAZAQXX'),
  (320, 110, '8J6AKCBY'),
  (23, NULL, 'XKHJ6PMR'),
  (294, 205, 'LL82VU2S'),
  (249, 244, 'SLMTVK2G'),
  (57, 318, '7NJ9W4BL'),
  (671, 389, '5HTGTFT7'),
  (359, 171, 'MC2MU88V'),
  (128, 239, 'FTQB6RDQ'),
  (841, 148, 'X2SVH74G'),
  (59, 190, '4URVCS2F'),
  (145, 155, 'UWGZ23QB'),
  (413, 362, 'ZGHG6SV7'),
  (311, 275, 'ZLQADJAG'),
  (102, 336, 'X72HX7T5'),
  (861, 369, 'M7RHYXXD'),
  (344, 131, '7BWVBXTK'),
  (34, 379, 'V54B6TXL'),
  (387, 424, '9E37JSQY'),
  (153, 427, 'YW6C75NL'),
  (354, 211, 'XZPZAASZ'),
  (545, 264, 'PW7FGFRY'),
  (253, 368, 'TP4YYQV7'),
  (586, 327, 'DS9PZ8U3'),
  (783, 299, 'WGJ8LE4B'),
  (41, 430, 'C5TV2K55'),
  (38, 218, 'QUWLFVGT'),
  (133, 19, 'U6A3KYL9'),
  (342, 181, 'W58PW6T5'),
  (876, 367, 'F2A3UM6F'),
  (385, 290, 'G597HZDX'),
  (507, 59, 'PZKXHUPA'),
  (491, 270, 'A8D6XNRM'),
  (150, 139, '8627DZTM'),
  (336, 331, '2S7KU89X'),
  (659, 245, 'VRR9AU96'),
  (696, 396, 'C34X6D7X'),
  (125, 78, '2LT9RJD3'),
  (808, 393, '5EC5B5KT'),
  (613, 7, '6PA7GP6V'),
  (299, 420, 'PPEUNRYG'),
  (298, 228, 'W7WZGMDW'),
  (14, 346, 'UKL85SDZ'),
  (504, 442, 'WA9QF893'),
  (743, 133, 'UKKX8RE6'),
  (353, NULL, 'C3L3Z9A8'),
  (853, 364, 'F7XAFLK7'),
  (474, 276, 'DPW9LV67'),
  (852, 186, 'K8285PY4'),
  (835, 344, 'SBUNL97X'),
  (578, 47, 'VXHB4D4A'),
  (495, 236, 'YUXBPP4H');

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

-- ==================== Focus fix: Egypt company 19 (manager user 127) ====================
  UPDATE companies
  SET description = 'Main Luxor branch: new lines, plan upgrades, recharge, router setup and customer care for locals and visitors.',
      opening_time = '09:00',
      closing_time = '21:00'
  WHERE id = 19;

  -- Key provider of company 19 (user 729), only if not already a provider
  INSERT INTO providers (user_id, manager_id, invite_code, created_at)
  SELECT 729, m.id, 'K3WX7RQ9', datetime(u.created_at, '+60 days')
  FROM managers m, users u
  WHERE m.user_id = 127 AND u.id = 729
    AND NOT EXISTS (SELECT 1 FROM providers WHERE user_id = 729);

-- ==================== SmartLine Seed: providers from new users (904-1653) ====================
  WITH RECURSIVE n(x) AS (
    SELECT 904
    UNION ALL
    SELECT x + 1 FROM n WHERE x < 1653
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

      -- Saudi Arabia (30)
      SELECT 1209 UNION ALL
      SELECT 1210 UNION ALL
      SELECT 1211 UNION ALL
      SELECT 1212 UNION ALL
      SELECT 1213 UNION ALL
      SELECT 1214 UNION ALL
      SELECT 1215 UNION ALL
      SELECT 1216 UNION ALL
      SELECT 1253 UNION ALL
      SELECT 1254 UNION ALL
      SELECT 1255 UNION ALL
      SELECT 1256 UNION ALL
      SELECT 1257 UNION ALL
      SELECT 1258 UNION ALL
      SELECT 1302 UNION ALL
      SELECT 1303 UNION ALL
      SELECT 1304 UNION ALL
      SELECT 1305 UNION ALL
      SELECT 1316 UNION ALL
      SELECT 1317 UNION ALL
      SELECT 1318 UNION ALL
      SELECT 1278 UNION ALL
      SELECT 1279 UNION ALL
      SELECT 1290 UNION ALL
      SELECT 1291 UNION ALL
      SELECT 1335 UNION ALL
      SELECT 1336 UNION ALL
      SELECT 1348 UNION ALL
      SELECT 1353 UNION ALL
      SELECT 1342 UNION ALL

      -- UAE (18)
      SELECT 1408 UNION ALL
      SELECT 1409 UNION ALL
      SELECT 1410 UNION ALL
      SELECT 1411 UNION ALL
      SELECT 1412 UNION ALL
      SELECT 1413 UNION ALL
      SELECT 1460 UNION ALL
      SELECT 1461 UNION ALL
      SELECT 1462 UNION ALL
      SELECT 1463 UNION ALL
      SELECT 1464 UNION ALL
      SELECT 1486 UNION ALL
      SELECT 1487 UNION ALL
      SELECT 1488 UNION ALL
      SELECT 1520 UNION ALL
      SELECT 1521 UNION ALL
      SELECT 1530 UNION ALL
      SELECT 1510 UNION ALL

      -- Palestine (12)
      SELECT 1557 UNION ALL
      SELECT 1558 UNION ALL
      SELECT 1559 UNION ALL
      SELECT 1560 UNION ALL
      SELECT 1579 UNION ALL
      SELECT 1580 UNION ALL
      SELECT 1581 UNION ALL
      SELECT 1586 UNION ALL
      SELECT 1587 UNION ALL
      SELECT 1598 UNION ALL
      SELECT 1622 UNION ALL
      SELECT 1628 UNION ALL

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
      SELECT 1209 UNION ALL
      SELECT 1214 UNION ALL
      SELECT 1258 UNION ALL
      SELECT 1461 UNION ALL
      SELECT 1579 UNION ALL
      SELECT 1408 UNION ALL
      SELECT 1409 UNION ALL
      SELECT 1463 UNION ALL
      SELECT 1557 UNION ALL
      SELECT 1560 UNION ALL
      SELECT 1413 UNION ALL
      SELECT 1462 UNION ALL
      SELECT 1487 UNION ALL
      SELECT 1303 UNION ALL
      SELECT 1304 UNION ALL
      SELECT 1210
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
      -- مدة الطابور: ساعة لتلات ساعات، ومحدودة بنهاية الشيفت
      MIN(60 + ABS(RANDOM()) % 180, span - mm) AS life,
      -- وقت البداية: لا قبل تاريخ البروفايدر، ولا بعد السقف
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
  WHERE id NOT IN (63, 840, 455, 627, 727, 529, 537, 534);

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
  INSERT INTO _hid (uid) VALUES (63), (840), (455), (627), (727), (529), (537), (534);

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
  WHERE user_id IN (127, 527, 539, 534, 563, 840, 454, 635)
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
  WHERE m.user_id IN (127, 537);

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
    AND u.id NOT IN (63, 840, 454, 635, 127, 537, 729, 534);

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
  WHERE id IN (63, 840, 454, 635, 127, 537, 729, 534)
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
  WHERE u.id IN (63, 840, 454, 635);

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

