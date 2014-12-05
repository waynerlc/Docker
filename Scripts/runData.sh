#!/bin/bash

docker run -v /NFCE/app:/NFCE/app -v /NFCE/NEW:/NFCE/NEW -v /NFCE/CUSTODIA:/NFCE/CUSTODIA -v /NFCE/ERRORS:/NFCE/ERRORS -v /NFCE/BACKUP:/NFCE/BACKUP -v /NFCE/SIGN:/NFCE/SIGN --name data bema/data true
