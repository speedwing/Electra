# Electra

<p align="center">
    <img src="https://electraproject.org/wp-content/uploads/2017/10/256-200x200.png"
        height="130">
</p>
<p align="center">
 <a href="https://www.reddit.com/r/Electra_Currency/">
        <img src="https://img.shields.io/badge/join%20us%20on-reddit-orange.svg"
            alt="join us on Reddit"></a>
    <a href="https://discordapp.com/invite/8kuM2Qw">
        <img src="https://img.shields.io/discord/308323056592486420.svg"
            alt="chat on Discord"></a>
    <a href="https://twitter.com/intent/follow?screen_name=ElectracoinECA">
        <img src="https://img.shields.io/twitter/follow/espadrine.svg?style=social&label=Follow"
            alt="follow on Twitter"></a>
</p>

### Mission
Leverage blockchain technology and assist users for fast and secure transactions.
We believe Blockchain is the future for many purposes such as data storage, payments and operations. Integration of Blockchain for our daily use leads to higher efficiency in applications.

### Fast, Today
Time is one of the key elements in our lives. Especially when it comes to financial transactions, lack of existing money transaction speed, companies or individual users are facing delays. This leads to a slowdown in activities. Electra offers a solution to cover such bad processes. Time is money, money is Electra.

### Safe & Anonymous
Security is another very important point on which today's world stands. By using Electra you can make secure payments be done, which gives confidence to the community.

### Decentralized, Distributed
Applications are the future need for higher efficiency and cost reduction. Electra is your solution for decentralized Payments.

### Efficiency
Electra uses the NIST5 hash, which is chosen as the winning algorithm by the US Nation of Science competition. Combination of security and mining efficiency were the key points taken into account.

# What is Electra?
Electra is a blockchain using the highly-secure and power efficient NIST5 algorithm. Combining temporary Proof-of-Work with high Proof-of-Stake, the Electra coin (ECA) is unique in its distribution. On June 16, 2017, Electra entered "Super Rewards Bonanza" stage for 24 hours (Blocks 11522-11810). During this time, 95% of the proof-of-work coins were mined. At block 11811, Electra swapped to Proof-of-Stake with an annual interest rate of 50% until the Electra supply reaches 30bil. Once 30bil ECA is reached, block rewards will be earned through transaction fees only. This created a gold-rush period, promoting the network (or was hoped to) and rapidly increasing the amount of ECA.

# Why NIST5?
Electra chose to use NIST5 as its hashing algorithm because it has been proven to be more secure and power efficient than other leading algorithms. NIST5 is a combination of the finalists and winner of the US National Institute of Standards and Technology Hash Function Competition(specifically BLAKE, Grøstl, JH, Keccak/SHA-3, and Skein. NIST5 was created fairly recently, and immediately saw use by other coins, but failed to see mainstream adoption.

## Containerization

In this paragraph you will find guidelines on how to build and run an `Electra` with [Docker](https://www.docker.com/).

### Building an Electra docker image

In order to build an `Electra` docker image you can issue the following command:

```bash
docker build -t electracoin/electra:headless .
```  

### Running Electra with docker

> In this paragraph is assumed you have a docker up and running on the host you want to run `Electra` on. If you don't please follow: [get-docker](https://www.docker.com/get-docker).

The `Electra` team will periodically release `Electra` docker images on the [Electra docker hub](https://hub.docker.com/r/electracoin/electra/).

You can download and run a docker `Electra` image with the following commands:

```bash
docker pull electracoin/electra:headless
docker run -d -v ~/.Electra:/root/.Electra -p 5788:5788 electracoin/electra:headless
```  

Please note that in order to run the example above you will require an `Electra.conf` in the folder `~/.Electra`. You can copy the `Electra.conf` available in this
repository and ensure that there is no `daemon=1` line as this will cause docker to exit immediately.

If you want to run the latest and greatest `Electra` you will have to build the docker image following instructions as per previous paragraph and then run the image. E.g.

```bash
docker build -t electracoin/electra:headless .
docker run -d -v ~/.Electra:/root/.Electra -p 5788:5788 electracoin/electra:headless
```

