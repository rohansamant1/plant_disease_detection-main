from tensorflow.keras.models import load_model

model = load_model("model.h5", compile=False)

model.save("model_compressed.h5")
print("Model compressed successfully!")
