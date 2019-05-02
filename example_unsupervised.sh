python -m graphsage.unsupervised_train --train_prefix ./example_data/ppi --model graphsage_mean --max_total_steps 1000 --validate_iter 10


python -m graphsage.unsupervised_train --train_prefix ./test_sampling/molecs --model graphsage_mean --max_total_steps 1000 --validate_iter 10 --debug


python -m graphsage.unsupervised_train --train_prefix ./four_layers/molecs --model graphsage_mean --max_total_steps 1000 --validate_iter 10 --debug


python -m graphsage.unsupervised_train --train_prefix ./four_layers/molecs --model graphsage_mean --max_total_steps 1000 --validate_iter 10 --num_layers 4 --samples [4,4,4,4,4] --neg_sample_size 2
