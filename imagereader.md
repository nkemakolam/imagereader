# proceed for storage file
create a storage file on azure in the resource
create pv,pvc and frerence the storage class and the pv where neccessary
create a secrete using the storage name and the storage connection string
Note when you copy the code to the working directory of dockerfile it will add another layer to the month path rememeber to add the  [/app]as the leading path before the mont path in the pod.
a