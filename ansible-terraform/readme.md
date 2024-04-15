export image_uri="palmeransible:1.0.0.$(date +%Y-%U)"
ansible-builder build --container-runtime docker --prune-images -v 3 -t $image_uri

ansible-navigator run tf_ee_test.yml -i hosts --execution-environment-image palmeransible:1.0.0.2023-51 --container-engine docker --pull-policy missing
