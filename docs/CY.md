# Testun i Leferydd Prifysgol Bangor

<!-- ABOUT THE PROJECT -->
## Ynglŷn â'r Project
<span id="about"></span>

Mae'r storfa (repo) hon yn cynnwys y gweinydd lleol, cod agored, sydd y tu ôl i https://tts.techiaith.cymru, ynghŷd â fersiwn cychwynnol o'n modelau Testun i Leferydd diweddaraf.

Ar hyn o bryd mae un llais ar gael, ond bwriadwn ehangu'r nifer o leisiau wrth i fwy o ddata gael ei ryddhau. Dewch yn ôl am ragor o wybodaeth yn gyson gan y bydd angen i chi ailadeiladu delwedd docker unwaith y bydd y lleisiau newydd ar gael.

<!-- GETTING STARTED -->
## Cychwyn Arni

I gael copi lleol ar waith dilynwch y camau hyn.

### Rhagofynion

* [docker](https://docker.com)
* [docker-compose](https://docs.docker.com/compose/install/)

Mae Docker-compose bellach yn cael ei gludo gyda DockerDesktop ynghlwm, fodd bynnag os nad yw'r ategyn docker-compose ar gael yn eich gosodiad yna dilynwch y cyfarwyddiadau gosod.

### Gosod

1. Cloniwch y storfa

   ```sh
   git clone https://github.com/techiaith/docker-coqui-tts-cy.git
   ```
2. Adeiladwch a rhedwch ddelwedd docker

   ```sh
   docker compose up -d --build
   ```   
3. Er mwyn osgoi ailadeiladu'r cynhwysydd ar gyfer rhediadau dilynol

   ```sh
   docker compose up -d
   ```

Wrth gyflwyno [bygiau/issue](https://github.com/techiaith/docker-coqui-tts-cy/issues) a fyddech cystal â chynnwys eich allbwn log. I symleiddio'r broses o gyflwyno issue, a fyddech cystal â dympio'ch log cyfan a'i atodi i'r issue ynghyd â manylion eich system weithredu a'ch ffurfweddiad caledwedd.
   
   ```sh
   docker compose logs > my-well-named-error.log
   ```

### Ymwadiad


> Ysgrifennwyd y feddalwedd hon yn benodol at redeg o fewn amgylchedd gweinydd debian gyda GPU NVIDIA. Ni ellir, felly, gwarantu y bydd y feddalwedd yn adeiladu'n llwyddiannus ar systemau gweithredu eraill.
> Mae'n bosibl rhedeg y feddalwedd ar CPU ond bydd yr amser rhedeg yn cynyddu'n fawr.
> 
> Mae'r broses adeiladu wedi'i phrofi ar sglodion Intel sy'n rhedeg Ubuntu 20.04 a macOS Monterey 12.5.x.
> 
> Gallwch, fodd bynnag, ymweld â https://tts.techiaith.cymru i roi cynnig ar y feddalwedd. Mae croeso hefyd i chi lenwi [adroddiad bygiau](https://github.com/techiaith/docker-coqui-tts-cy/issues) gydag unrhyw broblemau y dewch ar eu traws.

<!-- USAGE EXAMPLES -->
## Defnydd

I weld yr ap ar waith ewch i https://localhost:5002 a rhowch gynnig arni!

[![Product Name Screen Shot][product-screenshot]](https://trawsgrifiwr.techiaith.cymru)

Trwy deipio yn y blwch a chlicio ar y swigen siarad gallwch glywed ein llais testun i leferydd niwral cyntaf.

[![Product Name Screen Shot][product-screenshot-2]](https://trawsgrifiwr.techiaith.cymru)

Unwaith y bydd y sain wedi'i chynhyrchu dylai chwarae'n awtomatig, fodd bynnag gall gosodiadau porwr olygu y bydd angen i chi wasgu'r botwm chwarae er mwyn clywed y llais.

Mae’r lleisiau’n ddwyieithog ac o’r herwydd gallwch roi testun Cymraeg, Saesneg neu gymysg i mewn, dylid nodi, fodd bynnag, ei bod yn anoddach i'r llais ynganu lleferydd anffurfiol neu leferydd sydd wedi ei gam-ffurfio.

### Creu ffeil sain leol

Unwaith y byddwch wedi adeiladu'r cynhwysydd bydd ffolder newydd, o'r enw 'exports', yn cael ei chreu yng nghyfeiriadur gwraidd (root) yr ystorfa.Bydd hyn yn caniatáu ichi greu ffeil [WAV](https://docs.fileformat.com/audio/wav/) leol, trwy weithredu'r gorchymyn isod. Bydd yr allbwn wedyn yn cael ei gadw yn y ffolder 'exports'.

Rhoddir enw ar hap i'r ffeiliau sy'n cael eu hallforio ac felly dylech ddidoli cynnwys y ffolder allforio yn ôl dyddiad er mwyn gweld y ffeiliau mwyaf newydd yn hawdd.  Ar ôl eu hallforio gallwch ailenwi'r ffeiliau gan roi enw mwy cyfleus iddynt os dymunwch.

```sh
docker compose run web python uti_speech.py "Gymrodd dipyn o amser i mi ddatblygu llais, a nawr mae gen i, nid wyf am gadw yn dawel"
```

<!-- ROADMAP -->
## Map ffordd

- [ ] Ychwanegu lleisiau wedi'u recordio'n broffesiynol
  - [X] Benyw Ddeheuol
  - [ ] Benyw Ogleddol
  - [ ] Gwryw Deheuol
  - [ ] Gwryw Gogleddol
- [ ] Ychwanegu cyfranwyr amatur
  - [ ] Benyw Ogleddol
  - [ ] Gwryw Deheuol
  - [ ] Gwryw Gogleddol
- [ ] Diweddaru'r UI i ymgorffori dewis llais

Gweler yr [issues agored](https://github.com/techiaith/docker-coqui-tts-cy/issues) am restr lawn o nodweddion arfaethedig (a materion hysbys).

<!-- CONTRIBUTING -->
## Cyfrannu

Cyfraniadau yw'r hyn sy'n gwneud y gymuned ffynhonnell agored yn lle mor anhygoel i ddysgu, ysbrydoli a chreu. 
Bydd unrhyw gyfraniadau a wnewch yn cael eu **gwerthfawrogi'n fawr**.

Os oes gennych awgrym a fyddai'n gwneud yr adnodd hwn yn well, fforchiwch y storfa a chrëwch pull request.
Gallwch hefyd agor issue gyda'r tag "enhancement".
Peidiwch ag anghofio rhoi seren i'r prosiect! Diolch eto!

1. Creu Fforch
2. Creu eich Cangen Nodweddion (Feature Branch) (`git checkout -b feature/AmazingFeature`)
3. Cyflwyno (Commit) eich Newidiadau (`git commit -m 'Add some AmazingFeature'`)
4. Gwthio (Push) i’r gangen (`git push origin feature/AmazingFeature`)
5. Agor Pull Request

<!-- LICENSE -->
## Trwydded

Wedi'i ddosbarthu dan Drwydded MIT. Gweler `LICENSE.txt` am ragor o wybodaeth.

<!-- CONTACT -->
## Cysylltu

Techiaith - [@techiaith](https://twitter.com/techiaith) - techiaith@bangor.ac.uk - [techiaith.cymru](http://techiaith.cymru)

Project Link: [https://github.com/techiaith/docker-coqui-tts-cy](https://github.com/techiaith/docker-coqui-tts-cy)
 
<!-- ACKNOWLEDGMENTS -->
## Cydnabyddiaeth a diolchiadau

<img src="images/llyw_logo.png" alt="Logo" align="left">
<img src="images/BU_logo.png" alt="Logo" align="right">
<br><br><br><br><br>
Diolchwn i Lywodraeth Cymru am ariannu’r gwaith hwn fel rhan o brosiect Technoleg Cymraeg 2021-22.

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[product-screenshot]: images/screen_shot_cy.png
[product-screenshot-2]: images/screen_shot_2_cy.png
[warning-screenshot]: images/screen_shot_not_secure.png
[repo-logo]: images/repo_logo.png
[llyw-logo]: images/llyw_logo.png
[uni-logo]: images/BU_logo.png
