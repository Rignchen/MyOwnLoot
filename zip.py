from genericpath import isdir
from json import dumps, loads
from os import getcwd, listdir, path as osPath, remove, walk
from zipfile import ZipFile, ZIP_DEFLATED

def read_file(file: str):
	with open(file, "r") as f:
		return f.read()
def write_file(file: str, content: str):
	with open(file, "w") as f:
		f.write(content)

def compressJson(content: str):
	return dumps(loads(content))
def compressMcfunction(content: str):
	# remove comments and empty lines (comments start with #)
	return '\n'.join([line for line in content.split('\n') if line and not line.startswith('#')])

def zip_file(include: list[str] = listdir(), name: str = osPath.basename(getcwd()), exclude: list[str] = []):
	if not name.endswith(".zip"): name += ".zip"
	zip_file = ZipFile(name, "x", compression=ZIP_DEFLATED, compresslevel=9)
	for i in include:
		if isdir(i):
			base_path = i.removesuffix(osPath.basename(i)) if len(include) > 1 else i # put the folder in the root of the zip file instead of having lots of empty subfolders
			for (path, dir, files) in walk(i):
				if not (path in exclude or osPath.basename(path) in exclude):
					for file in files:
						file_path = osPath.join(path, file)
						if not (file in exclude or file_path in exclude):
							zipAddFile(zip_file, file_path, file_path.removeprefix(base_path))
		else:
			zipAddFile(zip_file, i)
def zipAddFile(zip_file: ZipFile, file: str, arcname: str = None):
	if not arcname: arcname = file
	if file.endswith(".json"):
		write_file("temp", compressJson(read_file(file)))
		file = "temp"
	elif file.endswith(".mcfunction"):
		write_file("temp", compressMcfunction(read_file(file)))
		file = "temp"
	zip_file.write(file, arcname)

zipName = osPath.basename(getcwd()) + ".zip"
if zipName in listdir(): remove(zipName)
zip_file(["pack.mcmeta", "data", "LICENSE", "README.md"], zipName)
if "temp" in listdir(): remove("temp")

print("Done!")
