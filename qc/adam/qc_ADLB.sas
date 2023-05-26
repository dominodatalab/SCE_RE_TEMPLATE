/*****************************************************************************\
*  ____                  _
* |  _ \  ___  _ __ ___ (_)_ __   ___
* | | | |/ _ \| '_ ` _ \| | '_ \ / _ \
* | |_| | (_) | | | | | | | | | | (_) |
* |____/ \___/|_| |_| |_|_|_| |_|\___/
* ____________________________________________________________________________
* Sponsor              : Domino
* Study                : CDISC01
* Program              : ADLB.sas
* Purpose              : Create QCADaM ADLB dummy dataset
* ____________________________________________________________________________
* DESCRIPTION
*
* Input files:  SDTM.LB
*				ADaM.ADLB
*               ADaMQC.ADSL
*
* Output files: ADaMQC.ADLB
*
* Macros:       None
*
* Assumptions:
*
* ____________________________________________________________________________
* PROGRAM HISTORY
*  10MAY2023  | Megan Harries  | Original
* ----------------------------------------------------------------------------
\*****************************************************************************/

*********;
** Setup environment including libraries for this reporting effort;
%include "/mnt/code/domino.sas";
*********;

data adamqc.adlb;
	merge adamqc.adsl sdtm.lb (in = lb);
	by usubjid;
	if lb;
run;
