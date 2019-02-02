use 5.014;
use warnings;

#code for reverse complement
$_ = "TAATATTCAACAACCGTTATAGCTTCGTGATATTGGAAACGCTTATATACCGCAAGCTTGTCTTCCGGGAGAGTGGCTGCTACGAATAGCCGAATCATCTGGACCCAAACGACAACCCTACACTACATAACAATATTGCACGCTGCGGTGATGCTTATGCAACTTTTCATAAACTTCACTGTTGGACCCCCACGAGGTCGTAGCCTACTTACCCAGAGACAAGCAGCGTCATAACAACACGGGTAATACAGTCAATATGTGGAAAAGCTGGTCCGTTAACAGTCACGTCTAAGCACATTTAGTGTGCCTAGCTGAATATGAATTTCGGGTCATATGACCTTTGCGGGTTGTCGGTTGTCGTATACATCTGGCACTGAGACTAAAAGTGAGTGGGTCTAATGTGCTTCTCCACATGGTTCCACATTTCTATAAAGCGGACTCAACCACCTAATGGCTAGTAGATTAATCCTCGTCTCGCCCACTTGCAACTGGGGATTCGTCTGGACATAAACAACTTTCTTAATAGCGTGATGCTCCGCCAACAAGGTTTAGAGACCTGCAGCGATAAGATTACTCCGCGCGAGGTGAATAGTCGTGACTGAGGCTCATCGGTTACGCTCGAATCTACGGTTCGCTAGTCGTGCATACAAGAACAATAGGTCCAAGTGTCTCCTATCGAGCTAGTTTGCGGTCAGGTGCTGGGCGCAAGTAGACGAGGTGTGGTGTGCTCTGCCCACATGTGCTAGAAACACTGCAGGGTGGTTCGTCCGGTACTAACCATTGATGCGGTGTACAAAGCACCTACATATAACTTAACTGATTTAGGACGGGTATACCGCGTTGTCGAATTACATTGCGTGTCACCAGTCCCAAGATATTTCCTCAACGTTACCTATGAAACCACTAGCCACTTGGGGATGTTGTGTTGGCAGTGTTCATAGAGAAAAAATGGTTAGTATAACAACTTCCCCTGGAAAATTTAGACTCGCAACGTGCGTAACTAAGTGCTTAGTGGTTTTAACCTTGTGTAGCACTGTCCAGCACCTGGCCATCGTGGCGTGGACCGTCAGCGGTTGTTTCGAATATCAAACACTTGGCACGTTAGTTCTCCGTCGTCAGGCCTGCTGTGAATCGCACCATGCGTCACGCGATTAAGACAATCGCTGGACTAAAGCCGTCCAAGCTAAACGGACTCACGCCGAAGCTGGTAGCCGTCGTCTTAAGAATTATTTACCACAGCTTGCGTAAAGAATGTCCGATTCACCGGCGCCCTCAGCCGTTGTGCGAAGCGAGAAATTTCTTTACCGTAGATCATACGCGGTTGCAACACTAAGGCACACAACGTGAGAGATTTAACACCACGTCATTCGAGAACTAGAAGAAATTGTTTTTGATGCAGGAGAAGCGAGTAAAATTCTTGGGCCCGGATATTCGGATGTGAACTGTCAGACTTTTGACACTGGGCTGGCGTCCTGTCCGTTTGGTGGTGATCTACCCAGCTGTATCCGCTACGGCGAACCTGCTTCTTTCGGATTTCTGAAGCCGTTAGTAGCGGGGCTCGTAAATCTTACTGAAGCTTAAATGGACATTCGGGTAGGCCGAGGGACGTGGTGCCTGACTAACGGCTATCCCCGCGGACCAACCCCGCTGCTTCCGCTTCACGTCGAAAACGCTTTGGCTTGAGCGTCTTCCTTACGAATAGCGTTAGACTTGTCCGTTCTACGCCACGTATCGTGATCCGCGAATCCAAGGGAGCGCGACCGTGTCCTTTAAGCGGGGTCAGCTTAGGCCGTTGTGACTATGGCAGATACCAATCCCGCGTGGGGCCTAGGTGGTACCTCGTCTCAAACAACTCCACGGGGTTCACTATGTCTTTCCGGGGTAGTTCGGTATACCCACAACATGGCCATCGGCCTGTCTTTCAATACCTGTACGATCCTGCTAGACTATGTCATTGATTTACGAGAGGACATCCCAACTTAGTTGGACCTTACGGGCGATCTCTACACTGCAGGGATTTTAAGCTAGGGAGATTGCCCGTTTTGGACGGACGCAGTATCAGCCGATTGACCCCAAGGGAGGTATCAGTGAGATTAGGCATGGGGGTCATTTTCTCTATCACGAGACACGACGGCCACGTTGCGAGCGGTCTCACCCATGTCAATTTATGGTAGAAGATGGCTCTTCTCATGGGGCGTCTTGGCAAGTTGAAGGCCGAAGGCCTTCACCCCCGACGGATGACTCTCCGGGAAGCCACCCGAGTATAGTGACATCCTTTTGGATGGTTTCAGGCGAGCAAGATCCTCAGTACGTGTTACCCTACGGAACATGCCTAAGCACAGCTATCCGACTCCATTGCAGCATGTGAAAAGTCCGGAATCAGCCTAACTAATGTATTAAATCGTGGAATCTCGGTGAACGTCAAGGGAGCCGGCAGTTTCAAAGCTACTAAGTGTGCACCCACCGTTTACCTAAGAAACGCCTATTCGATCGACGAAGCTCCGCTATCAGAAAATAGGATTCTTTAGTGAACATCAGTTGAACTTCGCGGGGAGATAGCTGGTTCGCCCGAGGGGTGTAATTCGTCAGAGCCCCTTGTACCGCGCAAGTCGCAAACACGCAGACATGGATGGCTGCGATTTTCACTAGGAAGACTAGCGTCTGACAATCCGAGAATCAGTGACCTTAGTATAGAACATGGGAATGACGTGCTTGGTACTGAACGCTTTAGCACGTGCGCCTACCGTTATAGTGGTCCAATATGGATAAGGGTAGACATAGCCCCCGACACACCCAAGAAGATAGGTAACGTCGACCACAATGCCACTACTAAGGGAGGGTGCGCGATCCTTACGTGAAAGTATGAGGATGGGCCCGCTAAGATCGTAGGTGAGGTTCTCTCTACTCGGAGAAACGCTTACAGGCCCTTCGGTGAAGAAGCAAGTTAACAGCTGAATTCCTAAAACAGCGAAGGTCCTACAATTTGTACAGCTGGGATAGAGTCAGTTCTTGACCTAAGACTCGAGGATGTATCTTGACGCTCCGCGACGCCCACTCCCCGAGCCTGTTATTTCTGGTGGTTCCAGACGAAGACGTTCTCTAGCCGGTGAAGATCAGGGAATCTTGCAAAGATCATCCCGAAAACTGTGGAGGATAGCCCGTGTGGGGGGCAGCTCTATTTCTTCCCGCGGACGTGGACGTGCAGCGCTACGGATTGACTACTTATCTATATAGCGATGCGGACGCTTTCACATAAAAAATACCTCTTGGGTCTGCAACCGGCTGCTTCGCCGATGCAGTAATAAAATATGACCTGAAGATAACACATAATGCATATGTCGCATGTGATTGACGCTATATTAGAATGTATCAGGAATGCTGTTAGAGGATTCCACGCGATCGGTGTCACGAGGCTTCAGGTTCCGTTGTGTCGCTTGCGCGAAAACCGTGTAGAGAAGAGTCTGCCACTCCGTAGGCGTATAGTATTGTCAACGAATGGTGAGATGCGCGGTATCGCGCACAACGAGCACTCTCCGTTTGAGTGGCGGTGCGTGTATTATTTTCTCTTTCATCACGAATAACCGACCCTCTGCATTTATGTCAAAGTACGGCTTTTTTTATTACCTCAGACTTTTTTGGCCATGGTCAGACACCATTAATGGCCGCTATAGTGCCAACTATGTTGGACTGGCAGGTCCGGCCCCTATGTGGACACAAGAAGTACGATAATGGCAAGCTGCCTGGCAAAAAGCACTGCTTTCCTGGTATGCTTGTTGCAATGAGCTGCTAGCCTCATTGCTCGCTCACTAAAGCGCCAATTAAGAACGCGATTTGCGGATAAAAATAAATTATTTGTATTTGGGCATCAGGTTCAACGCGGACTTACCTCCACTAAACTCGCCGCGGAGATTTTCTCATTCACCTGTGGACTCCGTGTAGAGCTCAAAAGTTTCGTGCAACCTAATCTAAGACGACATAGCTGGCCTGCACAAACGACGCCCCCGGTCCATCTACATTACAAGGACGCTCATCCTTAAGGCATGTCAAGAAAAGTGTGCAAATGCAACTCCACATCAGACCGGAGTGAATACAGTTATTTAAGACAATCATAACTTGGATCATTAGGTGTCAACCCGAAACCCGTGAGACCATTAATGGCCTGGGGGGAGCGTAGGAGGTCGGTGAATAGCACTAACGCAAAAACGTGCTCCGACGAGTGCATCCCCCGGGTTCCAGCGTGTAGTGTGAGGGCCATGCTTACTAAGGAAATGTCAGGCGCTCGAAGCATTAGAGAAAATCGTCCCCCCATGTCGGAGAGGAACAGTTAACTTTGCTTCATAAGAGGAGAAGCTGCCTCTACAGTATAGCCCGGGGACAAGGGTCGAGCGGGACTCAGAGAATAGGGTCAGGCCTTGGCCCAAACATTGTAATAGGACCGAGAGGACAAGCAAGGGACTTAGGGGGGTCAGACGCAGGTGTCGCTATCTACCGACTCTGGGGTTTGAATTCAAGTGACGTAACACTACCCAGCCAATATCACCTGAAGCAAGTAAAACGGGTGGATGGGTACAGGATCGCCCGCTTTGCGGGTCCCACTGGGCAACCCATCGAGGGTGGAATCGAGACCGTTAACTTGGTGTGGTCTGTCAAGAATGAGTGATGGATCCATAGGTTATTATGGGCATTCTTAACTCTTCTACCCATAGCAACACCCCCTCCATAACATGCCGACTGGACTATCACATATTTTTGGCTTGTTATTTATCATGGAGACCCAGAGTGATATCGCTTCTTGCACTAGACCAGAGCGAAACGGATCTGGAGGCAATATTTTTGGGGCAATATTCCCGTTATTTTGGAAACACCCAGGAAAGTCGAGAACTGGTTATAGAGACGTTGGTTGTTCCTTTTGTGTGTCGCTGTTCAACTTCATCGTGATTAGCTGTTCTTGTAGATCGTAGCCTCACAATCTATGCCCAAAGAAGGAAGTTTCAGCAACATGCTGGTCAATACAATTCGCCTCTATAGAGTTGCGTTCCCCTAGCAATTACAAGGGTCTCCCAGAAGCACATGCGAGCTGCCGCGGGAGACTGTCATTAATACAGGTTTTGAGGGGTGGGCGTTCACCACCTCAACTGACTGGAGGCACGGCATGCCAAAGCCAAATCTGAAAAGTCCATGTAGCTAGATGTTCTCTCGTCGCCCTCCTCTCAGACAAGCAAATCTGTGATTGTCCTACAATAGCCGCTTTCGATGAATAATATATCATGCAGAGGTAGTACCGTTCGCCTCGAACCCCACCTGCTGTAAGCAGGCGAACGCCTATTCTTGCCATCTGTGGAAACTATGTGCGTTGACGCGCACCGAATGATGGTAGGACCGCCTCAGGGTATAACGTACCACACTCCGATGGATGCTCATGACATGCTTCCTACCTGCCTGGGTCAACGAATCTATCACAGCGCCGAGATGTTCAGTACCGCCCGCTGTATGAACAGCGACCAAGCTCCGCGTAAAGATATTAAGGTTTATTTACAAGGCCATTCGCGCCCGTGCGCAAAATCTCCGGCAGGCTCCACAGGCACGGACGCATCTGAAGGGGAGGTAGTATAGTGCGTTGACTGCGCCTCGATCCAGCAATAACACTTGACCGAAGGGTTGAGTCGTGCAACGGCTCGGCATCCAAGCCCCGCACCCGCAACTTTCACGCTTATACCTGGGCCCTTCTAAACGCTACCCTTCATCAACCGGGGTATTCTACTGGGTTGAAGATACATATCGGGGACGTTTGAAACCCCTGTCCGAGGCCACTGCTGGGCAAAGCATTACCACTCAGATAGGAGTTGTCTAACAGTAACAGCCAGGAATGCTTTCCCGGTGGGTGGGTAGTCCATTCTAGGTAGATGTGATTGTGTGTACCACTAGAAAAGAACAACACCAGAACTTAAACGATACCCGCCCTTGACCCGTGACCACTCCGTTCTCGTACTAAATGGGGTAAGGCGTTGCGGGGTAGAATGACGCTACTATGTGGCACTTCTCTCACTCAACTCCGTTCGTGACCGTCCAACCCCGCATGTCTGGGCTAACTCCCCGGCGGGGACAAACGCTCGGCCCGGGCAACCAACTTGTATCCTCCCTCTTGGTCTAAGGAATCGTTGGTCCGTAATCGATACATTGCGATTCGCTAAAGTAAAGACACCGGCCGCCCTACTAGGGAAGCCATGGCGGTTCACGACCATTGTCGAGTTGTTGTTGACTGCACATTACGTCTAACTGCACGTGCTTTTCGCCTAAGTCCCTTAATGTGTGTATTCAGAAATATGTGTCGCGGAGGTGATATAAAATCCACTATCTAGGAGTACTATTTTTGACCTTTCCTGCCTCCAGACGAATGACGTCGAACAGTGCGACAACGGCCGAAGCCCTGTGAGAAATAGCGAGGCTGCGACTATCCGGGACGAAGGCGGAACGTTTATCCCTGAGTGTATAGCTCTCTGTGCGTCAGGCCAGAGACCTCACCGCATACCAGTTTGATGCACAGACGGCATTACCGGGGATATGCACTGACCGCTCTGCTGACCGAGCGAAACGCTTTCTGGACCTTTTAGGCCCAGAAGCCGACATCTAAGAACCGCAGGGCGCCGGATCGGACTCAAACTCCGGTCTCCGCTACCCGTTAGATCGGTGCGTTGTCTCAGTTAGGAGGGCGCTTGCTCAACGGAGAGGGGAGACCACCCATGGACGAGGAAGAGATCGGTCGATCGCTCATTAAATGTGGCTAGATCTATGCGGACATTCATTTGGCTACGGGATTTAGTCACCTCTTTCCGTATGGTTTTCCGACCAACCCTCTGGAAGGAATACACATGTTTCTGCCAGCGTGGTTTTGACCGTAAGCAAGCTTCGGAGACGGGGGGCCAATTCCGATTTTCAGTCCTGTCCGACGGGGGCTCTTAGCCCCACACGGACCCGTCTCACTGAATTGATCACCGACTCGGGTTGCGATCGAGCGCTCCGCTATCAACTCCTTTATTACCCTGTAAGATGCGACCTTGTACAATACCGCGAAGTTTTGTTACCACGGACATTTCACCGCCAGGGAGCCTAGGCCCGATCCATCCTGTCTGACTTCGGATGTGTCTGCTATATATCGTTGCTCTATGTGTATCATGTAAGGTGATCAGATGGCACTCCCTTTTCTAGGCGTGACTACCGTAAACCTTTAACCATATAACCACAACTACGGAGTCGATCTTTTGAAGGAATGTATAGGCTTTTAGCCCTGCTATTTGTTCCTTATGCTGGAAGCGCTGCGTGAATAGGGCCTCTGATCCCTAGTCCAGACGTTTTAATACTATCTGTGACCCATAGGATTTGTCGCCGGTGTCATAATCTGGTCAAACCCCGCGAGTCTACCTATGCTGCAACTTGCGCTCAGGCGTGCATAGAGCGTGATTGCGTGTTCCATAACTATCCTAGGTGTAGGTAGTTCGATCACAAGAGAGGCTGTGTTTGCAACAATAATATTCACTTTGGGTAATCACAGGTAGTGGTTGGTTGGAGCCTCCACTGAGACCTATATTGCTTTGACATGCTTGTCACACCCGTGTAAGCAAGCCATACGTTGCGCTCAAGGCGCGGGAGAAGAACTAAAGCATGCTAAGCCAGCTTATATTAAGCATTGAAGCATTACTAGGACTGTCAATCATGTTTATAGCCTCCGGACTCTCGAGCTCAAGCCGAGATCCACAAAAGCGTGTCTTATAGCAGAAGTGTATTCTAACTTGCTGATCTACATTAGCACCCGAGCAGCGGTCCACAGTGAGAGCGCTTTATCTCCGGCTCTGTCTCGCTAACAAATGCTTAGTAGTCGTCGTCGGTGAAGGTATTAACGGGCGTGGTGCCAGTCGATGCTAGATTCAAAGCACATTTGGTTTTTATCCACTTAAGGACTCAAACACCAGTCCGTGACTGCTTTGGTGGAAAATTTGTTCTTCTACCTGGGCATCAAAGTACATACGGTCTACGTATCTAGTCTAGGGGAGCAGTTTCTAGCGTTGTCAGGCCTTTACTTTCGTAGTACCCAAATATTCCGCCGTGTTTGTGTCCTTTCATTGATGCCTACAAGGGTCACCTACGGTCAGCGGCCGCATTCTCAAGCCACTTTTAAATACCCGCCCAGTTTGTGTTTGTTGTGCACCGGCGTGCCGGGCTCCTTGTTCAATTCAAGTACTACCGGACTAGTTCCCCACCTTGCACCTAGTACCGTCATTGAGCGCAGGCTTCGGCGCACTAGGGCCGTTTTCCGTTACATCGAGGTAGTAGGCGCTTCTCAAACTCTACTGATTAAAAGACCCTCACCTTGTTGCAGCGCTCAGTCGGTACGGAGATGTGTATGAAGAGTCTACAGCGAACAGGAGTTTTACCTTTGGGGTAGTGGAGGCGGACCAACTAGCATTTTACTATAAACTGACCCCTCGGTTTACGCACCCTGAACCTCGCAATCAATTTGCTGTACTTGCGATTGGCAGGAGCATTCAGTTATGTATAGCATGATAAAACTCGCGGCTTCCACTAGCTCAAGGTGGTACCACTGTTATAGCAGGTCTGGGACCAACCCCTCCGATGCCGAATCTGGCATTACATGGCGGTGGAACCCAACTCGCCAAGAGCGAGTAGAACTAAGGCAAGGTCAAAGCACCTGACTTCCGCCTAAGTTAGCACCCGACCCCCGAAGCCTCTCACTCAGTCCCGGTGCCGGAATGCATTACGGGACTAGACTTGTTTTTAATACCGTTTCCGTTCCTACACACAATTTATCGTAGCAACTTGCATTTATTGATTAACATGGGCGTGCATCATCCGTTGACCGGTCGACTTAGCTCGGGGCTCTACCCACATGCTCGATATTCTCGCTACCACGAGTCGGTACTAGCTAACTTCGGGAGTGACCGAGTCTCTGAATGGCAGATGCCATGTTACAGACGAAGTTTTTAATTTTGTGCTTGCATGCAATAATCTATAGCTATGATCAGCGAATCTCCTTGCTAATAGCGAACGGGGTCGGAGCATCCCGATTTATTGGCGTCTATAAGTGAGGAAATCTTTACCATGAGTTAAAGCAGCTGAAGGTCGGATCTGTTCTAATTCAGAGGGGTATGCTACCGGATTATCAGCCATGTAAGCGTGCAACATAAACCGACTTCTACGGAGCGTAGCCTTTTCTAATCCGTGCCCTGGCGCCAGGTGAGCGGGTGTAACACTCGACTTAATCCGGAAATCCAGTGAACCCGTAGCATGAGTGAGACCTTTCGTTCCCTCATTGGACGTGAACGCGCCAAGCCCTACCGCTAAAAGGACCCTAAGCCGCCTCTCAGTTCCCCGGTATATCACGGAATCTGACACTGCGGGTGCCACGTATTAACATTGCGTCGCTTTTAGGTTTCACCGAGAATGACGTTATCACAGTTCTGGCGTAGGTTTAAGAGTGATTGGTCTCGCGCAGAATGAGCGTCTCCGGCTACCAGTAGGTGGTGTTCTGGACACGAGGAGTGCACAATCGGAACATCGGAGCTGAAATGGAAGGTCGGCATGTACAATGGACGTGGGTCGGTCCTGGGGGTTTGTTCGAGAAAACGCATACAACCACTCGTTCTGCAGTCGCCGTAGGAGGATGTTCGGTATCATCCTTGTTTAACGCCTAAGTATCCGCACTGATGAATGCGAAACGTTGGCGGTGCACCCTAGAGCACCCGACATTAAATAATTACAAACGCCTATTTCCCATGTCTACACAACGAACATCCGCAG
";#"GGCCAT";#"ATGT";#'CTGTCTGCTTTTAAGGCAGCCTGGCACTTCACTGCTGAGTGATTGGTTATGTTTGTTTGATGGCGCTGCGATCACGTTATTGATGTTTGGTAGCGAGCCCGAGTTTATCCTCGGCAGACAGGGGGTAACCAACTTCGACAATCACTGGGGGTGGTACTGTAGAGATGTGTATTGAATTGGACGGACTGGTATTCGCGAGACACAGACTTTAGCTAGGCACAAACAGCCGCAAGCCAGAATAGCTAGCGCTACAAGCCCTTGGGCGCCGAGACGAACACTAAGCTGCTGCGTACTGTCGGTAGTGTCATCAAAAACCCGCTACGAGACATCATTGGCAAGCATCGCTCACCGAGCGTAGCTGGGATATTCTACCGCCCAGTATTGAGTCAGCGATGTTCTATGTTGGCAATGAGTCCCAAGGTCCGCACATAGTTGACTCTTTTACAACATCCGCAGTTAATAACTGTTAGGTGAGAACTGGAGTCCCTACGTTCTCCGAATCTTTATTTCCCAGTATACCAAGGAATGGTCGTGCCGTCTGCTACCTTTATTCTTCAGTATCAACATTGCGTGAGGAGAAATTCGATTGTAGCACGCATACTACACCTTACGGCCGTAGCAAGGTGCCCAGCTTATTACACTGACCATTGACATATTCTGGCAATATCGCTTTCCAAGGATTAACGAGTCGCGTCCGGTCGGTGACCGGCAATGTTGTTGGCCCGGTCTATTTCCAGGTTAGGGGAGGGGCTATTTGTTGCTTGTTGTGAGTCACGTACTCAACAAATTAAGTGAGTAGATATCGTTACACGGGCCCCTGTCTCTGTGATTGTTGGAGCCTTCCGGATGTACCACAGCTCCAGTAAACGGACCGGTATCGGTCGACCGGCCAGAGCTGCGAGTTTCAAAGTAAGGACGCATGCCAGGCATCATACGCGGCCTCTAACAGAATCTAGTGCACTTCGCGCAGACATACACCCCTTTATAATTGAATACTGGCTGACAGTCGACTAATCGGGTTTTCTAAGTGGACCGGTATCCTTAGGTCGGTATACAGTAAGGCGTGAAACACTATGACGAGAGTGGTCGAAAATACTAAGGGCTAGAGATTGACAGGCCTTTGATTCAACGCGTACATGCGGATGTATCCGGCAATAATACCGAGCAGATAGGGGCCGAGGGACGGCTAATCCTATGCGCGAACGTAGGTCATGGTTGACACCCAGCTTTTAGATAGACACGGAGTGAGCGTCTGAGGACGGGTAGTGACAAAGCCACCGTTTTGATGGCCAACAAATCGTTCCGGGTATTTTCCATTTAAAGCGTTGAATCACCTCTTGGGGGTGTATAGGAGAAGCCGTCTGTTTTAATATAGCACAAGCTGCCGAACGATGTTATATGGCGTTAATGCCCGCTTAATCTCTAAGACGTCGACAAACCAAAGGAGGGACTCTTAACCCGATGTGAGCCTCGTTCGTAATCGTATGACTCGAGTGGGACGACGCTTAGACGTGTCCGTAATGTAGGCCGTTTTTGGAACATGCGAGTAAAACCGGATCCGGGAGCCCCCCATTCACTGCCAAGATAAGAGACGGGTTTGTGGGCCAGAGTCATCTAAATTGCCGTGCCCGTTCTTTTGTGTCTCCCTCAATTGCCTCTGTGGCTATTCCTCGCGACACCTCTACAGAGGTGCGGTCTGGGCCAGTTGGACAATGTCGTTTTTATGACTAGCGACACACAGTTAGTATCCATGGAACCTGAGGTTTCTTTGCCTCCTTCAACTTCCCCTACATTTGATAACAAATTTCTTGATATTGAGGGGTACCGTCTCGTGCATTTTCGCAAGCGGAACTTCACACGTCCCTAAGCCCCTCGAATGGATATACGCGGGCCAGGGAGGCGGGCTGTTCAGCTCGTAGAAGATACGGAGGTCTCCGCAAATAACTGGCTTTGCATCGCTAAGGAGGGCCTTCATAGGGCGCGCAGGAAGATTATACCGGGCAGCGATACTTCGCTTGCTTTCCTGACGAGCAAAATGCTATGAGTAATAGAGAATCCATAACCGTAAGTTCGAAAACCATGGGGATCTCTGTCGATCGCATCGATTCGTCCAGCTAAGATTAGTATTAGATCGGTCTTTACCCGCTTTAGCTTGTTTGTTTTCACTACGATCCAATATGTGCTGCCGCGTCTAAAGCTGACCATATGCATCCGCAATACTACCAAGTCAGAACTTCTACAATTCGAGACTCGTTTCTAGGATTACTAGGGATTGCAAGCAACACTTCCCGTTAAAACCCGACTTGTAGTATCCAGTAAATTGATGGCTGTAAGGTCGTCGCACGGACCACCCTAGGCGTTTGCGAAGCGGATGGGGGTATTATTAAGCCCTTTTCCCGACTAGGACTGCTCATGGAGCCTTATGAGCCAACGCTCCGGCGCCTACCGAACACCAGTCGCACAGCCTGGCGTTTTCATACCGGATTCGGCGGTAGCATGTTGAACACCCAAACATGCAAACAATACCCTCAACGGTCGGTGGGAGAAGGAACGTAGATGTCGAGCCGAATCAATAGCCGACGCGGGTTTCTGGACATCTGGTGACTGCAGTGTCGCATTCGGTGGCAATAGATAGATCAACAAATTAGAAGGTCACATGGGGGACTCAACTGCGAGACGCCCGTACCGCTTTGGAATAGTAGCGCTGATAACGTCCTATCCACGGCAAATGTTCTACGGTTTCAATCGAAGGCGCTCGGGAACAAGACGGTAGAGAGGAGCAACCTCAAGACTCTATTTGACACTCCATGAGTAGCCGGTCGACCTAGGGAATCCAGTTCTTCTTATTCACGCATATGTCGTCATCAGTGAACTGTATCCGCCTTCGGATTTGTCTAGCCATTATAGCTGTTGTATGGTCGGCTCTACGTAGTGGATCGCTACAGCCTATCGACCTGCGTCCGTATCGTACCCAGCCCTATGAATTTTAGCTCACGGAACTATCTGAAGAATCCGACCGCGCTAAAGCCTTCAGATGTGTGTTCCAGGGCTGTCTTGGATTGAGCTTCGTCCTCGGCAGGGTTAGCGTCTGAACTACAGAGCACGCCACTTGTGAGTATCGACTATAGGAATCCTCGTGATGCTCGACTTTACCCATATGAGCACTGAATGCGACCATCGCAAAAGGCACCAGTCATTTGGAAAATTCGCCTTCCTCTGTAGGGGCCCATCTCCGGGCAGAACCACATAAGAGAAGATAGGAGTCAACGATTAGTGCCACAGCGCGATTTCAAGAGGCATAATCCAGTGAACCAATGGCAAAAGATGACGGCCAGCTGAACCAGGCGCTCCTTCCGAGCATGTCAATTTGACTTGCTTATTGACTCGCGCTGTGGGTCGCGTTTCAATCGACGAGCATTCGTTAGGCCTAAATGTGAAGGCGTATTAATAAGAGGCATAGCGCGGGATGCCAGGTTACCCAGGAGATCGCCGATGTTTTCGGCACTCTCAGTTTATGGTCGTCTCCGATTTAGGCGAGACCATGCCTGCTCTTCAGCCGTTAGTACCGCGGGAGAAAAATCCCCACCACCTATAAGATTAGCGACTGGCTATCGAGCGACTGAAATGCCTGCGATGGCAACCGCCGGCGTAAATGAAGATAACGCGAAGGGCGACATATTGAAGTGAATTGGTAACGCATCGATATCCAGCTTTGGCGCCCTAAGAAGGGGTCAACCGTACTCGCGACTGCTTAGCTAACTTCAGCGTTGTCTACTGAGACTAATTCCTGGACGACACTTCGGCTGAGTTCAGGAGAATTAGCATCGCAAAAAACGTATAATTAAGATCCAACCGGAGTCTCGCCAGCCCGACTGTACACACGCCGCATCTATCACCCCAAGAAGGGCGAGTTTGAGCAGAGTGCTCCCGTTCTTAGTTACTTTTGCGAATCATACCGATATTCTCGCGTCAGTTCATCGGTGTAACTACGGCGGCGGTCCATGGGACATTGACATTTGATCACGGACGAGCTCAGGGACGTCCACGCACCTCATCGACATCCTACCAGGGGTCCCGTCCGGTCGGGCAGCAACTCGCGGCTGAGCAGAGGGAGCCCAGAATAAGAACGAGATCATGACTTAAGCATAGACATCGAACCCAGTGGCACAGGGTCAGAGTAGGGCATAGATAAGAGTGTACCGATCGCGCAGCAACCACGGAACGTTAGCAGTATTGTAGTGAAAGCAGCACTAAACATAGTAACACGAGGCCAAGCGTCGGATGCTCCAAAGCAGACAATTGGAAATCACGTGATTGAGACAGCAGGTGACTCCTAGTATGACAACTAGGAGGGCTTTAAGACACGGAACACAGGATGCGAGTCCTCACGCTTGTACCCTCATCAGACTTACGGACGGTTGTCGTCCTGATGTTGCCAGGTTACATTGGGAGCGATTCCCAGCAAATCAAAGATTACTCGCGCACACAAACGTGAAATAACACGATATTTCACAGTATGGATGAGTTTCTCCAGAGCCACGCTATGACAGCAGAACCGAGCCATCGCGGGAATGAACCTAGCGAGGAGCTGGGATCTTTGTTGGTTTTCGTTGTCGGTAACCTAGTCCGCGTATTACACTCTAACCAGGAGCTAACTGGTTGGAATCGGGCACGGCCCTAGATTCGCCTTTAGAATAATGTGTTGGAGTAGACATTGAGTCCCACGCATTTAGTTATTAGCGATGAATGACGCTTTTGTCCGTATTTTCCCCGTGGCTACATGGAGGGGACTCTGAATCGGTTGTCGCGCCTTTGAATGTTTGGTTTTCACAAACGTAGGAAAGAGACTTATCTCACCTTATATATATCATTTCTGGAAAGTGACAGGATCCCCACGTACGGGAATGATCTCAACTCGCCCTAACACATAATTTTTATAAGGACGCTTACGAGGGTTCGAGGAATAACTATCATAAAGATTTGCCATTCGCCCGTGACTTCGACGCACTCCTCTTGTTCCGAAAGTAGGCCAAGCTCTTAACGATGTGTGCCGTGAATACTCACACATCGGGTTGTTGAACAACAAAGACCCAAAGGATCCATAGCTAATCCGTCGTGTAGGAGGATGCAGGTACCACTTTCACTAGAACGTTGGCGCTGGACTTGCCCCAATGAATTGAAAATGGATGTCTCTTATGGGGCCTGTCTACCTGTACTGTGTCTCAAATGATGCTAGCTTGAGAGCCTGTTGCAGGTACGTGGTATGCACTTCACACTGTTAGGATGATGCGTGGAGCAATGTATCAAATTACTCCGGTGCACGTTATTGACCAGGGTTCGGATAACGAGTCGGCACCGTCCGTAGGACCAAGACAGAATCGCGGATAGGCGCGTTCCGGGGTAGCAGTTTCGTGCGGTGACTAGGTGTATAGGTGGCTTGCGGAGTAACAGGGATTGCTTAACACGGTTTTGAGGCTGATGATTCCCTTGAACCGCTTTTACGCCGCAAGTGGGTTGCTCCCGGGAGAATTATTTGGGGGAGGCTCCTCCCGAAGTAGCGGACCGGTCAGCGACAAGACTGGGAGAAGTCTTAACCTGATAGGCGCAACGCCTGACCAGACTGTCTACTTGGCAGGCCATTGGCCGATATTGCTGAGACGCCCCCTGGCCTAGTACCTATCCAGCAACACTCTTAATTCCCTTGGTGCGTTTGGGCAAAATAAAATTATATCTATAGAGACATCCCGGCCCTACTCCAATAGGGAGTACGAGCTCGCTTCCAGTCTAGCTGTTGACCTTCACTAGAGTCAACACCAAGTAGCCCCACTGGGGGCCTTAGTTTCTAGTGTAGGCACATAGATGGGCAGACCCTGTGACGGTTCCACCGGGCCTACTGCGACAAGGGCCCCGCAGTGGCTTTGCGTACACTGATGCATGTGCCAACCCTCGGTGAGAGTCATGGGGCCGAGACCCTTTAAAACAGTATCCTGCGCGTGTACGCGTACGTATTCGTTCGACTAAAAGTGGTATGAAATAGCGCCTATCGAAGTCCGAACCTTGAGGCAATGATCACCTTCGTGCTGGATGTACCCAGCTCAACACACTTCACAGACGTGAGAGTCCGCTACGGCAATTGCTATATATCAAAACGTTAGAGCCCAGCTACGCCGGAGTTCGCCGAAATGAAGTTAAAGTTCCACGTCGTACCGTCGGTTGCCTCATGGCCGTATTATTAAACCGATAGAGACCGTACGATTCGGATCCTGGCAGCCGAAAGGGACGGGCATACGGGAATACCCCTTCCAGATTATGTCTGCTTCTTCATCCCTAATCTCAGTCCTTCCAGTCAAGAGGTCCGTTAGCAAGGCACTTTGGCCCCTTCATATATCACCTGATGATTGTCGCTCTCATGTCTATATGAGGGGTGGAGGGGGGCTGAAGCCCCCCGTTGTTCTAGTATATCACCCCGAATGGGACGGACCTGGTCTTCAGGTATTTTTGACACGTCCCGAGGTCCGTTCATCTAGAACGAGCTCTCCGCGAGCGCACGTATGTGCTGTGACCTTAGTATACCAGTATCGCTTTATGAAGGAACAACCGACGCGTGACGTATGTAAGGCGTCTATGACAACCCGCGGGGATCACTGAAGACCGGCATACCTCCCCGAAACTAATTGAATCGCCCTACGCTTCTAGTAAGCAATCGTAGTAAGCGTACCTACCTCCCGGTCCTGGTCATTTAGGAGTAAGATTCTGGTAGCATAGGTTTTCAGTCGTTGAACGCACAGACTTTAACGCATAGACCAATGCAGCCAGAGCGGTTAATTTGCTCGACGCTTAATGTAACCCTGGGGAAGTTAGTTGGGCGTAGCAGATTTGTGATACGTCACGGTGTCCATCGCACTCGCATTACCTCGCAACCTCGACACGTTTGAAGTTTTCATGCTCTAGTACAGATCTTTCAGTCTTGCATTAGACGGTTGCCTGGCGAAGCAGTCGATGTAGGTGGTAAGTAGGGGATTGGATACTCGAACGCTGCTATATAACCGCACGCTGGAAACTAGCAACAGGTATCTAAGCCTGTACTAACATGCACCGACCTTCGATCTGGAGGATTTCGTACGCCACTGGTTTAGGTGCCACAGTGGAATGATTCACGCGGAGTAAAACTACGCTTGCATATGTACGGAAGCGTCCTTGACGTCCAACATCGCACGCAGGTCCAACAATACGGGTCACTTGGTGGAGGGGTGCTTCATTGAACATCTAGCTCTTCAGGATACAGGGGCGGGGATTTGCATTGGATTGATAAACCGCTTTAGAGATGGTAAAATTATCATGAACAAAAATCGCGAACCACAACATGTAGGGCACAATAATGAGAGCGGGCGTCTTCAATAGCCGGGGGAACGGGTTTAGAACAGCCAGGGGGTTCTTAGTTAAGCCGTCGTCTCAAACTCGAGAAGATAAGATCCTGGGGTGGCGTCTAGGTGAGTATATGACTCCGATTATCTCAGGGTTCGCCTGTTGGTGAATTGTACGCCTTTGAAAAGGCTGAGCTCAAATTAAACAAGCTGTACGGTCGCCGATCCAGTTCGGAGCCTCTATAGAATAATGTCAGGCCTGACGGCCGCGCGGATTAGCTTGACTCAAGATGCACATCTTAGTATATGTTGAAACCAGTTAGGTACCAGAAGGGCTATCGTTCCAACAGAAGCTATGAAGGAGAGCTTCGGCCCCTAGTCCCCGAAAGAGTTCCGTAGCGGCCTTATTGTGTCACGACATCCAACCGCTGAAACGTTTTATAGGCATCCTTTGAATATTTTGATTTGATCGGCGCCCTATAGGTCCCACACGCATGGGGAATAGAGTTCATATTTCCTCATTGGCTTCTTGCTATACCATGGATCTGCGACGCAAGTTGATTGTGTGGCGGCCTCTGTCCGGTGATTATGGTCGGGCGTACTTACTCACGCAATCAAGCCGCCCGCAGTTAATATTGCAGAGTGTATACCGTGAGGTACATCTTCGGGGGACAGCCCAAGACAGCGGTTCTGCAACACGCTAGCATTATTAGCCATCGTATCAAGAGTCGATGCAAGGGTCTAAATAGCTTTATTCTCGAGTCCGGAACTGGCGAGACCTGTCGAAGACTCATCTCGCGACTACTCAGTATGCACCTAGGGGCGTCTCCAATGTACTATCCCCGTGCAATTGCGATTGCTGTGGCAGAGTCCTAGCCCGCGAGAAGCGGCGTTACCATGGGGTCGTAAGTGTCTTACAAGGTGGCATATCTTGTTCTCGAGAGCGAAAACTACTGAAGCGGGCGTATCGCGGTTGAAAATTCCGGGCGAGCAGAGCTCGAAGTCTACGAGGGAACGAACCCAAGATGCGTCACTGATTCTTAATAAATAATGTTGGTCAGCTTCCGAATTATCCCGGATTGCTATCGGGCTCGCATCCTCATCGACCTCCTGACAGACGGTC';
say "Input : $_";

my $reverse_compl = reverse $_ ;

$reverse_compl =~  tr/ACGTacgt/TGCAtgca/;




say "Complement : $reverse_compl";

open OUT, ">Output_rev_compl.out" or die $!;
say OUT $reverse_compl;

#Exit
exit;