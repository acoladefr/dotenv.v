module dotenv

import os

pub fn get(key string) ?string {
	content := os.read_file(".env") or { return none }
	for line in content.split_into_lines() {
		if line.split("=")[0] == key {
			return line.split("=")[1]
		}
	}
	return none
}
