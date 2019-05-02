python -m graphsage.supervised_train --train_prefix ./example_data/ppi --model graphsage_mean --sigmoid


python -m graphsage.supervised_train --train_prefix ./labeled_data/molecs --exp_name 5l_4n_128d_00w --model graphsage_mean --sigmoid --num_layers 5 --samples [4,4,4,4,4] --dims [128,128,128,128,128] --weight_decay 0.0
