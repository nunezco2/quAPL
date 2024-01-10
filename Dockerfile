# Use the dyalog/dyalog base image

FROM dyalog/dyalog

ARG DYALOG_RELEASE=18.2

USER root

# Create the MyUCMDs directory in the dyalog user's home directory
# We need this to be able to use the latest version of the ]DTest
# framework
RUN mkdir -p /home/dyalog/MyUCMDs

RUN chmod 777 /home/dyalog/MyUCMDs && chown dyalog:dyalog /home/dyalog/MyUCMDs

# Create the directories for src and tests.
# We stipulate that the /src directory will contain the code we're testing, 
# which will be ]linked into the # namespace. Our tests will live in the /test
# directory
RUN mkdir /src /tests

RUN chown dyalog:dyalog /src /tests

# We have a custom entrypoint script that relies on the LOAD variable being set.
COPY entrypoint.sh /entrypoint
RUN chmod +x /entrypoint

# Expand release template in the entrypoint
RUN sed -i "s/{{DYALOG_RELEASE}}/${DYALOG_RELEASE}/" /entrypoint

# Switch back to the dyalog user
USER dyalog

# Set the LOAD environment variable: this tells the interpreter which
# directory contains our code under test.
ENV LOAD "/src"

ENTRYPOINT ["/entrypoint"]