

manage-bde -protectors -get C:

manage-bde -status

@REM 
manage-bde -on C:

@REM enable BitLocker on the C drive, store the recovery key on the Y drive, and generate a random recovery password
manage-bde -protectors -add C: -RecoveryKey C: -RecoveryPassword

@PAUSE