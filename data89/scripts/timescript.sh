---
 - hosts: vlab
   tasks:
   - name: "date and time"
     shell: date;uptime;who -r
