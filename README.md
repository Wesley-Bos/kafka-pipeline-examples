# kafka-pipeline-examples
**Prerequisites:**
* This project uses Docker and docker-compose. View [this link](https://docs.docker.com/compose/install/) to find out how to install them for your OS.

* Before we begin, we will create a new environment. I use Anacoda to do this but feel free to use any tool of your liking. 
  Activate the environment and install the used libraries by executing the following command:
        
        pip install -r requirements.txt

## [Producing and consuming data to Kafka](https://github.com/Wesley-Bos/kafka-pipeline-examples/tree/master/producer-consumer)
1. Run the docker-compose.yml file:

        docker-compose -f docker-compose.yml up -d
2. Go to [localhost:9021](http://localhost:9021)

3. Click on *Cluster 1* on the left side.
4. Click on *Topics* and create a new topic.
5. Name the topic *logging.numbers* and click on *Create with defaults*.
6. Run the producer.py file:
        
        python producer.py
   In the Control Center click on *Messages*. Now you'll see that the data is being published to this topic.
   To make it easier to view these messages, on the right side; next to *Query in KSQL*, click on *cards*.

7. Now let's set up out consumer by running the consumer.py file:

        python consumer.py
   In the terminal you'll see every message that the producer has published so far since we configured
   *auto_offset_reset='earliest'*. If this setting is configured as *auto_offset_reset='latest'*, then we'll see the lattest message that is send by the producer.
   
8. In the Control Center click on *Consumers* on the left side. Under *Consumer group ID* there is a *my-group* cell, click on it. Here we can view more information regarding the consumer.
