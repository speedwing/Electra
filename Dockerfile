FROM electracoin/electra-builder:latest as builder

COPY --chown=ecadev ./ /home/ecadev/Electra/
WORKDIR /home/ecadev/Electra
RUN qmake GUI=0; make -j3

FROM electracoin/electra-runner:latest

COPY --from=builder /home/ecadev/Electra/src/Electra-qt /root/Electra-qt

ENTRYPOINT ["/root/Electra-qt"]
