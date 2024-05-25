*** Settings ***
Library           OperatingSystem

*** Variables ***
@{NOTASESTUDANTES}    80  55  70  50    22
${NOTAPARAPASSAR}     60

*** Test Cases ***
Testa Aprovação dos alunos
    [Documentation]    Verifica se cada aluno está aprovado ou reprovado baseado na nota.
    FOR    ${NOTA}    IN    @{NOTASESTUDANTES}
        IF    ${NOTA} >= ${NOTAPARAPASSAR}
            Log    Vocë passou ${NOTA}
        ELSE
            Log    Voce reprovou ${NOTA}
        END
    END