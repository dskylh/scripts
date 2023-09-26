import subprocess
# Define the command you want to run as a list of strings
command = ["xgamma"]

# Run the command and capture its output
result = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True).stderr
result = float(result[8:13])
subprocess.run(["xgamma", "-gamma", f"{result + 0.1}"])

