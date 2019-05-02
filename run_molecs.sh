#!/bin/bash
for dir in ./graph_data/*; do
    mol=$(basename "${dir}")
    echo "${mol}"
    python -m graphsage.unsupervised_train --train_prefix "./graph_data/${mol}/${mol}" --model graphsage_mean --max_total_steps 1000 --validate_iter 10
done
