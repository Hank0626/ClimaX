python src/climax/global_forecast/train.py --config configs/global_forecast_climax.yaml \
    --trainer.devices=4 \
    --trainer.strategy=ddp \
    --trainer.max_epochs=50 \
    --data.root_dir=/jupyter/weather_prediction/weather_prediction/5.625deg_npz \
    --data.predict_range=72 --data.out_variables=["geopotential_500","temperature_850",'2m_temperature','10m_u_component_of_wind'] \
    --data.batch_size=64 \
    --model.pretrained_path='' \
    --model.lr=5e-4 --model.beta_1="0.9" --model.beta_2="0.99" \
    --model.weight_decay=1e-5
