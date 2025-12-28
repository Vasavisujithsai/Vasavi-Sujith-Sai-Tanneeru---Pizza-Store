package com.project.onlinepizzaorderingsystem.services;

import org.apache.commons.io.IOUtils;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.io.IOException;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;


@Service
public class FileUploadService {

    public final String storageDirectoryPath = "static/uploads";
    public ResponseEntity uploadToLocalFileSystem(MultipartFile file, String uploadFileName) {
        String fileName = StringUtils.cleanPath(file.getOriginalFilename());

        Path storageDirectory = Paths.get(storageDirectoryPath);
         if(!Files.exists(storageDirectory)){ // if the folder does not exist
            try {
                Files.createDirectories(storageDirectory); // we create the directory in the given storage directory path
            }catch (Exception e){
                e.printStackTrace();// print the exception
            }
        }

        Path destination = Paths.get(storageDirectory.toString() + "/" + uploadFileName);

        try {
            Files.copy(file.getInputStream(), destination, StandardCopyOption.REPLACE_EXISTING);// we are Copying all bytes from an input stream to a file

        } catch (IOException e) {
            e.printStackTrace();
        }
        // the response will be the download URL of the image
        String fileDownloadUri = ServletUriComponentsBuilder.fromCurrentContextPath()
                .path("api/images/getImage/")
                .path(uploadFileName)
                .toUriString();
        // return the download image url as a response entity
        return ResponseEntity.ok(fileDownloadUri);
    }

    public  byte[] getImageWithMediaType(String imageName) throws IOException {
        Path destination = Paths.get(storageDirectoryPath+"/"+imageName);// retrieve the image by its name
        System.out.print(destination.getFileName());
        
        return IOUtils.toByteArray(destination.toUri());
    }
    
    public  Path getFileLocation(String fileName) throws IOException {
        return Paths.get(storageDirectoryPath+"/"+fileName);// retrieve the image by its name
    }
    
    public String getFileURL(String uploadFileName) {
    	return ServletUriComponentsBuilder.fromCurrentContextPath()
                .path("api/images/getImage/")
                .path(uploadFileName)
                .toUriString();
    }

}
