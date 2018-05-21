module PredictionHelper
  def getValues(date1,date2)
    month1,day1,year1 = date1.split(" ")[0].split("/").map { |n| n.to_i }
    hour1,minute1 = date1.split(" ")[1].split(":").map { |n| n.to_i }
    month2,day2,year2 = date2.split(" ")[0].split("/").map { |n| n.to_i }
    hour2,minute2 = date2.split(" ")[1].split(":").map { |n| n.to_i }

    minute1 = [(minute1-5)/15 * 15 + 5,5].max

    time1 = Time.utc(year1,month1,day1,hour1,minute1)
    time2 = Time.utc(year2,month2,day2,hour2,minute2)
    fulldates = []
    dates = []
  while (time1<time2)
    time1+= 15*60
    dates += [[time1.day,time1.hour,time1.min]]
    fulldates += [time1]
  end
    return fulldates,dates
  end

  def precal()
    vals = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 9, 28, 56, 83, 113, 152, 182, 237, 280, 394, 358, 394, 453, 473, 534, 602, 704, 780, 708, 735, 824, 884, 883, 902, 911, 923, 787, 730, 694, 523, 592, 628, 498, 442, 332, 256, 271, 306, 231, 195, 177, 147, 102, 69, 45, 34, 28, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 19, 37, 58, 97, 133, 151, 182, 216, 307, 310, 264, 327, 398, 391, 443, 552, 602, 628, 663, 674, 687, 679, 731, 725, 671, 523, 478, 508, 446, 397, 326, 321, 255, 229, 242, 268, 235, 208, 165, 150, 137, 90, 71, 52, 27, 12, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 14, 29, 48, 74, 104, 135, 168, 177, 241, 358, 332, 412, 477, 560, 582, 632, 738, 655, 657, 630, 653, 678, 662, 700, 719, 742, 763, 728, 627, 694, 564, 447, 387, 408, 338, 277, 224, 158, 153, 109, 59, 75, 62, 56, 38, 20, 15, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 12, 31, 58, 117, 149, 208, 213, 265, 304, 339, 382, 404, 470, 473, 507, 547, 505, 563, 633, 670, 713, 731, 753, 812, 797, 794, 601, 479, 603, 559, 565, 513, 547, 576, 361, 274, 333, 251, 238, 193, 172, 126, 82, 54, 30, 14, 9, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 9, 29, 52, 78, 122, 183, 203, 249, 274, 359, 378, 431, 481, 462, 503, 522, 534, 652, 629, 680, 701, 743, 668, 708, 725, 648, 730, 599, 505, 439, 471, 428, 384, 386, 303, 274, 227, 250, 242, 208, 238, 127, 108, 67, 43, 18, 13, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 25, 42, 68, 106, 157, 223, 191, 296, 283, 381, 351, 460, 426, 564, 519, 647, 558, 733, 647, 780, 681, 772, 760, 903, 839, 873, 876, 795, 782, 769, 607, 676, 658, 632, 464, 494, 407, 296, 291, 195, 191, 100, 80, 76, 45, 36, 28, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 8, 16, 33, 61, 91, 162, 206, 317, 357, 398, 399, 449, 572, 579, 638, 604, 676, 732, 790, 689, 744, 744, 821, 852, 767, 672, 808, 796, 658, 638, 651, 518, 527, 541, 501, 349, 484, 471, 358, 343, 290, 231, 186, 146, 92, 41, 34, 24, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 15, 37, 75, 118, 164, 194, 260, 330, 426, 435, 399, 427, 501, 595, 568, 723, 624, 751, 761, 737, 705, 764, 754, 662, 828, 822, 798, 719, 772, 656, 578, 395, 435, 354, 267, 259, 200, 213, 202, 182, 127, 121, 98, 60, 42, 28, 26, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 8, 25, 45, 86, 158, 186, 316, 302, 307, 328, 390, 517, 571, 611, 656, 638, 696, 675, 763, 682, 694, 744, 724, 753, 566, 639, 653, 595, 646, 517, 532, 468, 422, 368, 362, 239, 229, 199, 198, 164, 134, 109, 100, 66, 42, 24, 20, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 12, 27, 47, 84, 100, 158, 232, 314, 325, 356, 409, 412, 492, 568, 650, 652, 843, 834, 764, 676, 860, 798, 773, 786, 634, 639, 743, 799, 615, 622, 492, 554, 604, 538, 405, 422, 300, 267, 272, 264, 215, 155, 128, 88, 49, 32, 21, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 14, 24, 64, 83, 123, 175, 193, 283, 277, 321, 366, 476, 566, 616, 545, 569, 656, 654, 625, 603, 653, 749, 727, 629, 849, 781, 781, 691, 648, 679, 658, 669, 475, 477, 400, 357, 334, 328, 302, 269, 257, 152, 126, 92, 55, 30, 18, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 7, 14, 28, 58, 79, 115, 157, 247, 254, 267, 288, 328, 375, 412, 431, 526, 646, 601, 498, 569, 529, 754, 619, 698, 811, 742, 643, 727, 598, 611, 599, 485, 393, 608, 533, 526, 410, 458, 375, 298, 244, 247, 203, 143, 71, 44, 22, 18, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 5, 20, 42, 71, 82, 161, 161, 231, 287, 330, 339, 389, 428, 453, 439, 634, 539, 671, 603, 604, 742, 640, 750, 874, 645, 577, 552, 615, 463, 508, 421, 418, 371, 379, 326, 290, 222, 228, 223, 240, 193, 130, 107, 74, 43, 22, 8, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 12, 18, 37, 68, 104, 129, 189, 246, 246, 325, 342, 333, 453, 479, 579, 632, 696, 762, 684, 626, 674, 745, 785, 683, 620, 568, 605, 552, 557, 504, 547, 498, 494, 449, 460, 386, 389, 331, 250, 213, 196, 162, 136, 76, 45, 22, 10, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 10, 19, 41, 77, 119, 166, 199, 249, 306, 364, 400, 391, 426, 389, 445, 471, 448, 460, 520, 437, 489, 498, 543, 522, 530, 555, 555, 691, 597, 541, 457, 393, 390, 334, 319, 261, 298, 243, 148, 188, 182, 148, 100, 76, 42, 15, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 8, 20, 39, 67, 101, 138, 160, 229, 257, 296, 351, 397, 397, 490, 517, 546, 586, 525, 587, 647, 677, 564, 641, 697, 666, 725, 626, 580, 600, 518, 489, 503, 432, 416, 366, 323, 376, 281, 309, 247, 224, 158, 137, 86, 36, 19, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 23, 29, 49, 82, 138, 191, 229, 284, 332, 359, 400, 431, 471, 460, 494, 549, 573, 567, 493, 601, 696, 589, 539, 485, 623, 592, 628, 499, 345, 363, 427, 509, 542, 532, 401, 412, 378, 271, 299, 232, 167, 116, 99, 75, 51, 34, 23, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 11, 23, 54, 84, 138, 197, 229, 272, 308, 325, 357, 361, 458, 462, 562, 620, 647, 804, 666, 560, 698, 698, 726, 720, 801, 689, 796, 618, 593, 531, 537, 505, 433, 393, 361, 330, 259, 266, 150, 125, 125, 130, 89, 82, 61, 28, 14, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 13, 27, 57, 98, 119, 160, 292, 354, 339, 399, 459, 461, 515, 540, 689, 675, 713, 717, 655, 763, 810, 696, 761, 765, 911, 774, 827, 729, 690, 643, 574, 519, 475, 374, 300, 389, 323, 310, 290, 265, 206, 164, 119, 77, 46, 25, 15, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 8, 22, 53, 76, 108, 151, 268, 336, 325, 350, 374, 407, 438, 518, 557, 621, 623, 569, 575, 610, 601, 599, 633, 537, 537, 644, 574, 522, 583, 585, 566, 561, 627, 568, 510, 370, 362, 315, 242, 189, 163, 129, 116, 71, 45, 27, 14, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 9, 30, 54, 103, 128, 168, 296, 313, 330, 465, 446, 490, 564, 575, 752, 797, 861, 894, 862, 848, 812, 750, 894, 719, 811, 779, 715, 847, 635, 647, 591, 450, 455, 418, 400, 353, 265, 210, 194, 182, 190, 151, 142, 95, 57, 28, 18, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 9, 24, 53, 77, 95, 101, 125, 173, 219, 217, 251, 278, 327, 365, 396, 443, 446, 494, 370, 396, 458, 417, 406, 411, 461, 464, 470, 493, 608, 521, 568, 518, 383, 452, 408, 324, 254, 279, 321, 239, 252, 186, 126, 102, 61, 33, 17, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 11, 32, 48, 79, 104, 160, 175, 259, 241, 332, 335, 457, 492, 514, 543, 531, 537, 655, 710, 743, 758, 806, 862, 918, 798, 916, 808, 687, 698, 571, 602, 558, 565, 611, 525, 474, 386, 373, 253, 176, 157, 111, 67, 43, 28, 14, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 9, 21, 37, 58, 92, 123, 115, 162, 209, 263, 299, 389, 405, 480, 590, 603, 600, 602, 619, 624, 633, 670, 717, 845, 751, 577, 538, 498, 484, 542, 492, 525, 468, 456, 401, 381, 282, 253, 244, 197, 173, 129, 102, 77, 52, 36, 24, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 7, 20, 34, 60, 77, 125, 161, 199, 234, 303, 317, 387, 536, 574, 544, 547, 552, 557, 582, 573, 764, 731, 733, 875, 846, 648, 839, 696, 678, 667, 626, 558, 469, 448, 319, 287, 239, 231, 214, 187, 131, 103, 79, 59, 32, 22, 26, 10, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 8, 24, 56, 72, 106, 139, 215, 292, 278, 329, 374, 431, 443, 497, 560, 685, 628, 676, 695, 691, 807, 811, 641, 805, 866, 840, 709, 625, 566, 591, 613, 562, 588, 613, 428, 392, 326, 268, 254, 278, 214, 186, 111, 103, 60, 33, 15, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 9, 20, 44, 61, 81, 124, 238, 262, 301, 397, 382, 471, 473, 511, 526, 497, 534, 602, 592, 628, 653, 819, 795, 759, 950, 854, 716, 545, 561, 513, 449, 428, 477, 466, 339, 417, 361, 294, 227, 146, 173, 144, 85, 74, 47, 28, 19, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 7, 22, 47, 72, 103, 156, 186, 221, 246, 311, 331, 380, 357, 354, 383, 464, 536, 604, 677, 653, 625, 632, 679, 687, 588, 540, 331, 537, 589, 412, 506, 624, 510, 505, 445, 445, 417, 374, 272, 316, 209, 177, 124, 96, 52, 34, 22, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 12, 28, 41, 61, 87, 150, 159, 192, 239, 245, 284, 333, 381, 391, 552, 535, 575, 484, 504, 458, 423, 461, 511, 633, 587, 615, 625, 556, 563, 438, 338, 297, 352, 258, 316, 269, 276, 274, 198, 165, 136, 122, 122, 77, 38, 24, 18, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 11, 30, 53, 79, 117, 173, 170, 196, 215, 244, 273, 361, 404, 393, 507, 634, 556, 533, 507, 441, 523, 539, 697, 639, 705, 653, 492, 645, 448, 592, 457, 481, 413, 291, 323, 323, 269, 246, 251, 228, 253, 222, 164, 106, 59, 34, 17, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 7, 23, 39, 66, 108, 175, 198, 183, 281, 326, 245, 266, 329, 368, 476, 534, 648, 640, 612, 651, 566, 645, 582, 629, 588, 705, 529, 442, 511, 604, 513, 684, 506, 512, 467, 527, 449, 403, 313, 235, 171, 129, 95, 93, 55, 35, 14, 3, 0, 0, 0]
    return vals
  end



  def predict(date1,date2)
    fulldates,dates = getValues(date1,date2)
    vals = precal()
    yval = []
    count = 0
    for date in dates

      pos = (date[0]-1)*(4*24)+date[1]*(4)+(date[2]-5)/15
      yval += [[fulldates[count],vals[pos]]]
      count += 1
    end
    return yval
  end
end