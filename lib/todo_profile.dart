import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: 
      
      Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // Profile Photo
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAANgAAADpCAMAAABx2AnXAAAAwFBMVEX///8AAAAREiTa2tv7+/vq6uoODyLv7+/JycmXl5dubm6qqqr4+PjX19f09PTf39+xsbEeHh4/Pz/GxsaHh4d4eHg1NTUvLy8WFhYoKCiRkZFycnJMTEwAABc8PDxkZGSgoKAAABwNDQ24uLhcXFxISEhTU1OKiookJCScnJwAABiAgIAZGRmUlJpZWmNBQUwfIC9qanMAAAt5eYEpKjgAAB+Gh440M0BVVl5KSlQjJTNnaHEZGiw3OUZ+f4eXl549uBwjAAAPOElEQVR4nO1dCVfqPBO2QEvZBAEXwEoRxQvIWr4qsvj//9UHsnTSpulMWkDf0+ece71XSJNJMvs0ubqKESNGjBgxYsSIESNGjBgx/iLy1+kNrvOXHkdUKFZK9Ubn6b528/C8wcNN7f6p06iXKsVLj0wWebWdaT4oAjw0M231b61gKpnL3otocnCfzSVTlx4vDvl2toYj6oBatv3rFy6de6QRdcBjLn3psfsj327KUbVD85euW7F/E4asLW76v09WViS3oBuPlUtTApEq3UVD1hZ3pV8jJXNI0Y7Ffe7SFP2gHchaz+/3ry+NfvXtrdpvvLzevz8HtbhpX5qqK70sGuBT862tF6/dja6Levut+SRqWdYvQc0RatZ/aM2Mrgq5JaXqGYF+yKrnosKLrt+g7roF7DMKXV/B0z3l2EVD8tlLnRJxrtVSh/+kJ/T0RIk6dyzlnNQOUnN8Xq1HPergkXAH0ggxxYUGd6LOzGklzhj+ZTzij4brzD/OY0vRjBiF1C2HrFwEJmw+xyHt9myWiMqRGjlx74W22W9s0Dfb4t2aynmf/XSm7ah7u86Ihlqou/ixXC+IpiHjff5ZtLWXvW4FM6pmuGrqLiNq493pZ2C0N3efNcF0pjnMeJwOgctc8AQX3qKnhIVHJot2IV/VHSFSUp792IiaEhZu2+5OIAoKgU4aqXUzemocvLg66wuEgK8hCSEwB1N913dfoqfnALf7L3LjBXY/hGiHVVzffYyangNc6yWydlLoeFVTsOhuu+1Ea+Yaa1aki9x7VgDRaFOudT8Jn7n6ENrdyH24nyHRk+qE78rBpb+EGhMlNxwIHUqXPRC5PnM9X2jjcGwuMShPi9gGcT1daMimAoNQbjwILegCYRaoUAl0XQnMKD/cCh/ooixCWz/Fil0xXa5h4CB+ZJL5bjk6/+yWMIgrn8CMGB3xM9nJEq8vAazgCMgauM0FJEhPjUiAqKSHyib+Ah7LTm40bMYwWFA8TIrDtgiKbzGauhwFXcwTAzU/yeaQf3IE8UZmCQIFUlqWLkUJykGzojl8jJjx9wL3NifGhEWgRGB4/S4sXYzZF5xGDZGwDfa2GNEYMmPBzFKV9nUqgkVdlfZ1ESDH3gVr/HYYwoKzmCnIF6E8GMb2TQZ/n5tXwAIRh2JsqzDWMIxlIyRsilhrxKKGsAGh7nmSpwvurBri+0QW66RZWYPhGjh18hn4d/AUjOKgsVjObadgBgpbvMvSBZUSyqIOiPwy6Pyszyv8FcqcgJ6GZD1ICtaloIQrwWPZj4lR6AG+yw5wu9/LeWbQoBZF6B2gyWoe7CeWK1GdwKi+nP9yR+0yjyTrHjAT8wEuJwoaSBlW0IDBbWbWg/dFBm4gpgwLoSmv2O0rUysHRDFGw1whnWdXwQ1DGG6YUFtKhPPh9COlD6+UwIWOW2swnyIVE1wy3CJDgCTODbIegJM8ZvHosYLYeCVORF3lQb1dn0LTFtc35P6u3AktF145O42N62FHCWbwhlpbAo0IbAGHMHX0wrFZVZfiwyZToPil2lVgkOjsr0A/97m8UCzV+y9AfKA09BbAiyBmlmDsAh1e8HOfa6Zwv+RVvZT5kXRoGQctRlq9PhA8r+hGrwoHtT5qYprSXdEMRjD5JrqRtyCuXC0gGfRnG+PDhabTB0mVXYPB4WMLLGHPtyXCLinTCIM2JkUuApmIZmhAWO2xXqHFWtLvNMKgoKLIRRDDIWzhHWHVSpFe4LdbAQJhQAgQojrQEyPMfJnawEGRShjYiwSvDNiJFMdgJ6qkgkc70wovFRmnCm8vApmDNae2eKTuXXePFAEHzCp8j4DFKMH/HUMHx4s5qFIFFdTRaCaDDg8lqrAjTKou6IVMWMoZI9JdZOwpkiW21+qUJgco5K0IrVmsvgRajJRg29s5EmJxL+MowgPG+rCaDPAlScTtFbRE6Gjve5MysMBHxUo4sMiU2T9oP4ki1720IsUJgSbDMoxTMoTIHDlI753uZ0KbPfbd3VBcEJBTwvboTAVJwhUPrcj54aPoJr1UC2oiiQMk6qSjvUIuvTuWDJJiTiC/iZsQEB4kyYEjN1Pjs86mIskqEO3DBSRBA1JHjsFN3IuOfCOZY0As4hYASHvSnneib0S56IRmSFFCwDI4eQ9CQKSgnYQp8ANZQwe4+biZBM4ppR9oYVJ8AmhCoK2+HzjtcEamE7q4oXTDVBsRfGgm+URaaidYjTNZHMVHysszuRaCjcnkd0lpIaemASeHnbgAxY1wpSTQthib0yTtYYdn7jFfzzu8Qip+YYNv6KZsHSDJvnea1jBbH+RZSMW3CgukCnQnCyk9OgUEqJxL2qnuoKgV9wiRhqmrFckkcBTnO0bopJ3DpCiEeartUTrJk3midOkQ9nA6wjhlVGZwK9PTiKLJqIRJbUXe+yyBspuXjSfsReJWBMKDYPNxC/oCjGFuxbdUnyjhATYV3nTzKXKWeWkJb3w4DIrbwDIK2u+NMUH8yK9UzkR3SlTQZEtlC59BCnzwqm8TdKdU289Jgz5guxBUeJS5jFYQnCGENqsc8Y0zWMhBEp/K0rs9D3iPIjgcJsBNWuO5zGmBCzr1yV34vPehH56UZYSIfvh61adwE2lnAoGF00tAa+KCF341VK8gDNIw9aKqFnXTkdGlFK/RzyeoboG2MFENgLhCuUdF78iO81L05aVy0XvQxBGoWAtQ77jgPdAvmKiR6v+u6VYP+rztkhO+4POMcefAk3HmChAFCL+l+O4dFzPzee8RP/8yW/+pvhEvmXaloheOBvTDwTh4R6wZMLuRbq3TIFhDi4svd1osX2mAVX1uVH7cwnT2yMFHOfxQNvVStbk1EYJ3Fz3o5NhUtQAbLF+tdZqNasbFLQ4ZB7GaKpYy/Wy23y0VD9aPM8sMk96b2+cmS29mgJl0DYaJJAysMYqL8279nL1S9Xb18QH5MpT7xIU6KpwJpgPr6QN5jxE3Oa/0MH8+SFeamE3idcqeMUKr7e4uGEAsBqdbklyBfpgQPXhmuMbwa/BWAcYm1ocDsePAdLeflWjuPw/0J7zrhVwFUKCHjsSXsW3S/geSNFHmWNq/3LYp7hrMPj51DaSH0PYoio4vfTaDOzJFB0nUhNoJ6Bl8lBBse5F5GXhuR0446deBr+CKTFVgquPr+oAkFYQHMS9GZCs+OzJdwbwKLtgvYK0JWTxMaRnytISHDkd25zrCk/Ad+Mo7UKBHSZ2AdfbzZwmHCnh2VJi2ewBpTImxAu7xmQ9/X8ULj+Pu4zlz4bPPwGuxpEQ5eDJ3L6ZIh2+7NiPpvf0nriaErxRR6ILOPrdqg3iwPSNBiActcAMFbwGf+wJIhhvOlCFeqPIfHPW0f440TwEFSns3DiaGvS3pRwoAPiCfWsUJKUGJTCwZB8aH116kn0biVJul6GfIezcbsBOpJwPBeXULJvqcA60R+PYcB265VxR8Fggg9tyTInUdgeodExruUPut/0fBgGkG1hqVO9tiHz6RO8mEZXPI4vTzSqBQZt1Nyfsj2vKT4loXmM+QuO2l4dNc8kStn+TctewNKJCT4JTLnEULlTtcMulLZ6qBr6f6A6Yg4YLR3xa+YoNHzpKFOBYniXy1nQeHzeGCyR1qCqW6o0r8YhQIPIY4A8kxN6ESlTxdBo6jwPvlGXG0Egq8XxIBl+zgely7ezwXDlEG6PJIHwcEV2e/F0Id0BQGe1MYujzyByIznu5uyvxz4idG1bthQpz/BkX7TuJGeLsTDXc+A5IDY9ltE6h58omyUeF5654wfmCou8qY9LeKPmTlFEi6dGi4Ixahq7qVjDIeS0TQWYnIc+wpcJUwU2MCEaIUoiyaB8Y01EPYHWFhMrsl/DnqaSgu/oW6djEcmjBH/xzB5ZQXU8kiRHKjnPRBsqdDRMfeX0x3+UHiZUkupA81PhUiu2/tgrKQBzMqun4Zm0V6r8TFbF8vQh99zEBQ4nZmoArjCPg1AiTyixplw4kR4wSXD4c4Pzw6nOR6Xpk8ScQgvRD4hyg7EV20c4BPgBNeg3pRyk56veslHc1T0kWvF4gMJ79w8kL67AT6y40isr4rSjyEiiFicU0phYoEryGvLUZDOjEpB/JZwPI4a4AnksANFv5vGUWN8lnYy0HK/x2pSPF2tluuj9BlSxsIuDnLRdBupE6eBKyef7l2EL0bGx7893HPhBN6n2e4tFuE/In2Y5V+JG/U4NyQHhqiW9zPiGLE8dTsmVWXAGqERlb/d6zWAeluqJusDqh1I8joRYxUhXC7NR8vlUsprgCkzRCKrWz+vsUCKHbl7qrt/h6B4Qu1RLwRr1H6XfJChGIpixImtWzpDyyVC6qeu33xTazdvdzm9L+zUh7k06pe6tart82XzuNj56V5W613S7qavrzJFCNGjBgxYsSIESNGjBgxYlCQ/I8Cf534H8NV4j+KmLC/hj1h2v5PAvxMJFqthOb8b/MvreX895djR5i20hLabLn798fhM2P4acxWB1KWc037Gn78Fcp2hLUWi55hG4aR6BmKvWwZRk8zlNwGk65iKIrWUpSPgqKs7NHfIkwb28Z4bQ3Wynpgrb8/BgNr/j1PzhVlog4HhcJslEzOK6PNz9U5CdM2jKAd/v5hi93/tmyx/73Wammt5YZFtOXu35vvAcISxiAxmViGNVkoiv2/QUKxrM/pSC+uJ4OZrgxzlZXypRZ6mnZOunqLL8sYG7Ovj9ZXS7PWq6/Esvc1Xy21xNfmN2NtbEwmg/lgMfy2hvZiZE8m9qc9aUHCWsOhPRwsJtaoZdhad2os7HlrqrSS68y8raza+nQ6Uwvj8+5DbT5ZD8zNZK8ta2JPLGuxtj+tibmaDua2Zdvf9mrRGuSUb8UeDRfr3HTwreXW31NImKblrLGtzWbf2ni4mAwTg+Fn63ti66PkLDmpWIO2NdLnyelZCUsY7dlgM+Gflj2x50N7Q91mUSx7qJmj7uR7viF0ufnbWq+Xc+vTXlv2wBoubAMSlmhNxq2ZbWmbP9OFsrDHsw/tc7DuGcP5/wZDY7rZkhPFOrPo0MaaNpqOlh+tUWI5Xhkf45kxmiU+vsYrbZVYbn+MPpej3lfrY/T1MR1p2qo12tHlKOiNhtJ6vYRm9BK9RMvYclNrIxs3v9eMza7tGdrmg3OLRG0vJn7+cRAXEAntKGB2P45a+L9uefz3EBP21/B/ky0akdWxgDwAAAAASUVORK5CYII='),
              ),
              SizedBox(height: 20),
        
              // Profile Name
              Text(
                'RESHMA BABU M',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                '9645156333',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                'reshmababu@gmail.com',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}