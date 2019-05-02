#!/bin/bash


# num layers
num_layers=(2 3 4 5)

# num nbrs per layer
nbrs_per_layer=("[2,2,2,2,2]" "[3,3,3,3,3]" "[4,4,4,4,4]" "[5,5,5,5,5]")

# aggregator
aggregators=("graphsage_mean" "graphsage_seq" "graphsage_maxpool" "graphsage_meanpool" "gcn" "n2v")

# output size
output_size=(128 64 32)

# num negative samples
neg_sample_size=(2 4 6)

for layers in "${num_layers[@]}"; do
	for nbrs in "${nbrs_per_layer[@]}"; do
		for agg in "${aggregators[@]}"; do
			for size in "${output_size[@]}"; do
				echo $layers $nbrs $agg $size

				#python -m graphsage.unsupervised_train --train_prefix ./four_layers/molecs --model graphsage_mean --max_total_steps 1000 --validate_iter 10 --base_log_dir parameter_tuning/ > {experiment}.out

			done
		done
	done
done