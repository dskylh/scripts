import subprocess
import os

msg = "Set gamma to default"
os.system(f"notify-send 'Gamma Change' '{msg}'")
subprocess.run(["xgamma", "-gamma", "1.0"])
