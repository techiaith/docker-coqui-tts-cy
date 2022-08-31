# Bangor University Text To Speech

<!-- ABOUT THE PROJECT -->
## About The Project
<span id="about"></span>
This repository is the open-source, locally available server behind https://tts.techiaith.cymru, 
and the initial installment our latest Text To Speech models.

Currently there is one voice available but this will be expanded as we release more data.

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these steps.

### Prerequisites

* [docker](https://docker.com)
* [docker-compose](https://docs.docker.com/compose/install/)

docker compose is now shipped with DockerDesktop, however if the docker compose plugin is not available in your 
installation then follow the install instructions.

### Installation

1. Clone the repo

   ```sh
   git clone https://github.com/techiaith/docker-coqui-tts-cy.git
   ```
2. Build & run the docker image

   ```sh
   docker compose up -d --build
   ```   
3. To avoiding rebuilding the container for subsequent runs

   ```sh
   docker compose up -d
   ```

To submit [bugs/issues](https://github.com/techiaith/docker-coqui-tts-cy/issues) please include your log output. To 
simplify the creating submission of an issue, you can dump your entire log to be attached to an issue where you would
also provide details of your operating system and hardware configuration.
   
   ```sh
   docker compose logs > my-well-named-error.log
   ```

### Disclaimer

> This software was written for the express purpose of running within a debian server environment with access to an
> NVIDIA GPU, as such no guarantees can be made that building will be successful on other operating systems.
> It is possible to run on a CPU however the run time will be greatly increased.
> 
> The build process has been tested on Intel chips running Ubuntu 20.04 & macOS Monterey 12.5.x. 
> 
> You can, however, visit https://tts.techiaith.cymru to try out the software. Please also feel free to fill out a 
> [bug report](https://github.com/techiaith/docker-coqui-tts-cy/issues) with any problems you encounter.

<!-- USAGE EXAMPLES -->
## Usage

To view the app visit https://localhost:5002 and try it out!

[![Product Name Screen Shot][product-screenshot]](https://trawsgrifiwr.techiaith.cymru)

By typing in the box and clicking the speech bubble you can hear our first neural text to speech voice.

[![Product Name Screen Shot][product-screenshot-2]](https://trawsgrifiwr.techiaith.cymru)

Once the audio has been generate it should auto play, however browser settings may mean that you will need to press the
play button in order to hear the voice.

The voices are bilingual and as such you may enter Welsh, English or mixed text, it should be noted however that 
miss-formed and informal speech is harder for the voice to articulate.

### Creating a local sound file

Once you have built the container a new folder 'exports' will be created in the root directory of the repository which  
will allow you to create a local local [WAV](https://docs.fileformat.com/audio/wav/) file, by executing the following 
command. The output will then be saved into the 'exports' folder.

The exported files are given a randomised name and as such you should order the contents of the export folder by date in
order to easily see the newest files.  Once exported you can rename the files to a more convenient name should you wish.

```sh
docker compose run web python uti_speech.py "It took me quite a long time to develop a voice, and now that I have it, I'm not going to be quiet"
```

<!-- ROADMAP -->
## Roadmap

- [ ] Add professionally recorded voices
  - [X] Southern Female
  - [ ] Northern Female
  - [ ] Southern Male
  - [ ] Northern Male
- [ ] Add amateur contributors
  - [ ] Northern Female
  - [ ] Southern Male
  - [ ] Northern Male
- [ ] Update UI to incorporate voice selection

See the [open issues](https://github.com/techiaith/docker-coqui-tts-cy/issues) for a full list of proposed features 
(and known issues).

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. 
Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. 
You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE.txt` for more information.
 
<!-- CONTACT -->
## Contact

Techiaith - [@techiaith](https://twitter.com/techiaith) - techiaith@bangor.ac.uk - [techiaith.cymru](http://techiaith.cymru)

Project Link: [https://github.com/techiaith/docker-coqui-tts-cy](https://github.com/techiaith/docker-coqui-tts-cy)
 
<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

<img src="images/llyw_logo.png" alt="Logo" align="left">
<img src="images/BU_logo.png" alt="Logo" align="right">
<br><br><br><br><br>
We thank the Welsh Government for funding this work as part of the Technoleg Cymraeg 2021-22 project.

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[product-screenshot]: images/screen_shot.png
[product-screenshot-2]: images/screen_shot_2.png
[warning-screenshot]: images/screen_shot_not_secure.png
[repo-logo]: images/repo_logo.png
[llyw-logo]: images/llyw_logo.png
[uni-logo]: images/BU_logo.png
