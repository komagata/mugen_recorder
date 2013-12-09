require 'inifile'

MUGEN_PATH = 'C:\Users\komagata\Documents\mugen\mugen.exe'
MUGEN_DIR = File.dirname(MUGEN_PATH)
LOG_PATH = File.join(MUGEN_DIR, 'match_log.txt')
LOILO_RECORDER_PATH = 'C:\Program Files\LoiLo\LoiLoGameRecorder\LoiLoGameRecorder.exe'

Dir.chdir(MUGEN_DIR)
puts LOG_PATH

system "#{MUGEN_PATH} -p1 kfm -p1.ai 2 -p1.life 1 -p2 kfm -p2.ai 2 -p2.life 1 -rounds 2 -log #{LOG_PATH}"

inifile = IniFile.load(LOG_PATH)
puts inifile.inspect