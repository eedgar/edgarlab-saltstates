base:
 '*':
   - salt.minion

 'role:saltmaster':
   - match: grain
   - time_init
   - ntp
   - salt.gitfs.pygit2
   - salt.formulas
   - edgarlab-saltstates
   - salt.master
   
