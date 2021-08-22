gcloud alpha compute tpus tpu-vm create "$1" --zone us-central1-b --accelerator-type v2-8 --version v2-alpha --premptible
sleep 120
gcloud alpha compute tpus tpu-vm ssh "$1" --zone us-central1-b --command illogical@ill20:~/word_of_the_future/mesh-transformer-jax --command="$(< scripts/deploy_server.sh)"